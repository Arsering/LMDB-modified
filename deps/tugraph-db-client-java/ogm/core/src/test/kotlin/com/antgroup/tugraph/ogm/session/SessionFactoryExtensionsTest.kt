/*
 * Copyright (c) 2002-2022 "Neo4j,"
 * Neo4j Sweden AB [http://neo4j.com]
 *
 * This file is part of Neo4j.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.antgroup.tugraph.ogm.session

import io.mockk.every
import io.mockk.mockk
import io.mockk.verify
import org.junit.Test
import com.antgroup.tugraph.ogm.driver.Driver
import kotlin.test.assertNotNull

/**
 * @author Michael J. Simons
 */
class SessionFactoryExtensionsTest {

    val sessionFactory = mockk<SessionFactory>(relaxed = true)
    val driver = mockk<Driver>()

    @Test
    fun `unwrap extension should call its Java counterpart`() {

        every { sessionFactory.unwrap<Driver>()} returns driver
        val driver = sessionFactory.unwrap<Driver>()!!

        assertNotNull(driver)
        verify(exactly = 1) { sessionFactory.unwrap(Driver::class.java) }
    }
}

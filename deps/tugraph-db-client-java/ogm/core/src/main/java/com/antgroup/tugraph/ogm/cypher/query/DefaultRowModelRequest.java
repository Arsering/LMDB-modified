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
package com.antgroup.tugraph.ogm.cypher.query;

import java.util.Map;
import java.util.Optional;

import com.antgroup.tugraph.ogm.request.OptimisticLockingConfig;
import com.antgroup.tugraph.ogm.request.RowModelRequest;

/**
 * @author Vince Bickers
 */
public class DefaultRowModelRequest extends CypherQuery implements RowModelRequest {

    private final static String[] resultDataContents = new String[] { "row" };
    private OptimisticLockingConfig optimisticLockingConfig;

    public DefaultRowModelRequest(String cypher, Map<String, ?> parameters) {
        this(cypher, parameters, null);
    }

    public DefaultRowModelRequest(String cypher, Map<String, ?> parameters,
        OptimisticLockingConfig optimisticLockingConfig) {

        super(cypher, parameters);
        this.optimisticLockingConfig = optimisticLockingConfig;
    }

    // used by object mapper
    public String[] getResultDataContents() {
        return resultDataContents;
    }

    @Override
    public Optional<OptimisticLockingConfig> optimisticLockingConfig() {
        return Optional.ofNullable(optimisticLockingConfig);
    }
}

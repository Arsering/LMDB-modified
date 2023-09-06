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
package com.antgroup.tugraph.ogm.session.request.strategy.impl;

import com.antgroup.tugraph.ogm.session.request.strategy.MatchClauseBuilder;

/**
 * @author Frantisek Hartman
 */
public class RelationshipTypeMatchClauseBuilder implements MatchClauseBuilder {

    @Override
    public String build(String label) {
        // we use r0 for historical reasons, e.g. in tests, but could easily be `r` or anything else
        return "MATCH ()-[r0:`" + label + "`]-()  WITH DISTINCT(r0) as r0,startnode(r0) AS n, endnode(r0) AS m";
    }

    @Override
    public String build(String label, String property) {
        throw new UnsupportedOperationException("MATCH by relationship type not supported with property parameter");
    }
}

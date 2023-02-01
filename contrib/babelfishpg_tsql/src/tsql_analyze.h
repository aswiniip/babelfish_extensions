#ifndef TSQL_ANALYZE_H
#define TSQL_ANALYZE_H

#include "nodes/parsenodes.h"
#include "nodes/pg_list.h"
#include "nodes/primnodes.h"
#include "postgres.h"
#include "parser/parse_node.h"
#include "utils/relcache.h"

extern RangeVar *pltsql_get_target_table(RangeVar *orig_target, List *fromClause);
extern void pltsql_update_query_result_relation(Query *qry, Relation target_rel, List *rtable);
extern void handle_rowversion_target_in_update_stmt(RangeVar *target_table, UpdateStmt *stmt);

#endif /* TSQL_ANALYZE_H */
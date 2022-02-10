/*
 * PG keyword needs to be delimited internally
 *
 * NOTE: the list keyword is generated by a script, based on pg_keyword and
 * T-SQL document https://github.com/MicrosoftDocs/sql-docs/blob/live/docs/t-sql/language-elements/reserved-keywords-transact-sql.md
 */

#include "c.h"

size_t get_num_column_names_to_be_delimited(void);
size_t get_num_pg_reserved_keywords_to_be_delimited(void);

/*
 * PG keywords defined as TYPE_FUNC_NAME_KEYWORD
 * but treated as a normal unreserved keyword (or not a keyword) in T-SQL.
 */
const char *column_names_to_be_delimited[] = {
  "binary",
  "collation",
  "concurrently",
  "current_schema",
  "freeze",
  "ilike",
  "isnull",
  "natural",
  "notnull",
  "overlaps",
  "similar"
};

size_t get_num_column_names_to_be_delimited()
{
  return lengthof(column_names_to_be_delimited);
}

/*
 * PG keywords defined as reserved
 * but treated as a normal unreserved (or not a keyword) in T-SQL.
 *
 * NOTE: "true" and "false" are unreserved keyword in T-SQL
 * but we cannot take this approach for those keywords
 * since in PG it can be used as boolean literal
 * which can be located in any column reference.
 */
const char *pg_reserved_keywords_to_be_delimited[] = {
  "analyse",
  "analyze",
  "array",
  "asymmetric",
  "both",
  "cast",
  "current_catalog",
  "current_role",
  "deferrable",
  "do",
  //"false",
  "initially",
  "lateral",
  "leading",
  "limit",
  "localtime",
  "localtimestamp",
  "offset",
  "only",
  "placing",
  "returning",
  "symmetric",
  "trailing",
  //"true",
  "using",
  "variadic",
  "window"
};

size_t get_num_pg_reserved_keywords_to_be_delimited()
{
  return lengthof(pg_reserved_keywords_to_be_delimited);
}


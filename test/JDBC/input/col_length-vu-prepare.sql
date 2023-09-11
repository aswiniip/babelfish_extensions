CREATE DATABASE babel_3489_test_db;
GO

USE babel_3489_test_db;
GO

CREATE TABLE sys_column_length_test_table(
    ID INT PRIMARY KEY,
    col_char CHAR(10),
    col_varchar VARCHAR(20),
    col_binary BINARY(5),
    col_varbinary VARBINARY(15),
    col_nchar NCHAR(8),
    col_nvarchar NVARCHAR(16),
    col_text TEXT,
    col_image IMAGE,
    col_ntext NTEXT,
    col_sysname sysname,
    col_sql_variant SQL_VARIANT,
    col_xml XML,
    col_varcharmax VARCHAR(MAX),
    col_nvarcharmax NVARCHAR(MAX),
    col_varbinarymax VARBINARY(MAX),
    col_bit BIT,
    col_tinyint TINYINT,
    col_bigint BIGINT,
    col_smallint SMALLINT,
    col_smallmoney SMALLMONEY,
    col_money MONEY,
    col_smalldatetime SMALLDATETIME,
    col_real REAL,
    col_float FLOAT,
    col_time TIME,
    col_datetime DATETIME,
    col_datetime2 DATETIME2,
    col_datetimeoffset DATETIMEOFFSET,
    col_uniqueidentifier UNIQUEIDENTIFIER,
    col_date DATE,
    col_decimal DECIMAL(10,5),
    col_numeric NUMERIC(3,0)
);
GO

CREATE SCHEMA sys_col_length_test_schema;
GO

CREATE TABLE sys_col_length_test_schema.test_table(
    col_char CHAR(20),
    col_varchar VARCHAR(30),
    col_varbinary VARBINARY(40)
);
GO

INSERT INTO sys_col_length_test_schema.test_table (col_char, col_varchar, col_varbinary)
VALUES ('ABCDEF', 'Hello, World!', 0x0123456789ABCDEF)
GO

CREATE VIEW col_length_prepare_v1 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'ID'));
GO

CREATE VIEW col_length_prepare_v2 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_char'));
GO

CREATE VIEW col_length_prepare_v3 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_varchar'));
GO

CREATE VIEW col_length_prepare_v4 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_binary'));
GO

CREATE VIEW col_length_prepare_v5 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_varbinary'));
GO

CREATE VIEW col_length_prepare_v6 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_nchar'));
GO

CREATE VIEW col_length_prepare_v7 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_float'));
GO

CREATE VIEW col_length_prepare_v8 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_time'));
GO

CREATE VIEW col_length_prepare_v9 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_datetime'));
GO

CREATE VIEW col_length_prepare_v10 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_datetime2'));
GO

CREATE PROCEDURE col_length_prepare_p1 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_nvarchar'));
GO

CREATE PROCEDURE col_length_prepare_p2 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_text'));
GO

CREATE PROCEDURE col_length_prepare_p3 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_image'));
GO

CREATE PROCEDURE col_length_prepare_p4 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_ntext'));
GO

CREATE PROCEDURE col_length_prepare_p5 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_sysname'));
GO

CREATE PROCEDURE col_length_prepare_p6 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_sql_variant'));
GO

CREATE PROCEDURE col_length_prepare_p7 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_datetimeoffset'));
GO

CREATE PROCEDURE col_length_prepare_p8 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'col_uniqueidentifier'));
GO

-- Invalid column, should return NULL
CREATE PROCEDURE col_length_prepare_p9 AS (SELECT COL_LENGTH('sys_column_length_test_table', 'test_col'));
GO

-- Invalid table, should return NULL
CREATE PROCEDURE col_length_prepare_p10 AS (SELECT COL_LENGTH('sys_column_length_test_table_invalid', 'col_char'));
GO

CREATE FUNCTION col_length_prepare_f1()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_xml'));
END
GO

CREATE FUNCTION col_length_prepare_f2()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_varcharmax'));
END
GO

CREATE FUNCTION col_length_prepare_f3()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_nvarcharmax'));
END
GO

CREATE FUNCTION col_length_prepare_f4()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_varbinarymax'));
END
GO

CREATE FUNCTION col_length_prepare_f5()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_bit'));
END
GO

CREATE FUNCTION col_length_prepare_f6()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_tinyint'));
END
GO

CREATE FUNCTION col_length_prepare_f7()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_bigint'));
END
GO

CREATE FUNCTION col_length_prepare_f8()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_smallint'));
END
GO

CREATE FUNCTION col_length_prepare_f9()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_smallmoney'));
END
GO

CREATE FUNCTION col_length_prepare_f10()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_money'));
END
GO

CREATE FUNCTION col_length_prepare_f11()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_smalldatetime'));
END
GO

CREATE FUNCTION col_length_prepare_f12()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 'col_real'));
END
GO

-- Invalid column, should return NULL
CREATE FUNCTION col_length_prepare_f13()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', 1));
END
GO

-- Invalid column, should return NULL
CREATE FUNCTION col_length_prepare_f14()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', -1));
END
GO

-- Invalid table, should return NULL
CREATE FUNCTION col_length_prepare_f15()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH(NULL, 'col_char'));
END
GO

-- NULL column, should return NULL
CREATE FUNCTION col_length_prepare_f16()
RETURNS INT AS
BEGIN
RETURN (SELECT COL_LENGTH('sys_column_length_test_table', NULL));
END
GO
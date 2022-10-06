-- Date and Time
IF CAST(CAST('12-12-12 12:12:12' AS DATETIME) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS DATETIME2) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

IF CAST(CAST('12-12-12 12:12:12' AS SMALLDATETIME) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS DATETIME2) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

IF CAST(CAST('12-12-12 12:12:12' AS SMALLDATETIME) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS DATETIME) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

IF CAST(CAST('12-12-12' AS DATE) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS DATETIME2) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

IF CAST(CAST('12-12-12' AS DATE) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS DATETIME) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('12-12-12' AS DATE) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS SMALLDATETIME) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('12:12:12' AS TIME) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS DATETIME2) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('12:12:12' AS TIME) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS DATETIME) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('12:12:12' AS TIME) AS SQL_VARIANT) > CAST(CAST('12-12-12 12:12:12' AS SMALLDATETIME) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('12:12:12' AS TIME) AS SQL_VARIANT) > CAST(CAST('12-12-12' AS DATE) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

-- Numeric
IF CAST(CAST(1 AS REAL) AS SQL_VARIANT) > CAST(CAST(1 AS FLOAT) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

IF CAST(CAST(1 AS MONEY) AS SQL_VARIANT) > CAST(CAST(1 AS DECIMAL) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

IF CAST(CAST(1 AS SMALLMONEY) AS SQL_VARIANT) > CAST(CAST(1 AS DECIMAL) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS SMALLMONEY) AS SQL_VARIANT) > CAST(CAST(1 AS MONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIGINT) AS SQL_VARIANT) > CAST(CAST(1 AS DECIMAL) AS SQL_VARIANT)
	SELECT 1
ELSE 
	SELECT 0
GO

IF CAST(CAST(1 AS BIGINT) AS SQL_VARIANT) > CAST(CAST(1 AS MONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIGINT) AS SQL_VARIANT) > CAST(CAST(1 AS SMALLMONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS INT) AS SQL_VARIANT) > CAST(CAST(1 AS DECIMAL) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS INT) AS SQL_VARIANT) > CAST(CAST(1 AS MONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS INT) AS SQL_VARIANT) > CAST(CAST(1 AS SMALLMONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS INT) AS SQL_VARIANT) > CAST(CAST(1 AS BIGINT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS SMALLINT) AS SQL_VARIANT) > CAST(CAST(1 AS DECIMAL) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS SMALLINT) AS SQL_VARIANT) > CAST(CAST(1 AS MONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS SMALLINT) AS SQL_VARIANT) > CAST(CAST(1 AS SMALLMONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS SMALLINT) AS SQL_VARIANT) > CAST(CAST(1 AS BIGINT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS SMALLINT) AS SQL_VARIANT) > CAST(CAST(1 AS INT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS TINYINT) AS SQL_VARIANT) > CAST(CAST(1 AS DECIMAL) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS TINYINT) AS SQL_VARIANT) > CAST(CAST(1 AS MONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS TINYINT) AS SQL_VARIANT) > CAST(CAST(1 AS SMALLMONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS TINYINT) AS SQL_VARIANT) > CAST(CAST(1 AS BIGINT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS TINYINT) AS SQL_VARIANT) > CAST(CAST(1 AS INT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS TINYINT) AS SQL_VARIANT) > CAST(CAST(1 AS SMALLINT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIT) AS SQL_VARIANT) > CAST(CAST(1 AS DECIMAL) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIT) AS SQL_VARIANT) > CAST(CAST(1 AS MONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIT) AS SQL_VARIANT) > CAST(CAST(1 AS SMALLMONEY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIT) AS SQL_VARIANT) > CAST(CAST(1 AS BIGINT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIT) AS SQL_VARIANT) > CAST(CAST(1 AS INT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIT) AS SQL_VARIANT) > CAST(CAST(1 AS SMALLINT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS BIT) AS SQL_VARIANT) > CAST(CAST(1 AS TINYINT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

-- String
IF CAST(CAST('a' AS NCHAR) AS SQL_VARIANT) > CAST(CAST('a' AS NVARCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('a' AS VARCHAR) AS SQL_VARIANT) > CAST(CAST('a' AS NVARCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('a' AS VARCHAR) AS SQL_VARIANT) > CAST(CAST('a' AS NCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('a' AS CHAR) AS SQL_VARIANT) > CAST(CAST('a' AS NVARCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('a' AS CHAR) AS SQL_VARIANT) > CAST(CAST('a' AS NCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('a' AS CHAR) AS SQL_VARIANT) > CAST(CAST('a' AS VARCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

-- Binary
IF CAST(CAST(0x01 AS BINARY) AS SQL_VARIANT) > CAST(CAST(0x01 AS VARBINARY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

-- Cross Type Family Comparison
IF CAST(CAST('12-12-12 12:12:12' AS DATETIME) AS SQL_VARIANT) > CAST(CAST(1 AS INT) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('12-12-12 12:12:12' AS DATETIME) AS SQL_VARIANT) > CAST(CAST('a' AS VARCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('12-12-12 12:12:12' AS DATETIME) AS SQL_VARIANT) > CAST(CAST(0x01 AS VARBINARY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS INT) AS SQL_VARIANT) > CAST(CAST('a' AS VARCHAR) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST(1 AS INT) AS SQL_VARIANT) > CAST(CAST(0x01 AS VARBINARY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO

IF CAST(CAST('a' AS VARCHAR) AS SQL_VARIANT) > CAST(CAST(0x01 AS VARBINARY) AS SQL_VARIANT)
	SELECT 1
ELSE
	SELECT 0
GO
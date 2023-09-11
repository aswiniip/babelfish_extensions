-- test for dropping multiple objects at once
-- objects should include both existent and non existent
-- try differnet permutation e.x. DROP TABLE table_exist, table_does_not_exist
-- test with IF EXISTS as well


-- ####### TABLES #######
CREATE TABLE BABEL_4367_1 (
    id INT
)
GO

DROP TABLE BABEL_4367_1, BABEL_4367_2
GO

DROP TABLE BABEL_4367_1
SELECT name FROM sys.tables WHERE name in ('BABEL_4367_1', 'BABEL_4367_2') ORDER BY name ASC
GO

CREATE TABLE BABEL_4367_1 (
    id INT
)
GO

DROP TABLE IF EXISTS BABEL_4367_1, BABEL_4367_2
GO
SELECT name FROM sys.tables WHERE name in ('BABEL_4367_1', 'BABEL_4367_2') ORDER BY name ASC
GO

CREATE TABLE BABEL_4367_1 (
    id INT
)
GO

DROP TABLE IF EXISTS BABEL_4367_2, BABEL_4367_1
GO
SELECT name FROM sys.tables WHERE name in ('BABEL_4367_1', 'BABEL_4367_2') ORDER BY name ASC
GO

CREATE TABLE BABEL_4367_2 (
    id INT
)
GO

CREATE TABLE BABEL_4367_3 (
    id INT
)
GO

DROP TABLE BABEL_4367_1, BABEL_4367_2, BABEL_4367_3
GO
SELECT name FROM sys.tables WHERE name in ('BABEL_4367_1', 'BABEL_4367_2','BABEL_4367_3') ORDER BY name ASC
GO

DROP TABLE BABEL_4367_2, BABEL_4367_1, BABEL_4367_3
GO
SELECT name FROM sys.tables WHERE name in ('BABEL_4367_1', 'BABEL_4367_2','BABEL_4367_3') ORDER BY name ASC
GO

DROP TABLE IF EXISTS BABEL_4367_1, BABEL_4367_2, BABEL_4367_3
GO
SELECT name FROM sys.tables WHERE name in ('BABEL_4367_1', 'BABEL_4367_2','BABEL_4367_3') ORDER BY name ASC
GO

CREATE TABLE BABEL_4367_2 (
    id INT
)
GO

CREATE TABLE BABEL_4367_3 (
    id INT
)
GO

DROP TABLE IF EXISTS BABEL_4367_2, BABEL_4367_1, BABEL_4367_3
GO
SELECT name FROM sys.tables WHERE name in ('BABEL_4367_1', 'BABEL_4367_2','BABEL_4367_3') ORDER BY name ASC
GO

-- ####### FUNCTIONS #######

CREATE FUNCTION BABEL_4367_func()
RETURNS BIGINT
AS BEGIN RETURN 10 END
GO

DROP FUNCTION BABEL_4367_f, BABEL_4367_func
GO

DROP FUNCTION BABEL_4367_func
GO
SELECT name FROM sys.objects WHERE name = 'BABEL_4367_func' ORDER BY name ASC
GO

CREATE FUNCTION BABEL_4367_func()
RETURNS BIGINT
AS BEGIN RETURN 10 END
GO

DROP FUNCTION IF EXISTS BABEL_4367_f, BABEL_4367_func
GO
SELECT name FROM sys.objects WHERE name = 'BABEL_4367_func' ORDER BY name ASC
GO

-- ####### VIEWS #######
CREATE TABLE BABEL_4367_1 (
    id INT
)

INSERT INTO BABEL_4367_1 VALUES (1), (2), (3)
GO

CREATE VIEW BABEL_4367_VIEW_5 AS SELECT * FROM BABEL_4367_1 WHERE id > 1
GO

DROP VIEW BABEL_4367_VIEW_5, BABEL_4367_VIEW_2
GO
SELECT name FROM sys.objects WHERE name = 'BABEL_4367_VIEW_5'
GO
DROP VIEW BABEL_4367_VIEW_2, BABEL_4367_VIEW_5
GO
SELECT name FROM sys.objects WHERE name = 'BABEL_4367_VIEW_5'
GO
DROP VIEW BABEL_4367_VIEW_5
GO
SELECT name FROM sys.objects WHERE name = 'BABEL_4367_VIEW_5'
GO

CREATE VIEW BABEL_4367_VIEW_1 AS SELECT * FROM BABEL_4367_1 WHERE id > 1
GO
CREATE VIEW BABEL_4367_VIEW_2 AS SELECT * FROM BABEL_4367_1 WHERE id <3
GO

DROP VIEW BABEL_4367_VIEW_1, BABEL_4367_VIEW_2
GO
SELECT name FROM sys.objects WHERE name in ('BABEL_4367_VIEW_1', 'BABEL_4367_VIEW_2') ORDER BY name ASC
GO

CREATE VIEW BABEL_4367_VIEW_3 AS SELECT * FROM BABEL_4367_1 WHERE id > 1
GO
CREATE VIEW BABEL_4367_VIEW_4 AS SELECT * FROM BABEL_4367_1 WHERE id <3
GO

DROP VIEW IF EXISTS BABEL_4367_VIEW_3, BABEL_4367_VIEW_4
GO
SELECT name FROM sys.objects WHERE name in ('BABEL_4367_VIEW_3', 'BABEL_4367_VIEW_4') ORDER BY name ASC
GO

CREATE VIEW BABEL_4367_VIEW_6 AS SELECT * FROM BABEL_4367_1 WHERE id <3
GO

DROP VIEW IF EXISTS BABEL_4367_VIEW_1, BABEL_4367_VIEW_6
GO
SELECT name FROM sys.objects WHERE name in ('BABEL_4367_VIEW_1', 'BABEL_4367_VIEW_6') ORDER BY name ASC
GO

-- #### TYPE  #####
CREATE TYPE BABEL_4367_TYPE_1 from datetime
GO

DROP TYPE BABEL_4367_TYPE_1, BABEL_4367_TYPE_2
GO
DROP TYPE IF EXISTS BABEL_4367_TYPE_1, BABEL_4367_TYPE_2
GO

DROP TYPE BABEL_4367_TYPE_2
GO

DROP TYPE BABEL_4367_TYPE_1
GO

CREATE TYPE BABEL_4367_TYPE_1 from datetime
GO

DROP TYPE IF EXISTS BABEL_4367_TYPE_1
GO

SELECT name FROM sys.types WHERE name in ('BABEL_4367_TYPE_1', 'BABEL_4367_TYPE_2') ORDER BY name ASC
GO

-- #### PROCEDURE  #####
CREATE PROCEDURE BABEL_4367_PROCEDURE_1
AS
SELECT 'dummyProc' 
GO
CREATE PROCEDURE BABEL_4367_PROCEDURE_2
AS
SELECT 'dummyProc'
GO

SELECT name FROM sys.procedures WHERE name in ('BABEL_4367_PROCEDURE_1', 'BABEL_4367_PROCEDURE_2') ORDER BY name ASC
GO

DROP PROCEDURE BABEL_4367_PROCEDURE_1, BABEL_4367_PROCEDURE_3
GO

DROP PROCEDURE BABEL_4367_PROCEDURE_3, BABEL_4367_PROCEDURE_1
GO

DROP PROCEDURE IF EXISTS BABEL_4367_PROCEDURE_1, BABEL_4367_PROCEDURE_3
GO

DROP PROCEDURE IF EXISTS BABEL_4367_PROCEDURE_3, BABEL_4367_PROCEDURE_2
GO

SELECT name FROM sys.procedures WHERE name in ('BABEL_4367_PROCEDURE_1', 'BABEL_4367_PROCEDURE_2') ORDER BY name ASC
GO

-- #### CLEANUP  #####
-- DROP VIEWS FIRST SINCE THEY DEPEND ON TABLE
DROP PROCEDURE IF EXISTS BABEL_4367_PROCEDURE_1, BABEL_4367_PROCEDURE_2, BABEL_4367_PROCEDURE_3
GO
DROP TYPE IF EXISTS BABEL_4367_TYPE_1
GO
DROP VIEW IF EXISTS BABEL_4367_VIEW_1, BABEL_4367_VIEW_2, BABEL_4367_VIEW_3, BABEL_4367_VIEW_4, BABEL_4367_VIEW_5, BABEL_4367_VIEW_6
GO
DROP TABLE IF EXISTS BABEL_4367_1, BABEL_4367_2, BABEL_4367_3
GO
DROP FUNCTION IF EXISTS BABEL_4367_func
GO
-- DDL Commands
-- Data Definition Language

/* CREATE - Creates a new table, a view of a table, or other object in the database. */
/* ALTER - Modifies an existing database object, such as a table. */
/* DROP - Deletes an entire table, a view of a table, or other object in the database. */
/* TRUNCATE - Removes all records from a table, keeping the table structure. */

-- Create a table
/*
Syntax:
CREATE TABLE <tablename>(
    columnname1 datatype1(size),
    ...,
    columnnameN datatypeN(size)
);
*/
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    emp_salary NUMBER(10, 2),
    emp_dept VARCHAR(50)
);

-- Add a column to an existing table
/*
Syntax:
ALTER TABLE <tablename>
ADD <columnname> <datatype>;
*/
ALTER TABLE employees
ADD emp_address VARCHAR(100);

-- Modify a column in an existing table
/*
Syntax:
ALTER TABLE <tablename>
MODIFY <columnname> <datatype>;
*/
ALTER TABLE employees
MODIFY emp_salary NUMBER(12, 2);

-- Drop a column from an existing table
/*
Syntax:
ALTER TABLE <tablename>
DROP COLUMN <columnname>;
*/
ALTER TABLE employees
DROP COLUMN emp_dept;

-- Rename a table
/*
Syntax:
ALTER TABLE <oldtablename>
RENAME TO <newtablename>;
*/
ALTER TABLE employees 
RENAME TO staff;

-- Truncate a table (Remove all records, keeping the table structure)
/*
Syntax:
TRUNCATE TABLE <tablename>;
*/
TRUNCATE TABLE staff;

-- Drop a table
/*
Syntax:
DROP TABLE <tablename>;
*/
DROP TABLE staff;

--DDL Commands--
--DDL - Data Definition Language--
/*CREATE - Creates a new table, a view of a table, or other object in the database.*/
/*ALTER - Modifies an existing database object, such as a table.*/
/*DROP - Deletes an entire table, a view of a table or other object in the database.*/
/*TRUNCATE - Removes all records from a table, including all spaces allocated for the records are removed.*/

-- Create a table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    emp_salary NUMBER(10, 2),-- NUMBER(precision, scale)
    emp_dept VARCHAR(50)
);

-- Add a column to an existing table
ALTER TABLE employees
ADD emp_address VARCHAR(100);

-- Modify a column in an existing table
ALTER TABLE employees
MODIFY emp_salary NUMBER(12, 2);

-- Drop a column from an existing table
ALTER TABLE employees
DROP COLUMN emp_dept;

-- Truncate a table
TRUNCATE TABLE employees;

-- Rename a table
ALTER TABLE employees 
RENAME TO staff;

-- Drop a table
DROP TABLE staff;
-- DML Commands
-- Data Manipulation Language

/* SELECT - Retrieves data from one or more tables. */
/* INSERT - Adds new rows of data into a table. */
/* UPDATE - Modifies existing data in a table. */
/* DELETE - Removes rows from a table. */

-- Select data from a table
/*
Syntax:
SELECT column1, column2, ...
FROM tablename
WHERE condition;
*/
SELECT emp_id, emp_name, emp_salary
FROM staff
WHERE emp_dept = 'IT';

-- Insert data into a table
/*
Syntax:
INSERT INTO tablename (column1, column2, ...)
VALUES (value1, value2, ...);
*/
INSERT INTO staff (emp_id, emp_name, emp_salary, emp_address)
VALUES (101, 'John Doe', 60000, '123 Main St');

-- Update existing data in a table
/*
Syntax:
UPDATE tablename
SET column1 = value1, column2 = value2, ...
WHERE condition;
*/
UPDATE staff
SET emp_salary = emp_salary * 1.1
WHERE emp_dept = 'Finance';

-- Delete rows from a table
/*
Syntax:
DELETE FROM tablename
WHERE condition;
*/
DELETE FROM staff
WHERE emp_id = 101;

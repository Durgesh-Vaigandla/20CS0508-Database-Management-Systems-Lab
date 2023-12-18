# 20CS0508-Database-Management-Systems-Lab
## All DBMS Lab Experiments are Provided with explination

### LIST OF EXPERIMENTS:
1. Practice session: Students should be allowed to choose appropriate DBMS software, install it,
configure it and start working on it. Create sample tables, execute some queries, use SQLPLUS
features, and use PL/SQL features like cursors on sample database. Students should be
permitted to practice appropriate User interface creation tool and Report generation tool.
2. DDL Commands – Table Creation, Altering the table structures, truncating a table and dropping
a table.
3. DML Commands – Insert, Select Commands, update & delete Commands.
4. Create relationship between the databases – Nested Queries & Join Queries
5. Create a database and to set various possible constraints.
6. Views – Create a Virtual table based on the result set of an SQL statement.
7. Create PL/SQL functions to implement the stored procedures in SQL (Function and
Procedures).
8. Write a PL/SQL program using For loop to insert ten rows into a database table.
9. Write Relational algebra queries for a given set relations.
10. Write a PL/SQL program to execute a number of queries in one block using single command.

#### Let us start by Creating a Table
```
CREATE TABLE EMPLOYEE(
    ID INT,
    NAME CHAR(15),
    MOBILENO INT(10),
    ADDRESS VARCHAR(30),
    SALARY NUMBER(10, 2)
);
```
##### Output:
```
SQL>DESC EMPLOYEE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(38)
 NAME                                               CHAR(15)
 MOBILENO                                           VARCHAR2(10)
 ADDRESS                                            VARCHAR2(30)
 SALARY                                             NUMBER(10,2)
```

Checkout the [EXP-2 DDL Commands](https://github.com/Durgesh-Vaigandla/20CS0508-Database-Management-Systems-Lab/blob/main/EXP-2%20DDL%20Commands.sql).

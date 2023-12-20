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

#### Let us insert some data into the table
```
INSERT INTO EMPLOYEE VALUES(001,'John','939xxxxx59','INDIA',10000);
```
##### Output: `1 row created.`

#### Dynamic Insertion:
```
INSERT INTO EMPLOYEE VALUES(&ID,'&NAME','&MOBILENO','&ADDRESS',&SALARY);
```
##### After executing the query the user need to fill the details each by manually

```
SQL> INSERT INTO EMPLOYEE VALUES(&ID,'&NAME','&MOBILENO','&ADDRESS',&SALARY);
Enter value for id: 002
Enter value for name: FRANK
Enter value for mobileno: 302XXXXX20
Enter value for address: DELHI
Enter value for salary: 20000
old   1: INSERT INTO EMPLOYEE VALUES(&ID,'&NAME','&MOBILENO','&ADDRESS',&SALARY)
new   1: INSERT INTO EMPLOYEE VALUES(002,'FRANK','302XXXXX20','DELHI',20000)

1 row created.
```

Checkout the [EXP-3 DML Commands](https://github.com/Durgesh-Vaigandla/20CS0508-Database-Management-Systems-Lab/blob/main/EXP-3%20DML%20Commands.sql).


### LET'S SEE THE DATATYPES WHICH WE CAN USE IN THE SQLPLUS:
1. NUMBER
2. VARCHAR
3. CHAR
4. DATE
5. TIMESTAMP
6. CLOB (Character Large Object)
7. BLOB (Binary Large Object)
8. BOOLEAN
9. VARCHAR (WITH CHECK CONSTRAINT)

### NESTED QUERIES:
#### Nested query is a query within another SQL query and embedded within the WHERE clause

##### Let us take this table as example we'll do the nested queries on this
```
        ID NAME              AGE ADDRESS             SALARY
---------- ---------- ---------- --------------- ----------
         1 Ramesh             35 Ahmedabad             2000   
         2 Khilan             25 Delhi                 1500
         3 Kaushik            23 Kota                  2000
         4 Chaitali           25 Mumbai                6500
         5 Hardik             27 Bhopal                8500
         6 Komal              22 MP                    4500
         7 Muffy              24 Indore               10000
```

Checkout the [EXP-4(A) Nested Queries](https://github.com/Durgesh-Vaigandla/20CS0508-Database-Management-Systems-Lab/blob/main/EXP-4(A)%20Nested%20Queries.sql).
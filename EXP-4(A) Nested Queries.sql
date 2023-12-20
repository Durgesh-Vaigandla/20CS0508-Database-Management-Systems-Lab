--1.Nested Queries select statement inside another select statement
SELECT * FROM CUSTOMERS WHERE ID IN(SELECT ID FROM CUSTOMERS WHERE SALARY > 4500) ;

/*
Output:
        ID NAME              AGE ADDRESS             SALARY
---------- ---------- ---------- --------------- ----------
         4 Chaitali           25 Mumbai                6500
         5 Hardik             27 Bhopal                8500
         7 Muffy              24 Indore               10000
*/
--2.Nested Queries insert statement inside another select statement
INSERT INTO CUSTOMERS_BKP SELECT * FROM CUSTOMERS WHERE ID IN (SELECT ID FROM CUSTOMERS) ;

-- Output:The above statement will copy all the records from the CUSTOMERS table to the CUSTOMERS_BKP table.

--3.Nested Queries update statement inside another select statement
UPDATE CUSTOMERS SET SALARY = SALARY * 0.25
WHERE AGE IN (SELECT AGE FROM CUSTOMERS_BKP WHERE AGE >= 27 );

--output: 2 rows updated.

--4.Nested Queries delete statement inside another select statement
DELETE FROM CUSTOMERS WHERE AGE IN (SELECT AGE FROM
CUSTOMERS_BKP WHERE AGE >= 27 );

--output: 2 rows deleted.
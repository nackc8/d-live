-- Kör employees_pk.sql först för att skapa databasen och tabellerna

SELECT * FROM Employee;
SELECT * FROM Department;

SELECT *
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;

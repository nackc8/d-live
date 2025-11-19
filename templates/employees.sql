-- Kör employees_pk.sql först för att skapa databasen och tabellerna

SELECT * FROM Employee;
SELECT * FROM Department;

SELECT *
FROM Employee
INNER JOIN Department
ON table1.common_column = table2.common_column;

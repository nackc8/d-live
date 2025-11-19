-- Kör employees_pk.sql först för att skapa databasen och tabellerna

SELECT * FROM Employee;
SELECT * FROM Department;

SELECT *
FROM Employee
INNER JOIN Department
ON Employee.City = Department.City;

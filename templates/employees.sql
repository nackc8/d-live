-- Kör employees_pk.sql först för att skapa databasen och tabellerna

SELECT * FROM Employee;
SELECT * FROM Department;

-- INNER JOIN: Rader med matchande värden visas, övriga returneras inte

SELECT *
FROM Employee
INNER JOIN Department
ON Employee.City = Department.City;

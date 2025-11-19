-- Kör employees_pk.sql först för att skapa databasen och tabellerna

SELECT * FROM Employee;
SELECT * FROM Department;

-- INNER JOIN: Rader med matchande värden visas, övriga returneras inte

SELECT *
FROM Employee
INNER JOIN Department
ON Employee.City = Department.City;



SELECT *
FROM Employee -- Alla rader från denna!
LEFT JOIN Department -- Endast rader som uppfyller ON-villkoret från denna
ON Employee.City = Department.City;

SELECT * FROM Employee LEFT JOIN Department ON Employee.City = Department.City;
--            ^--- left eftersom  ^--- till höger om left
--         Employee står till vänster om Department på raden

SELECT *
FROM Employee -- Endast rader som uppfyller ON-villkoret från denna
RIGHT JOIN Department -- Alla rader från denna!
ON Employee.City = Department.City;

SELECT * FROM Employee RIGHT JOIN Department ON Employee.City = Department.City;
--            ^--- left eftersom  ^--- till höger om left
--         Employee står till vänster om Department på raden

USE ExExample;
SELECT *
FROM Employee
FULL JOIN Department
ON Employee.City = Department.City;

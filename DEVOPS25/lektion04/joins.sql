-- -- Kör employees_pk.sql först för att skapa databasen och tabellerna

SELECT * FROM Employee;
SELECT * FROM Department;

-- INNER JOIN: Rader med matchande värden visas, övriga returneras inte
-- Samma sak som att bara skriva JOIN

SELECT *
FROM Employee
INNER JOIN Department
ON Employee.City = Department.City;

SELECT *
FROM Employee -- Alla rader från denna!
LEFT JOIN Department -- Endast rader som uppfyller ON-villkoret från denna
ON Employee.City = Department.City;

-- SELECT * FROM Employee LEFT JOIN Department ON Employee.City = Department.City;
--            ^--- left eftersom  ^--- till höger om left
--         Employee står till vänster om Department på raden

SELECT *
FROM Employee -- Endast rader som uppfyller ON-villkoret från denna
RIGHT JOIN Department -- Alla rader från denna!
ON Employee.City = Department.City;

-- SELECT * FROM Employee RIGHT JOIN Department ON Employee.City = Department.City;
--            ^--- left eftersom  ^--- till höger om left
--         Employee står till vänster om Department på raden

-- FULL [OUTER] JOIN finns inte i MariaDB/MySQL. Men kan emuleras med:
--     SELECT ...
--     FROM A
--     LEFT JOIN B ON ...
--     UNION
--     SELECT ...
--     FROM A
--     RIGHT JOIN B ON ...
-- Viktigt! Ange alla kolumnnamnen på samma vis, annars blir resultatet oftast fel

SELECT e.id AS eid, e.Name AS ename, e.BirthYear AS ebirthyear, e.City AS ecity, e.DepartmentId AS edid, d.Id AS did, d.Name AS dname, d.City AS dcity FROM Employee e LEFT JOIN Department d ON e.City = d.City
UNION
SELECT e.id AS eid, e.Name AS ename, e.BirthYear AS ebirthyear, e.City AS ecity, e.DepartmentId AS edid, d.Id AS did, d.Name AS dname, d.City AS dcity FROM Employee e RIGHT JOIN Department d ON e.City = d.City;

SELECT * FROM Employee;
SELECT * FROM Department;

-- Kör employees.sql först för att skapa databasen och tabellerna

-- Union (Alla city för avdelning eller anställd)

SELECT City FROM Department
UNION
SELECT City FROM Employee;

-- Union all behåller dubletter
SELECT City FROM Department
UNION ALL
SELECT City FROM Employee;

-- Intersect, tar med de gemensamma bara
SELECT City FROM Department
INTERSECT
SELECT City FROM Employee;

-- Except, tar med de som ENDAST finns i första tabellen
SELECT City FROM Department
EXCEPT
SELECT City FROM Employee;


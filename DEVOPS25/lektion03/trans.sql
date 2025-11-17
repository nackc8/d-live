-- Kör employees.sql först för att skapa databasen och tabellerna


SELECT * FROM Employee;
SELECT * FROM Department;

-- DBeaver skapar en trasaktion innan varje körning, även om den är
-- inställd på "None". Vi committar den nedan med COMMIT.
--
-- Ett experiment som visar att det fungerar på så vis är att gå in
-- med mariadb -u root och köra en insert utan transaktion. Om den
-- påverkar databasen direkt (kolla t.ex. via dbeaver) så bevisar det
-- att transaktioner är något som dbeaver lägger till automatiskt.

INSERT INTO Employee (Name, BirthYear, City, DepartmentId) VALUES
    ('Mayank', 1995, 'Stockholm', 2);


SELECT * FROM Employee;

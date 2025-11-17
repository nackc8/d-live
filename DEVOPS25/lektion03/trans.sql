DROP DATABASE IF EXISTS ExExample;
CREATE DATABASE ExExample;
USE ExExample;

-- Department table
CREATE TABLE Department (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(100),
    City VARCHAR(100),
    PRIMARY KEY (Id)
);

-- Employee table
CREATE TABLE Employee (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(100),
    BirthYear INT,
    City VARCHAR(100),
    DepartmentId INT,
    PRIMARY KEY (Id)
);

-- Insert two departments
INSERT INTO Department (Name, City) VALUES
    ('Engineering', 'Stockholm'),
    ('HR', 'Västerås');

-- Insert six employees (one living in a different city than their dept)
INSERT INTO Employee (Name, BirthYear, City, DepartmentId) VALUES
    ('Alice', 1985, 'Stockholm', 1),
    ('Bob', 1990, 'Södertälje', 1),
    ('Charlie', 1988, 'Enköping', 1),

    ('Diana', 1979, 'Västerås', 2),
    ('Erik', 1992, 'Stockholm', 2),
    ('Frida', 1987, 'Södertälje', 2);

-- Your statements below

SELECT * FROM Employee;
SELECT * FROM Department;

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


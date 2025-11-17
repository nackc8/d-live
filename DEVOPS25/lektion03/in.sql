-- Kör employees.sql först för att skapa databasen och tabellerna

-- Anställda som bor i Västerås eller Enköping

SELECT * FROM Employee WHERE City IN ("Västerås","Enköping");

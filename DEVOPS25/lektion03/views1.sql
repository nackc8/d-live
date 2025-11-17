CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(255),
    EventDate DATETIME,
    LocationID INT
);

CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

ALTER TABLE Events
    ADD CONSTRAINT FK_Event_Location
    FOREIGN KEY (LocationID)
    REFERENCES Locations(LocationID);

SELECT * FROM Locations;
SELECT * FROM Events;

SELECT * FROM Events e
JOIN Locations l ON e.LocationID = l.LocationID;


SELECT e.EventName, e.EventDate, l.LocationName, l.Address, l.City
    FROM Events e
JOIN Locations l ON e.LocationID = l.LocationID;

-- Utan vy
SELECT e.EventName, e.EventDate, l.LocationName, l.Address, l.City
    FROM Events e
JOIN Locations l ON e.LocationID = l.LocationID;

-- Med vy för att förenkla
CREATE VIEW EventLocations AS
SELECT e.EventName, e.EventDate, l.LocationName, l.Address, l.City
    FROM Events e
JOIN Locations l ON e.LocationID = l.LocationID;

-- Enklare tack vara vyn
SELECT * FROM EventLocations
WHERE EventDate > "2026-12-05";

-- Utan vy
SELECT e.EventName, e.EventDate, l.LocationName, l.Address, l.City
    FROM Events e
JOIN Locations l ON e.LocationID = l.LocationID
WHERE EventDate > "2026-12-05";

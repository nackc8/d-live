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


SELECT e.EventName, e.EventDate, l.LocationName, l.Address, l.City
    FROM Events e
JOIN Locations l ON e.LocationID = l.LocationID;

SELECT x.EventName, x.EventDate, LocationName, Address, City
    FROM Events x
JOIN Locations ON x.LocationID = Locations.LocationID;

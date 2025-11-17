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


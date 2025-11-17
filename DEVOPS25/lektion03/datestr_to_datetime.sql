
SHOW TABLES;

CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    StringDate VARCHAR(50)
);


INSERT INTO
    Events (EventID, StringDate) VALUES
        (1, '2021-03-15 09:00:00'),
        (2, '2021-03-16 10:00:00');

INSERT INTO
    Events (EventID, StringDate) VALUES
        (3, 'Hej');


ALTER TABLE Events ADD EventDate DATETIME;

UPDATE Events
    SET EventDate = STR_TO_DATE(StringDate, '%Y-%m-%d %H:%i:%s');

SELECT *, HOUR(StringDate) AS Calced FROM Events;

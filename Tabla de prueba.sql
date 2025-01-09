CREATE TABLE People (
    Name VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(100),
    Country VARCHAR(50),
    LegalStatus VARCHAR(20),
    Employed BOOLEAN
);

INSERT INTO People (Name, LastName, Address, Country, LegalStatus, Employed)
SELECT 
    CONCAT('Name', FLOOR(RAND() * 100)),
    CONCAT('LastName', FLOOR(RAND() * 100)),
    CONCAT(FLOOR(RAND() * 100), ' Main St'),
    CASE FLOOR(RAND() * 5)
        WHEN 0 THEN 'USA'
        WHEN 1 THEN 'Canada'
        WHEN 2 THEN 'UK'
        WHEN 3 THEN 'Australia'
        ELSE 'Germany'
    END,
    CASE FLOOR(RAND() * 2)
        WHEN 0 THEN 'Citizen'
        ELSE 'Resident'
    END,
    FLOOR(RAND() * 2)
FROM 
    (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) AS temp
LIMIT 100;


SELECT * FROM People WHERE Country = 'Canada';

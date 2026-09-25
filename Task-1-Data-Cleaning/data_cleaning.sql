CREATE DATABASE swynex_data_cleaning;

USE swynex_data_cleaning;

SHOW DATABASES;

CREATE TABLE titanic_raw (
    PassengerId INT,
    Survived INT,
    Pclass INT,
    Name VARCHAR(150),
    Sex VARCHAR(20),
    Age DECIMAL(5,2),
    SibSp INT,
    Parch INT,
    Ticket VARCHAR(30),
    Fare DECIMAL(10,4),
    Cabin VARCHAR(20),
    Embarked VARCHAR(5)
);

SHOW TABLES;

SELECT COUNT(*) AS total_rows
FROM titanic_raw;

DESCRIBE titanic_raw;

SELECT *
FROM titanic_raw
LIMIT 10;

SELECT
    SUM(PassengerId IS NULL) AS missing_passenger_id,
    SUM(Survived IS NULL) AS missing_survived,
    SUM(Pclass IS NULL) AS missing_pclass,
    SUM(Name IS NULL OR TRIM(Name) = '') AS missing_name,
    SUM(Sex IS NULL OR TRIM(Sex) = '') AS missing_sex,
    SUM(Age IS NULL) AS missing_age,
    SUM(SibSp IS NULL) AS missing_sibsp,
    SUM(Parch IS NULL) AS missing_parch,
    SUM(Ticket IS NULL OR TRIM(Ticket) = '') AS missing_ticket,
    SUM(Fare IS NULL) AS missing_fare,
    SUM(Cabin IS NULL OR TRIM(Cabin) = '') AS missing_cabin,
    SUM(Embarked IS NULL OR TRIM(Embarked) = '') AS missing_embarked
FROM titanic_raw;

SELECT
PassengerId,
COUNT(*) AS duplicate_count
FROM titanic_raw
GROUP BY PassengerId
HAVING COUNT(*) > 1;

SELECT
COUNT(*) AS duplicate_rows
FROM (
SELECT
        PassengerId,
        Survived,
        Pclass,
        Name,
        Sex,
        Age,
        SibSp,
        Parch,
        Ticket,
        Fare,
        Cabin,
        Embarked
FROM titanic_raw
GROUP BY
        PassengerId,
        Survived,
        Pclass,
        Name,
        Sex,
        Age,
        SibSp,
        Parch,
        Ticket,
        Fare,
        Cabin,
        Embarked
HAVING COUNT(*) > 1
) AS duplicates;

SELECT Sex, COUNT(*) AS total
FROM titanic_raw
GROUP BY Sex
ORDER BY total DESC;

SELECT Embarked, COUNT(*) AS total
FROM titanic_raw
GROUP BY Embarked
ORDER BY total DESC;

SELECT *
FROM titanic_raw
WHERE Age < 0;

SELECT *
FROM titanic_raw
WHERE Fare < 0;

SELECT *
FROM titanic_raw
WHERE Survived NOT IN (0, 1);

SELECT *
FROM titanic_raw
WHERE Pclass NOT IN (1, 2, 3);

CREATE TABLE titanic_cleaned AS
SELECT *
FROM titanic_raw;

SELECT COUNT(*) AS total_rows
FROM titanic_cleaned;

SELECT *
FROM titanic_cleaned
WHERE Embarked IS NULL OR TRIM(Embarked) = '';

SELECT 
Embarked,
COUNT(*) AS total
FROM titanic_cleaned
WHERE Embarked IS NOT NULL
GROUP BY Embarked
ORDER BY total DESC;

SET SQL_SAFE_UPDATES = 0;

UPDATE titanic_cleaned
SET Embarked = 'S'
WHERE Embarked IS NULL OR TRIM(Embarked) = '';

ALTER TABLE titanic_cleaned
DROP COLUMN Cabin;

DESCRIBE titanic_cleaned;

UPDATE titanic_cleaned
SET
Name = TRIM(Name),
Sex = TRIM(Sex),
Ticket = TRIM(Ticket),
Embarked = TRIM(Embarked);

SELECT COUNT(*) AS total_rows
FROM titanic_cleaned;

SELECT
    SUM(PassengerId IS NULL) AS missing_passenger_id,
    SUM(Survived IS NULL) AS missing_survived,
    SUM(Pclass IS NULL) AS missing_pclass,
    SUM(Name IS NULL OR TRIM(Name) = '') AS missing_name,
    SUM(Sex IS NULL OR TRIM(Sex) = '') AS missing_sex,
    SUM(Age IS NULL) AS missing_age,
    SUM(SibSp IS NULL) AS missing_sibsp,
    SUM(Parch IS NULL) AS missing_parch,
    SUM(Ticket IS NULL OR TRIM(Ticket) = '') AS missing_ticket,
    SUM(Fare IS NULL) AS missing_fare,
    SUM(Embarked IS NULL OR TRIM(Embarked) = '') AS missing_embarked
FROM titanic_cleaned;

SELECT *
FROM titanic_cleaned
LIMIT 10;

SELECT *
FROM titanic_cleaned;
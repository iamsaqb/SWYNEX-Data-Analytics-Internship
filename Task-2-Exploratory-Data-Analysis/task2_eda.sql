-- SWYNEX Task 2
-- Exploratory Data Analysis
-- Dataset: Titanic
-- Database: MySQL

USE swynex_data_cleaning;

-- 1. Overall Statistics

SELECT
COUNT(*) AS total_passengers,
SUM(Survived) AS total_survived,
SUM(CASE WHEN Survived = 0 THEN 1 ELSE 0 END) AS total_not_survived,
ROUND(AVG(Age), 2) AS average_age,
ROUND(AVG(Fare), 2) AS average_fare
FROM titanic_cleaned;

-- 2. Overall Survival Rate

SELECT
COUNT(*) AS total_passengers,
SUM(Survived) AS survivors,
ROUND(SUM(Survived) * 100.0 / COUNT(*), 2) AS survival_rate
FROM titanic_cleaned;

-- 3. Survival by Gender

SELECT
Sex,
COUNT(*) AS total_passengers,
SUM(Survived) AS survivors,
ROUND(SUM(Survived) * 100.0 / COUNT(*), 2) AS survival_rate
FROM titanic_cleaned
GROUP BY Sex
ORDER BY survival_rate DESC;

-- 4. Survival by Passenger Class

SELECT
Pclass,
COUNT(*) AS total_passengers,
SUM(Survived) AS survivors,
ROUND(SUM(Survived) * 100.0 / COUNT(*), 2) AS survival_rate
FROM titanic_cleaned
GROUP BY Pclass
ORDER BY Pclass;

-- 5. Survival by Gender and Passenger Class

SELECT
Sex,
Pclass,
COUNT(*) AS total_passengers,
SUM(Survived) AS survivors,
ROUND(SUM(Survived) * 100.0 / COUNT(*), 2) AS survival_rate
FROM titanic_cleaned
GROUP BY Sex, Pclass
ORDER BY Pclass, Sex;

-- 6. Survival by Age Group

SELECT
    CASE
        WHEN Age < 13 THEN 'Child'
        WHEN Age BETWEEN 13 AND 17 THEN 'Teenager'
        WHEN Age BETWEEN 18 AND 30 THEN 'Young Adult'
        WHEN Age BETWEEN 31 AND 50 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group,
COUNT(*) AS total_passengers,
SUM(Survived) AS survivors,
ROUND(SUM(Survived) * 100.0 / COUNT(*), 2) AS survival_rate
FROM titanic_cleaned
WHERE Age IS NOT NULL

GROUP BY age_group

ORDER BY
    CASE age_group
        WHEN 'Child' THEN 1
        WHEN 'Teenager' THEN 2
        WHEN 'Young Adult' THEN 3
        WHEN 'Adult' THEN 4
        WHEN 'Senior' THEN 5
    END;

-- 7. Survival by Family Group

SELECT
    CASE
        WHEN (SibSp + Parch) = 0 THEN 'Alone'
        WHEN (SibSp + Parch) BETWEEN 1 AND 2 THEN 'Small Family'
        WHEN (SibSp + Parch) BETWEEN 3 AND 4 THEN 'Medium Family'
        ELSE 'Large Family'
    END AS family_group,
COUNT(*) AS total_passengers,
SUM(Survived) AS survivors,
ROUND(SUM(Survived) * 100.0 / COUNT(*), 2) AS survival_rate
FROM titanic_cleaned
GROUP BY family_group
ORDER BY survival_rate DESC;

-- 8. Survival by Embarkation Port

SELECT
Embarked,
COUNT(*) AS total_passengers,
SUM(Survived) AS survivors,
ROUND(SUM(Survived) * 100.0 / COUNT(*), 2) AS survival_rate
FROM titanic_cleaned
WHERE Embarked IS NOT NULL
GROUP BY Embarked
ORDER BY survival_rate DESC;
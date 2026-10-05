# 📊 Task 4: Final Data Analytics Project

# Titanic Survival Analysis

This project is part of my **Data Analyst Internship at SWYNEX Technologies**. It combines data cleaning, SQL-based exploratory analysis, and analytical interpretation using the Titanic dataset.

---

# 1. 📌 Project Overview

The objective of this project is to analyze the Titanic dataset and identify patterns in passenger survival.

The project follows a structured data analytics process, beginning with data cleaning and preparation, followed by exploratory data analysis using SQL/MySQL, and finally identifying important insights from the analyzed data.

The analysis focuses on passenger survival patterns based on:

- Gender
- Passenger Class
- Age Group
- Family Group
- Embarkation Port

The dataset was cleaned and validated before performing the analysis. SQL queries were then used to calculate survival rates and compare different passenger categories.

The project provides an end-to-end example of how raw data can be transformed into meaningful analytical insights.

---

# 2. 🎯 Problem Statement

The Titanic dataset contains information about passengers, including their demographic and travel-related characteristics and whether they survived.

The purpose of this project is to analyze the dataset and understand the differences in observed survival rates across different passenger groups.

The analysis focuses on answering the following questions:

1. What was the overall survival rate?
2. How did survival rates differ between female and male passengers?
3. How did passenger class relate to observed survival rates?
4. How did survival rates vary across different age groups?
5. How did family grouping relate to observed survival rates?
6. Did survival rates differ across embarkation ports?
7. What important patterns can be identified from the data?

The goal is to use SQL-based analysis to transform the cleaned dataset into meaningful and understandable findings.

---

# 3. 📂 Dataset Information

## Dataset

**Titanic Dataset**

The dataset contains passenger information related to survival, passenger class, gender, age, family relationships, ticket information, fare, and embarkation port.

### Dataset Size

After data preparation, the analysis was performed on:

| Metric | Value |
|---|---:|
| Total Passengers | 714 |
| Survivors | 290 |
| Non-Survivors | 424 |
| Overall Survival Rate | 40.62% |

### Important Columns

| Column | Description |
|---|---|
| PassengerId | Unique passenger identification number |
| Survived | Passenger survival status |
| Pclass | Passenger class |
| Name | Passenger name |
| Sex | Passenger gender |
| Age | Passenger age |
| SibSp | Number of siblings or spouses aboard |
| Parch | Number of parents or children aboard |
| Ticket | Passenger ticket information |
| Fare | Passenger fare |
| Cabin | Cabin information |
| Embarked | Port of embarkation |

---

# 4. 🧹 Data Cleaning

The raw Titanic dataset was imported into **MySQL** and checked before performing the exploratory analysis.

The purpose of data cleaning was to improve data quality and prepare the dataset for analysis.

## Data Cleaning Steps

### 4.1 Missing Value Analysis

Missing values were checked across all columns.

The major missing-value issues were found in:

- `Cabin`
- `Embarked`

The dataset contained:

- **599 missing Cabin values**
- **2 missing Embarked values**

---

### 4.2 Handling Cabin

The `Cabin` column contained a large number of missing values.

Because **599 out of 714 records** had missing cabin information, the `Cabin` column was removed from the cleaned dataset.

---

### 4.3 Handling Embarked

The `Embarked` column contained **2 missing values**.

These missing values were handled using the most frequent embarkation category.

---

### 4.4 Duplicate Check

Duplicate records were checked to ensure data consistency.

The validation did not identify a duplicate-record issue requiring removal.

---

### 4.5 Data Consistency Checks

Categorical values were checked for consistency, including:

- Gender
- Embarkation port

The dataset was checked for unexpected or inconsistent categories.

---

### 4.6 Numerical Validation

The following columns were checked for invalid values:

- Age
- Fare
- Survived
- Passenger Class

The validation confirmed that the values used for analysis were within the expected ranges.

---

### 4.7 Text Cleaning

Text fields were cleaned using trimming operations.

The following columns were processed:

- Name
- Sex
- Ticket
- Embarked

---

### 4.8 Cleaned Dataset

After completing the cleaning process, the prepared dataset was stored as:

```text
titanic_cleaned.csv

Passengers associated with embarkation port C had the highest observed survival rate at 60.77%, while passengers associated with Q had the lowest at 28.57%


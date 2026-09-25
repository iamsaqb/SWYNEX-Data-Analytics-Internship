
# SWYNEX Internship Task 1: Data Cleaning & Preparation Using SQL

## 📌 Project Overview

This project was completed as part of my **Data Analyst Internship at SWYNEX Technologies**.

The objective of this task was to clean and prepare a public dataset using **SQL/MySQL**, identify data quality issues, handle missing values, remove unnecessary data, and produce a clean dataset suitable for further analysis.

---

## 🎯 Objective

The main objectives of this task were:

- Import a public dataset into MySQL
- Inspect the dataset for data quality issues
- Identify missing values
- Check for duplicate records
- Check for invalid or inconsistent values
- Handle missing data appropriately
- Remove columns with excessive missing values
- Clean and standardize text fields
- Create a final cleaned dataset for analysis

---

## 📊 Dataset

**Dataset:** Titanic Dataset

The dataset contains passenger information such as:

- Passenger ID
- Survival status
- Passenger class
- Name
- Gender
- Age
- Number of siblings/spouses
- Number of parents/children
- Ticket
- Fare
- Cabin
- Port of Embarkation

The imported dataset contained **714 records**.

---

## 🛠️ Tools & Technologies

- **MySQL**
- **SQL**
- **GitHub**
- **Titanic Public Dataset**

---

## 🔍 Data Quality Analysis

The raw dataset was analyzed to identify missing and potentially inconsistent data.

### Missing Values

| Column | Missing Values |
|---|---:|
| PassengerId | 0 |
| Survived | 0 |
| Pclass | 0 |
| Name | 0 |
| Sex | 0 |
| Age | 0 |
| SibSp | 0 |
| Parch | 0 |
| Ticket | 0 |
| Fare | 0 |
| Cabin | 599 |
| Embarked | 2 |

### Duplicate Check

Duplicate records and duplicate Passenger IDs were checked using SQL.

No duplicate issues were identified in the dataset.

### Data Validation

The following fields were also checked for invalid or inconsistent values:

- Sex
- Embarked
- Age
- Fare
- Survived
- Passenger Class

No invalid values requiring correction were identified.

---

## 🧹 Data Cleaning Performed

### 1. Missing Embarked Values

The missing values in the `Embarked` column were handled using the most frequent category.

### 2. Cabin Column

The `Cabin` column contained **599 missing values out of 714 records**.

Because the column had a very high proportion of missing data, it was removed from the cleaned dataset.

```sql
ALTER TABLE titanic_cleaned
DROP COLUMN Cabin;

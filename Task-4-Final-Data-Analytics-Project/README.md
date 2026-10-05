# 📊 Task 4: Final Data Analytics Project

# Titanic Survival Analysis and Interactive Dashboard

A complete end-to-end data analytics case study developed as part of the **Data Analyst Internship at SWYNEX Technologies**.

---

## 🏢 Internship Information

| Detail | Information |
|---|---|
| Organization | SWYNEX Technologies |
| Role | Data Analyst Intern |
| Domain | Data & AI |
| Task | Task 4 - Final Data Analytics Project |
| Dataset | Titanic Dataset |
| Tools | SQL, MySQL, HTML, CSS, JavaScript, GitHub |

---

# 1. 📌 Project Overview

This project represents the final stage of my Data Analyst Internship at **SWYNEX Technologies**.

The objective of this project was to combine the work completed during the previous internship tasks into one complete data analytics case study.

The project follows an end-to-end analytics workflow:

**Data Collection → Data Cleaning → Exploratory Data Analysis → Visualization → Interactive Dashboard → Business Insights**

The **Titanic dataset** was selected for this project to analyze passenger survival patterns based on different demographic and travel-related characteristics.

The analysis focuses on factors such as:

- Gender
- Passenger Class
- Age Group
- Family Group
- Embarkation Port

The final outcome is an interactive dashboard that presents key performance indicators, charts, filters, and analytical findings in a clear and user-friendly format.

---

# 2. 🎯 Problem Statement

The Titanic dataset contains information about passengers who traveled on the Titanic, including demographic, travel, and survival information.

The objective of this project is to analyze the available passenger data and identify meaningful patterns in survival.

The analysis attempts to answer the following questions:

1. What percentage of passengers survived?
2. How did survival rates differ between female and male passengers?
3. How did passenger class relate to observed survival rates?
4. How did survival vary across different age groups?
5. How did family grouping relate to observed survival rates?
6. Did survival rates vary across embarkation ports?
7. How can these findings be presented through an interactive dashboard?

The purpose is to transform raw passenger data into structured analytical information and present the findings through an interactive visualization.

---

# 3. 🎯 Project Objectives

The main objectives of the project are:

- Clean and prepare the Titanic dataset for analysis.
- Identify and handle missing and inconsistent data.
- Perform exploratory data analysis using SQL.
- Calculate important survival metrics.
- Analyze survival patterns across different passenger characteristics.
- Create meaningful data visualizations.
- Develop an interactive dashboard.
- Present important KPIs in a clear format.
- Identify key observations from the analysis.
- Combine all stages into one complete analytics case study.

---

# 4. 📂 Dataset Information

## Dataset Used

**Titanic Dataset**

The Titanic dataset contains information about passengers, including their survival status, passenger class, gender, age, family information, ticket information, fare, and embarkation port.

The dataset was used throughout the project for data cleaning, SQL analysis, visualization, and dashboard development.

---

## Dataset Size

After importing and preparing the dataset, the analysis was performed on:

- **Total Passengers:** 714
- **Survivors:** 290
- **Non-Survivors:** 424
- **Overall Survival Rate:** 40.62%

---

## Dataset Columns

| Column | Description |
|---|---|
| PassengerId | Unique identification number of the passenger |
| Survived | Indicates whether the passenger survived |
| Pclass | Passenger class: 1st, 2nd, or 3rd |
| Name | Name of the passenger |
| Sex | Gender of the passenger |
| Age | Age of the passenger |
| SibSp | Number of siblings or spouses aboard |
| Parch | Number of parents or children aboard |
| Ticket | Passenger ticket number |
| Fare | Passenger fare |
| Cabin | Cabin information |
| Embarked | Port from which the passenger embarked |

---

# 5. 🧹 Data Cleaning and Preparation

The first stage of the project was data cleaning and preparation.

The raw Titanic dataset was imported into **MySQL** and stored in a raw table before performing the cleaning process.

The purpose of this stage was to improve data quality and prepare the dataset for reliable analysis.

---

## 5.1 Missing Value Analysis

Missing values were checked for all columns.

The major missing-data issue was found in the `Cabin` column.

The dataset contained:

- **599 missing Cabin values**
- **2 missing Embarked values**

The remaining important analytical columns did not contain missing values requiring treatment.

---

## 5.2 Cabin Column

The `Cabin` column contained a very high number of missing values.

Because approximately **599 of the 714 records** had missing cabin information, the column was removed from the cleaned dataset.

This prevented the large amount of missing cabin information from affecting the analysis.

---

## 5.3 Embarked Column

The `Embarked` column contained **2 missing values**.

These missing values were handled during the cleaning process using the most frequent embarkation category.

---

## 5.4 Duplicate Check

Duplicate records were checked to ensure that the dataset did not contain unintended duplicate passenger records.

The duplicate validation did not identify a duplicate-record issue requiring removal.

---

## 5.5 Data Consistency Checks

The following categorical values were checked:

- Gender
- Embarkation port

The values were checked for inconsistencies and unexpected categories.

---

## 5.6 Numerical Validation

The following columns were checked for invalid values:

- Age
- Fare
- Survived
- Passenger Class

The validation confirmed that the values used for analysis were within the expected ranges.

---

## 5.7 Text Cleaning

Text fields were cleaned using trimming operations.

The following columns were processed:

- Name
- Sex
- Ticket
- Embarked

This helped maintain consistent formatting in the cleaned dataset.

---

## 5.8 Cleaned Dataset

After completing the cleaning process, the prepared dataset was stored as:

```text
titanic_cleaned.csv

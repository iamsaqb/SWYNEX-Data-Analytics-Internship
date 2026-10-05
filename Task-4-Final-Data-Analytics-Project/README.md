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

---

### 5.  Exploratory Data Analysis

After completing data cleaning, exploratory data analysis was performed using **SQL/MySQL**.

The purpose of EDA was to understand passenger survival patterns across different categories.

---

### 5.1 Overall Passenger Statistics

The overall analysis produced the following results:

| Metric                | Result |
| --------------------- | ------ |
| Total Passengers      | 714    |
| Survivors             | 290    |
| Non-Survivors         | 424    |
| Overall Survival Rate | 40.62% |

### Observation

Out of 714 passengers analyzed, **290 survived** and **424 did not survive**.

The overall observed survival rate was **40.62%**.

---

## 5.2 Survival by Gender

The survival rate was analyzed separately for female and male passengers.

| Gender | Survival Rate |
| ------ | ------------- |
| Female | 75.48%        |
| Male   | 20.53%        |

### Observation

Female passengers had a substantially higher observed survival rate than male passengers in the analyzed dataset.

---

## 5.3 Survival by Passenger Class

The analysis was performed across all three passenger classes.

| Passenger Class | Survival Rate |
| --------------- | ------------- |
| 1st Class       | 65.59%        |
| 2nd Class       | 47.98%        |
| 3rd Class       | 23.94%        |

### Observation

The observed survival rate was highest among **1st-class passengers** and lowest among **3rd-class passengers**.

---

## 5.4 Survival by Gender and Passenger Class

A combined analysis was performed to understand survival patterns across gender and passenger class.

| Gender | Passenger Class | Survival Rate |
| ------ | --------------- | ------------- |
| Female | 1st             | 96.47%        |
| Female | 2nd             | 91.89%        |
| Female | 3rd             | 46.08%        |
| Male   | 1st             | 39.60%        |
| Male   | 2nd             | 15.15%        |
| Male   | 3rd             | 15.02%        |

### Observation

The combined analysis shows considerable differences in observed survival rates when gender and passenger class are considered together.

Female passengers in the first and second classes had particularly high observed survival rates, while male passengers in the second and third classes had substantially lower observed rates.

---

## 5.5 Survival by Age Group

Passengers were grouped into the following age categories:

- Child
- Teenager
- Young Adult
- Adult
- Senior

| Age Group   | Passengers | Survivors | Survival Rate |
| ----------- | ---------- | --------- | ------------- |
| Child       | 69         | 40        | 57.97%        |
| Teenager    | 44         | 21        | 47.73%        |
| Young Adult | 296        | 105       | 35.47%        |
| Adult       | 239        | 102       | 42.68%        |
| Senior      | 66         | 22        | 33.33%        |

### Observation

The **Child** group had the highest observed survival rate among the defined age groups at **57.97%**.

The **Senior** group had the lowest observed survival rate at **33.33%**.

---

## 5.6 Survival by Family Group

Passengers were grouped according to the number of siblings, spouses, parents, and children traveling with them.

The categories were:

- Alone
- Small Family
- Medium Family
- Large Family

| Family Group  | Passengers | Survivors | Survival Rate |
| ------------- | ---------- | --------- | ------------- |
| Medium Family | 38         | 24        | 63.16%        |
| Small Family  | 232        | 129       | 55.60%        |
| Alone         | 404        | 130       | 32.18%        |
| Large Family  | 40         | 7         | 17.50%        |

### Observation

Passengers classified into **Medium Family** and **Small Family** groups had higher observed survival rates than passengers traveling alone or in large family groups.

---

## 5.7 Survival by Embarkation Port

The analysis also compared survival rates across embarkation ports.

| Embarkation Port | Passengers | Survivors | Survival Rate |
| ---------------- | ---------- | --------- | ------------- |
| C                | 130        | 79        | 60.77%        |
| S                | 556        | 203       | 36.51%        |
| Q                | 28         | 8         | 28.57%        |

### Observation

Passengers associated with embarkation port **C** had the highest observed survival rate at **60.77%**, while passengers associated with **Q** had the lowest at **28.57%**.

# 6. 💡 Key Business Insights

### Insight 1: Overall Survival

- Total passengers analyzed: **714**
- Survivors: **290**
- Non-survivors: **424**
- Overall observed survival rate: **40.62%**

---

### Insight 2: Gender

Female passengers had an observed survival rate of **75.48%**, compared with **20.53%** for male passengers.

---

### Insight 3: Passenger Class

- 1st Class: **65.59%**
- 2nd Class: **47.98%**
- 3rd Class: **23.94%**

The analysis shows a clear difference in observed survival rates across passenger classes.

---

### Insight 4: Gender and Passenger Class

Female 1st-class and 2nd-class passengers had particularly high observed survival rates, while male 2nd-class and 3rd-class passengers had substantially lower observed rates.

---

### Insight 5: Age Group

Children had the highest observed survival rate among the defined age groups at **57.97%**, while Seniors had the lowest at **33.33%**.

---

### Insight 6: Family Group

Medium Family had the highest observed survival rate at **63.16%**, while Large Family had the lowest at **17.50%**.

---

### Insight 7: Embarkation

- Port C: **60.77%**
- Port S: **36.51%**
- Port Q: **28.57%**

Port C had the highest observed survival rate, while Port Q had the lowest.

### 7. 🏁  Conclusion

The **Titanic Survival Analysis** project demonstrates how raw data can be transformed into meaningful insights through a structured data analytics process.

Starting with **data cleaning and preparation**, the project progressed through **SQL-based exploratory analysis, visualization, interactive dashboard development, and final insight generation**.

The analysis identified clear differences in observed survival rates across **gender, passenger class, age groups, family groups, and embarkation categories**.

The final **interactive dashboard** provides a user-friendly way to explore these patterns and understand the analytical results.

Overall, this project provided practical experience in applying **SQL, MySQL, data analysis, data visualization, dashboard development, Git, and GitHub** to an end-to-end analytics project.

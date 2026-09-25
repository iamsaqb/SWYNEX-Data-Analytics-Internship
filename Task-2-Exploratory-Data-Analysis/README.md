
# SWYNEX-Exploratory-Data-Analysis

Data Analysis Intern at SWYNEX Technology  - Task 02

# SWYNEX Internship Task 2: Exploratory Data Analysis Using SQL

## 📌 Project Overview

This project was completed as part of my **Data Analyst Internship at SWYNEX Technologies**.

The objective of this task was to perform **Exploratory Data Analysis (EDA)** on the cleaned Titanic dataset using **SQL and MySQL**.

The analysis focuses on identifying patterns in passenger survival based on gender, passenger class, age group, family group, and embarkation port.

---

## 🎯 Objectives

The main objectives of this task were:

- Perform exploratory data analysis using SQL
- Calculate overall survival statistics
- Analyze survival rates by gender
- Analyze survival rates by passenger class
- Analyze survival by gender and passenger class
- Analyze survival across different age groups
- Analyze survival based on family group
- Analyze survival by embarkation port
- Create visualizations from the SQL analysis results
- Document the findings

---

## 📊 Dataset

**Dataset:** Titanic Dataset

The dataset used for this analysis is the cleaned Titanic dataset prepared during **Task 1: Data Cleaning & Preparation**.

**Total records analyzed:** 714 passengers

---

## 🛠️ Tools & Technologies

- **MySQL**
- **SQL**
- **GitHub**
- **Titanic Dataset**
- **Data Visualization**

---

# 📈 Exploratory Data Analysis

## 1. Overall Survival

The analysis of 714 passengers produced the following results:

| Metric | Result |
|---|---:|
| Total Passengers | 714 |
| Survivors | 290 |
| Did Not Survive | 424 |
| Overall Survival Rate | 40.62% |

The observed overall survival rate in the dataset was **40.62%**.

---

## 2. Survival by Gender

| Gender | Survival Rate |
|---|---:|
| Female | 75.48% |
| Male | 20.53% |

The analysis shows a difference in observed survival rates between female and male passengers.

---

## 3. Survival by Passenger Class

| Passenger Class | Survival Rate |
|---|---:|
| 1st Class | 65.59% |
| 2nd Class | 47.98% |
| 3rd Class | 23.94% |

Survival rates varied across the three passenger classes in the dataset.

---

## 4. Survival by Gender and Passenger Class

| Gender | Passenger Class | Survival Rate |
|---|---|---:|
| Female | 1st Class | 96.47% |
| Male | 1st Class | 39.60% |
| Female | 2nd Class | 91.89% |
| Male | 2nd Class | 15.15% |
| Female | 3rd Class | 46.08% |
| Male | 3rd Class | 15.02% |

Combining gender and passenger class provides a more detailed view of the observed survival patterns.

---

## 5. Survival by Age Group

Age groups were created using SQL conditions.

| Age Group | Passengers | Survivors | Survival Rate |
|---|---:|---:|---:|
| Child | 69 | 40 | 57.97% |
| Teenager | 44 | 21 | 47.73% |
| Young Adult | 296 | 105 | 35.47% |
| Adult | 239 | 102 | 42.68% |
| Senior | 66 | 22 | 33.33% |

The analysis shows differences in observed survival rates across the defined age groups.

---

## 6. Survival by Family Group

Family groups were created using the combined number of siblings/spouses and parents/children aboard.

| Family Group | Passengers | Survivors | Survival Rate |
|---|---:|---:|---:|
| Medium Family | 38 | 24 | 63.16% |
| Small Family | 232 | 129 | 55.60% |
| Alone | 404 | 130 | 32.18% |
| Large Family | 40 | 7 | 17.50% |

Different family groups showed different observed survival rates within the dataset.

---

## 7. Survival by Embarkation Port

| Embarked | Passengers | Survivors | Survival Rate |
|---|---:|---:|---:|
| C | 130 | 79 | 60.77% |
| S | 556 | 203 | 36.51% |
| Q | 28 | 8 | 28.57% |

The observed survival rate varied across the three embarkation categories.

---

# 📊 Visualizations

Five visualizations were created from the SQL analysis:

### 1. Overall Titanic Survival Rate

Shows the proportion of passengers who survived and did not survive.

### 2. Titanic Survival Rate by Gender

Compares observed survival rates between female and male passengers.

### 3. Titanic Survival Rate by Passenger Class

Compares survival rates across 1st, 2nd, and 3rd class.

### 4. Titanic Survival Rate by Age Group

Shows survival rates across the defined age categories.

### 5. Titanic Survival Rate by Family Group

Compares survival rates across the defined family groups.

---

# 🔍 Key Observations

Based on the SQL analysis:

- The dataset contained **714 passengers**.
- **290 passengers survived**, while **424 did not survive**.
- The overall observed survival rate was **40.62%**.
- Female passengers had a higher observed survival rate than male passengers.
- Survival rates varied across passenger classes.
- Survival rates varied across the defined age groups.
- Different family groups showed different observed survival rates.
- Survival rates also varied across embarkation categories.

These observations describe patterns found in this dataset and do not by themselves establish causal relationships.

---

# 🧮 SQL Analysis

The `task2_eda.sql` file contains the SQL queries used for the analysis.

The queries cover:

- Overall passenger statistics
- Overall survival rate
- Survival by gender
- Survival by passenger class
- Survival by gender and passenger class
- Survival by age group
- Survival by family group
- Survival by embarkation port

Task 4: Final Data Analytics Project
Titanic Survival Analysis and Interactive Dashboard
SWYNEX Technologies | Data Analyst Internship
📌 Project Overview

This project represents the Final Data Analytics Project completed as part of my Data Analyst Internship at SWYNEX Technologies.

The objective of this project is to combine the complete data analytics workflow into a single case study, starting from data cleaning and preparation, followed by exploratory data analysis, visualization, dashboard development, and communication of key insights.

The project uses the Titanic dataset to analyze passenger survival patterns based on demographic and travel-related factors such as gender, passenger class, age group, family group, and embarkation port.

The final outcome is an interactive dashboard that presents key performance indicators, visualizations, filters, and analytical findings in an easy-to-understand format.

🎯 Problem Statement

The Titanic dataset contains information about passengers and whether they survived the disaster.

The purpose of this project is to analyze the dataset and identify meaningful patterns in passenger survival.

The analysis focuses on questions such as:

What was the overall survival rate?
How did survival vary by gender?
How did passenger class affect observed survival rates?
Which age groups had higher observed survival rates?
How did family size/group affect survival?
Did survival rates vary by embarkation port?
How can these findings be presented through an interactive dashboard?

The project demonstrates how raw data can be transformed into useful analytical insights through a structured data analytics workflow.

📂 Dataset Information

Dataset: Titanic Dataset

The dataset contains passenger-level information including:

Column	Description
PassengerId	Unique passenger identifier
Survived	Survival status
Pclass	Passenger class
Name	Passenger name
Sex	Passenger gender
Age	Passenger age
SibSp	Number of siblings/spouses aboard
Parch	Number of parents/children aboard
Ticket	Ticket information
Fare	Passenger fare
Cabin	Cabin information
Embarked	Port of embarkation
Dataset Size

After importing the dataset and completing the preparation process:

Total records analyzed: 714 passengers
Survivors: 290
Non-survivors: 424
🔄 Project Workflow
Raw Titanic Dataset
        ↓
Task 1: Data Cleaning & Preparation
        ↓
Cleaned Titanic Dataset
        ↓
Task 2: Exploratory Data Analysis
        ↓
SQL-Based Insights
        ↓
Task 3: Interactive Dashboard
        ↓
Task 4: Final Analytics Case Study
        ↓
Business Insights & Conclusions
🧹 Task 1: Data Cleaning & Preparation

The first stage of the project focused on preparing the Titanic dataset for analysis.

Data Quality Checks

The following checks were performed:

Checked total number of records
Checked missing values
Checked duplicate records
Checked inconsistent categorical values
Checked invalid age values
Checked invalid fare values
Checked survival values
Checked passenger class values
Checked text formatting
Missing Values

The initial dataset contained missing values in:

Cabin
Embarked

The Cabin column contained a large number of missing values and was therefore removed from the cleaned dataset.

The missing Embarked values were handled during the cleaning process.

Text fields were also trimmed to maintain consistent formatting.

Cleaned Dataset

The cleaned data was stored in:

titanic_cleaned.csv

The SQL cleaning process is available in:

Task-1-Data-Cleaning/
└── data_cleaning.sql
📊 Task 2: Exploratory Data Analysis

The second stage involved performing exploratory data analysis using SQL/MySQL.

The analysis focused on understanding passenger survival patterns.

Overall Statistics
Metric	Result
Total Passengers	714
Survivors	290
Non-Survivors	424
Overall Survival Rate	40.62%
👩‍🦰 Survival by Gender
Gender	Survival Rate
Female	75.48%
Male	20.53%

The analysis shows a substantial difference between the observed survival rates of female and male passengers in this dataset.

🚢 Survival by Passenger Class
Passenger Class	Survival Rate
1st Class	65.59%
2nd Class	47.98%
3rd Class	23.94%

The observed survival rate was highest among 1st-class passengers and lowest among 3rd-class passengers.

👥 Survival by Gender and Passenger Class

The combination of gender and passenger class provided additional insight:

Gender	Class	Survival Rate
Female	1st	96.47%
Female	2nd	91.89%
Female	3rd	46.08%
Male	1st	39.60%
Male	2nd	15.15%
Male	3rd	15.02%

This demonstrates that survival patterns differed substantially when multiple passenger characteristics were considered together.

👶 Survival by Age Group
Age Group	Passengers	Survivors	Survival Rate
Child	69	40	57.97%
Teenager	44	21	47.73%
Young Adult	296	105	35.47%
Adult	239	102	42.68%
Senior	66	22	33.33%

The Child group had the highest observed survival rate among the defined age groups.

👨‍👩‍👧 Survival by Family Group
Family Group	Passengers	Survivors	Survival Rate
Medium Family	38	24	63.16%
Small Family	232	129	55.60%
Alone	404	130	32.18%
Large Family	40	7	17.50%

The analysis shows different survival patterns across the defined family groups.

⚓ Survival by Embarkation Port
Port	Passengers	Survivors	Survival Rate
C	130	79	60.77%
S	556	203	36.51%
Q	28	8	28.57%

The observed survival rate was highest among passengers associated with port C and lowest among those associated with port Q.

📈 Task 3: Interactive Dashboard

The SQL analysis was converted into an interactive dashboard to make the findings easier to explore.

Dashboard KPIs

The dashboard presents:

Total Passengers: 714
Survivors: 290
Non-Survivors: 424
Overall Survival Rate: 40.62%
Dashboard Visualizations

The dashboard includes:

Survival Rate by Gender
Survival Rate by Passenger Class
Survival Rate by Age Group
Survival Rate by Family Group
Survival Rate by Embarkation Port
Interactive Filters

Users can explore the dashboard using filters for:

Gender
Passenger Class
Age Group
Embarkation Port

The dashboard was developed as a browser-based interactive dashboard using:

HTML
CSS
JavaScript

Note: This project uses a browser-based interactive dashboard rather than claiming it to be a Power BI or Tableau .pbix/.twb project.

💡 Key Business Insights

The analysis produced several important observations from the dataset:

1. Overall Survival

The dataset contains 714 passengers, of whom 290 survived, resulting in an observed overall survival rate of 40.62%.

2. Gender Difference

Female passengers had a substantially higher observed survival rate than male passengers.

3. Passenger Class

1st-class passengers had the highest observed survival rate, while 3rd-class passengers had the lowest.

4. Combined Factors

The combination of gender and passenger class revealed stronger differences than examining either factor independently.

5. Age

The defined age groups showed different observed survival rates, with children having the highest rate among the groups used in this analysis.

6. Family Group

Passengers classified into small and medium family groups showed higher observed survival rates than passengers traveling alone or in large family groups.

7. Embarkation

Observed survival rates varied across the three embarkation categories.

These findings describe patterns within the dataset. They should not be interpreted as proof that any individual factor directly caused survival or non-survival.

🛠️ Tools & Technologies
Data Analysis
SQL
MySQL
Data Cleaning
SQL
MySQL
Dashboard
HTML
CSS
JavaScript
Version Control
Git
GitHub
Analytics Concepts
Data Cleaning
Exploratory Data Analysis
Data Aggregation
Data Visualization
KPI Development
Interactive Filtering
Insight Generation
📁 Project Structure
SWYNEX-Data-Analytics-Internship/
│
├── README.md
│
├── Task-1-Data-Cleaning/
│   ├── README.md
│   ├── data_cleaning.sql
│   ├── titanic.csv
│   └── titanic_cleaned.csv
│
├── Task-2-Exploratory-Data-Analysis/
│   ├── README.md
│   ├── task2_eda.sql
│   └── charts/
│       ├── All_5_Charts.png
│       ├── Overall Titanic Survival Rate.png
│       ├── Titanic Survival Rate by Age Group.png
│       ├── Titanic Survival Rate by Family Group.png
│       ├── Titanic Survival Rate by Gender.png
│       └── Titanic Survival Rate by Passenger Class.png
│
├── Task-3-Interactive-Dashboard/
│   ├── README.md
│   └── SWYNEX_Titanic_Interactive_Dashboard.html
│
└── Task-4-Final-Data-Analytics-Project/
    └── README.md
🔗 Project Resources
GitHub Repository

SWYNEX Data Analytics Internship Repository

Task 3 Dashboard

The interactive dashboard is available inside:

Task-3-Interactive-Dashboard/

Once GitHub Pages is configured, a live dashboard URL can also be added here:

Live Dashboard: [Add GitHub Pages URL]
LinkedIn
LinkedIn Explanation Post:
[Add your LinkedIn Task 4 post URL]
🎓 Internship Details

Organization: SWYNEX Technologies
Role: Data Analyst Intern
Domain: Data & AI
Project: Final Data Analytics Project
Dataset: Titanic Dataset

👨‍💻 Author

Saquib Akhter

Data Analyst Intern | SQL | MySQL | Data Analytics | Data Visualization

🏁 Conclusion

This final project demonstrates the complete data analytics lifecycle, from raw data preparation to exploratory analysis, visualization, interactive dashboard development, and insight generation.

Through this project, I gained practical experience in using SQL/MySQL for data preparation and analysis, transforming analytical results into visualizations, developing an interactive dashboard, and communicating data-driven findings in a structured case study.

The project demonstrates how a structured analytics workflow can transform raw data into meaningful and accessible insights.

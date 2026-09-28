Clinical Records Exploratory Data Analysis

Overview

This project explores clinical and operational patient data to uncover patterns in demographics, treatment costs, and readmission rates.
It demonstrates a complete data‑engineering and analytics workflow — from SQL data validation to Python preprocessing and Tableau visualization.

Project Structure

Folder	Description

-> postgresql/	SQL scripts for data validation, cleaning, and exploratory analysis.
-> python/	Jupyter notebook and preprocessing scripts for data extraction and transformation.
-> tableau/	Packaged Tableau dashboards for demographic and clinical insights.
-> data/	Raw and cleaned datasets (CSV format).

Tools & Technologies

-> PostgreSQL – Data validation, cleaning, and EDA queries

-> Python (Pandas, Psycopg2) – Data extraction and preprocessing

-> Tableau Public – Interactive dashboards for visualization

-> pgAdmin – Development environment

Key Analyses

1. Missing‑value and validity checks for clinical metrics

2. Outlier detection for cost, blood sugar, and cholesterol

3. Readmission analysis by BMI, age group, and previous admissions

4. Demographic breakdown by gender and admission type

Dashboards

1️) Patient Demographics Overview

Age, gender, and admission type distributions
Highlights population characteristics and admission trends

### 🔗 Dashboard 1 — Clinical & Operational Patients Analytics
View on Tableau Public:
https://public.tableau.com/app/profile/sreelakshmi.atholi/viz/dashboard_1_demographics/PatientsDemographiicsOverview?publish=yes

2️) Clinical & Operational Patients Analytics

Readmission relationships with BMI, cholesterol, fasting blood sugar, and previous admissions
Cost and length‑of‑stay correlations
Data source: healthcare_patients.csv (imported into SQL Server)
Created by Sreelakshmi Atholi

### 🔗 Dashboard 2 — Patient Demographics Overview
View on Tableau Public:
https://public.tableau.com/app/profile/sreelakshmi.atholi/viz/ClinicalOperationalPatientsAnalytics/ClinicalOperationalPatientAnalytics

How to Run

Clone the repository
Import healthcare_patients.csv into PostgreSQL
Run SQL scripts in postgresql/ for validation and cleaning
Execute Python notebook in python/eda_notebook.ipynb
Open Tableau dashboards (.twbx) for visualization

Purpose

This project was built to demonstrate end‑to‑end data analysis skills — combining SQL, Python, and Tableau — for clinical data workflows and operational insights.


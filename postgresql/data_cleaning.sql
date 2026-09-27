SELECT 
    SUM(CASE WHEN patient_age IS NULL THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS missing_gender,
    SUM(CASE WHEN bmi IS NULL THEN 1 ELSE 0 END) AS missing_bmi,
    SUM(CASE WHEN systolic_bp IS NULL THEN 1 ELSE 0 END) AS missing_systolic_bp,
    SUM(CASE WHEN diastolic_bp IS NULL THEN 1 ELSE 0 END) AS missing_diastolic_bp,
    SUM(CASE WHEN cholesterol_mg_dl IS NULL THEN 1 ELSE 0 END) AS missing_cholesterol_mg_dl,
    SUM(CASE WHEN fasting_blood_sugar IS NULL THEN 1 ELSE 0 END) AS missing_fasting_blood_sugar,
    SUM(CASE WHEN heart_rate_bpm IS NULL THEN 1 ELSE 0 END) AS missing_heart_rate_bpm,
    SUM(CASE WHEN previous_admissions IS NULL THEN 1 ELSE 0 END) AS missing_previous_admissions,
    SUM(CASE WHEN admission_type IS NULL THEN 1 ELSE 0 END) AS missing_admission_type,
    SUM(CASE WHEN primary_diagnosis IS NULL THEN 1 ELSE 0 END) AS missing_primary_disgnosis,
    SUM(CASE WHEN medication_adherence IS NULL THEN 1 ELSE 0 END) AS missing_medication_adherence,
    SUM(CASE WHEN length_of_stay_days IS NULL THEN 1 ELSE 0 END) AS missing_length_of_stay_days,
    SUM(CASE WHEN treatment_cost_usd IS NULL THEN 1 ELSE 0 END) AS missing_treatment_cost_usd,
    SUM(CASE WHEN readmission_30_days IS NULL THEN 1 ELSE 0 END) AS missing_readmission_30_days
FROM healthcare_patients;

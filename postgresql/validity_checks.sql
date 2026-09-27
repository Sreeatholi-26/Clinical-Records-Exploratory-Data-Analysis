WITH ClinicalValidity AS (
    SELECT *,
        CASE WHEN patient_age BETWEEN 0 AND 120 THEN 1 ELSE 0 END AS age_valid,
        CASE WHEN bmi BETWEEN 10 AND 60 THEN 1 ELSE 0 END AS bmi_valid,
        CASE WHEN systolic_bp BETWEEN 70 AND 250 THEN 1 ELSE 0 END AS systolic_valid,
        CASE WHEN diastolic_bp BETWEEN 40 AND 150 THEN 1 ELSE 0 END AS diastolic_valid,
        CASE WHEN cholesterol_mg_dl BETWEEN 100 AND 400 THEN 1 ELSE 0 END AS chol_valid,
        CASE WHEN fasting_blood_sugar BETWEEN 60 AND 300 THEN 1 ELSE 0 END AS fbs_valid,
        CASE WHEN heart_rate_bpm BETWEEN 30 AND 200 THEN 1 ELSE 0 END AS hr_valid,
        CASE WHEN length_of_stay_days BETWEEN 0 AND 365 THEN 1 ELSE 0 END AS los_valid,
        CASE WHEN previous_admissions BETWEEN 0 AND 50 THEN 1 ELSE 0 END AS prev_adm_valid,
        CASE WHEN treatment_cost_usd BETWEEN 0 AND 100000 THEN 1 ELSE 0 END AS cost_valid
    FROM healthcare_patients
)
SELECT *
FROM ClinicalValidity
WHERE 
      age_valid = 0
   OR bmi_valid = 0
   OR systolic_valid = 0
   OR diastolic_valid = 0
   OR chol_valid = 0
   OR fbs_valid = 0
   OR hr_valid = 0
   OR los_valid = 0
   OR prev_adm_valid = 0
   OR cost_valid = 0;

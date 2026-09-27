WITH DuplicateCheck AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY 
                   patient_age, gender, bmi, systolic_bp, diastolic_bp, cholesterol_mg_dl,
                   fasting_blood_sugar, heart_rate_bpm, previous_admissions, admission_type,
                   primary_diagnosis, medication_adherence, length_of_stay_days,
                   treatment_cost_usd, readmission_30_days
               ORDER BY patient_age
           ) AS rn
    FROM healthcare_patients
)
SELECT *
FROM DuplicateCheck
WHERE rn > 1;

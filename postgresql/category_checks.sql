WITH CategoryCheck AS (
    SELECT *,
        CASE WHEN gender IN ('Male','Female') THEN 1 ELSE 0 END AS gender_valid,
        CASE WHEN admission_type IN ('Emergency','Elective','Urgent') THEN 1 ELSE 0 END AS admission_valid,
        CASE WHEN medication_adherence IN ('High','Medium','Low') THEN 1 ELSE 0 END AS adherence_valid,
        CASE WHEN readmission_30_days IN ('Yes','No') THEN 1 ELSE 0 END AS readmission_valid
    FROM healthcare_patients
)
SELECT *
FROM CategoryCheck
WHERE gender_valid = 0
   OR admission_valid = 0
   OR adherence_valid = 0
   OR readmission_valid = 0;

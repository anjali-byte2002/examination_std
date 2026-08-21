-- Standardization mapping for rgd_gold_ad.examination.exam_category
-- Source standard: examination_categorization standarad values.pdf
-- Matching is case-insensitive / trim-insensitive against the raw column.
-- Raw values not present in the mapping, or deliberately reviewed and left
-- unmapped (too generic / not an exam type / documentation boilerplate),
-- resolve to '' (blank) rather than being guessed at.
WITH category_map AS (
    SELECT 'Neurological' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'General Examination' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Cranial Nerves' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Test Results' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'General' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'DATA' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Mental Status Examination' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Lumbar Spine' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Orientation' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Cervical Spine/Neck' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'ENT/Respiratory' AS raw_category, 'Respiratory' AS std_category
    UNION ALL
    SELECT 'Functional Medicine' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neurologic Examination' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Hip or Thigh' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'DIAGNOSTIC WORKUP' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Mental Status' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Psychology' AS raw_category, 'Psychiatric/Behavioral' AS std_category
    UNION ALL
    SELECT 'Balance' AS raw_category, 'Vestibular/Balance' AS std_category
    UNION ALL
    SELECT 'Cardiovascular' AS raw_category, 'Cardiovascular' AS std_category
    UNION ALL
    SELECT 'Motor UPDRS' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'Dermatology' AS raw_category, 'Dermatology' AS std_category
    UNION ALL
    SELECT 'IMAGING' AS raw_category, 'Radiology/Imaging (General)' AS std_category
    UNION ALL
    SELECT 'Cervical Spine' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'SENSORY' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Psychiatric Medical Exam' AS raw_category, 'Psychiatric/Behavioral' AS std_category
    UNION ALL
    SELECT 'HEARING' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Shoulder or Upper Arm' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Wrist or Hand' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Ankle or Foot' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'zzExpanded Disability Status Scale (EDSS) in Multiple Sclerosis' AS raw_category, 'Functional/Disability Scales' AS std_category
    UNION ALL
    SELECT 'Knee or Shin' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Elbow or Forearm' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Gastroenterology' AS raw_category, 'Gastroenterology' AS std_category
    UNION ALL
    SELECT 'test' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Multiple Sclerosis' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'LAB WORK' AS raw_category, 'Laboratory' AS std_category
    UNION ALL
    SELECT 'Neck and back' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Thoracic Spine' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Cervical Dystonia:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Head and Neck' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Neurology Follow-Up' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Neurology Exam' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Mental Status Exam' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Neurological Examination' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'CQM Exceptions' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Infusion Flow Sheet' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Records Review' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'General Exam' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Social Work Note' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'MNT Assessment' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Registries' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'ALS Registry' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neck' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'EDSS/Neurostatus' AS raw_category, 'Functional/Disability Scales' AS std_category
    UNION ALL
    SELECT 'Mini Mental Status Exam' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'General Adult Exam' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Pain Management Detailed Exam' AS raw_category, 'Pain Management' AS std_category
    UNION ALL
    SELECT 'Pain Management Lower Extremity Exam' AS raw_category, 'Pain Management' AS std_category
    UNION ALL
    SELECT 'Pain Management Upper Extremity Exam' AS raw_category, 'Pain Management' AS std_category
    UNION ALL
    SELECT 'Hip/Pelvis' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Lower Leg' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Shoulder' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Brief Neurology Exam' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'COVID-19 Exam' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'PHYSICAL EXAMINATION' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Impression' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Prognostic' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'MMSE/Orientation' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'MMSE/Registration' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'MMSE/Attention and Calculation' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'MMSE/Recall' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'MMSE/Language' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Cognition Examination' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Data Review' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Cognitive Assessment Service Elements:' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Neuropsychology Testing' AS raw_category, 'Neuropsychological Testing' AS std_category
    UNION ALL
    SELECT 'CC37 Reviewed' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Flowsheet' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Examination' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Radiology' AS raw_category, 'Radiology/Imaging (General)' AS std_category
    UNION ALL
    SELECT 'Location' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Rationale for modalities and therapeutic procedures:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Assessment' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Activity Limitations and Participation Restrictions:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Short Term Goals:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Long Term Goals:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Treatment' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Start of Care/Date of Last Visit' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Reason for Discharge from Therapy:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Evaluation Status:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Status of Goals on Discharge:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Total Time Spent' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Spine-Lower Extremity Evaluation' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Clinical Judgement:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Testing Scores' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Total Time Spent --' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Katz Index of Independence in Activities of Daily Living' AS raw_category, 'Functional/Disability Scales' AS std_category
    UNION ALL
    SELECT 'MOCA Examination' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Ocular Examination' AS raw_category, 'Ophthalmological' AS std_category
    UNION ALL
    SELECT 'Musculoskeletal Examination' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Motor Examination' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Gait and Station' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Coordination' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Reflexes' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Ancillary Test Review' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Eyes' AS raw_category, 'Ophthalmological' AS std_category
    UNION ALL
    SELECT 'Evaluation' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Upper Extremity Evaluation' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Cervical Evaluation' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Disclaimer' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Impression/Assessment' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Plan/Suggestions' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Physician' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neurological Exam' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Fall Assessment Evaluation' AS raw_category, 'Functional/Disability Scales' AS std_category
    UNION ALL
    SELECT 'MMSE/TOTAL SCORE:' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Short Term Goals' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Long Term Goals' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Vestibular Evaluation' AS raw_category, 'Vestibular/Balance' AS std_category
    UNION ALL
    SELECT 'Food Aversions:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Beverage Intake:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Sleep:' AS raw_category, 'Sleep' AS std_category
    UNION ALL
    SELECT 'Nutrition and History' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'E/M Telehealth Audio' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'LSVT Evaluation' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'MMSE Examination' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Constitutional' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Eye Exam' AS raw_category, 'Ophthalmological' AS std_category
    UNION ALL
    SELECT 'Cardiovascular System' AS raw_category, 'Cardiovascular' AS std_category
    UNION ALL
    SELECT 'Musculoskeletal' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Sensation in the Upper and Lower Extremities' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Deep Tendon Reflexes Upper and Lower Extremities' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Relevant Data Reviewed' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'CC21 Physical Examination' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Neurological Examination - UPDRS Motor Scale' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'General:' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'HEENT:' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Mental Status:' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Cranial Nerves:' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Motor:' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'QUALITY MEASURES note for Alzheimer''s patients:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'EXAM' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'MOTOR' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'GAIT' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'DEEP TENDON REFLEXES' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'PATHOLOGICAL REFLEXES' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Abnormal Involuntary Movement Scale' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'Musculoskeletal - (Performed)' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Test the following Cranial Nerves' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Cardiovascular - (Performed)' AS raw_category, 'Cardiovascular' AS std_category
    UNION ALL
    SELECT '-' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Comprehensive Examination' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'Ankle / Foot' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Physical and Neurological Examination' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'NEUROLOGIC' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'General Physical Examination' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'MDS UPDRS Score Sheet' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'QUALITY MEASURES note for Epilepsy patients' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Test Review' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neurological - (Performed)' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Depression Screening' AS raw_category, 'Psychiatric/Behavioral' AS std_category
    UNION ALL
    SELECT 'RECORDS REVIEWED' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Vibration and Proprioception' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'postural tremor' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'QUALITY MEASURES note for Parkinson''s patients:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Data Summary:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Impressions and Recommendations' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neuro-Ophthalmology Examination' AS raw_category, 'Neuro-Ophthalmological' AS std_category
    UNION ALL
    SELECT 'Hallpike Exam:' AS raw_category, 'Vestibular/Balance' AS std_category
    UNION ALL
    SELECT 'GAD-7 Anxiety' AS raw_category, 'Psychiatric/Behavioral' AS std_category
    UNION ALL
    SELECT 'Medical Cannabis Physician Certification' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Acupuncture' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'ADHD Exam' AS raw_category, 'Psychiatric/Behavioral' AS std_category
    UNION ALL
    SELECT 'QUALITY MEASURES note for DSP' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Medical Cannabis Supplemental Certification' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Tetras' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'Genitourinary - Male' AS raw_category, 'Genitourinary' AS std_category
    UNION ALL
    SELECT 'Examination:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neck/Upper Limb' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Physical and Neurological' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Back' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Motor Upper Extremity' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Motor Lower Extremity' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Reflex Upper Extremity' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Reflex Lower Extremity' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Parkinsonian ROS' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'UMSARS UPDRS Scoresheet' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'Headache Impact Tool-6 (HIT-6)' AS raw_category, 'Headache/Migraine Assessment' AS std_category
    UNION ALL
    SELECT 'Head' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT '2018 Dementia measures - PQRS' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'E/M Telehealth' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Data Reviewed if Applicable' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Epworth Sleepiness Scale' AS raw_category, 'Sleep' AS std_category
    UNION ALL
    SELECT 'Left hip' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Bell''s Palsy Evaluation' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Higher Cortical function' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Short Term Goals Spine-Lower Extremity Evaluation:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Long Term Goals Spine-Lower Extremity Evaluation:' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neurological Examination - UPDRS Motor Scale Part III' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'Neurological Examination - UPDRS Motor Scale Part IV' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'Neurosurgery Examination' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Apathy Inventory' AS raw_category, 'Psychiatric/Behavioral' AS std_category
    UNION ALL
    SELECT 'Examination - Complete' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Review of Data' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Skin Exam' AS raw_category, 'Dermatology' AS std_category
    UNION ALL
    SELECT 'Montreal Cognitive Assessment' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'Neurovestibular Examination' AS raw_category, 'Vestibular/Balance' AS std_category
    UNION ALL
    SELECT 'Pediatric Neurological Examination' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Interpretation of Prior Test Performed' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Review of External Notes' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Functional Activities Questionnaire' AS raw_category, 'Functional/Disability Scales' AS std_category
    UNION ALL
    SELECT 'Lumbar Spine/Lower back' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Lower Limb/Lumbar' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Neurology Exam - full' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'neuro follow up' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Neurology follow up exam-basic -HA' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'cognitive impairment follow up' AS raw_category, 'Cognitive/Mental Status' AS std_category
    UNION ALL
    SELECT 'neuro comprehensive' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'botox - F/U headache' AS raw_category, 'Headache/Migraine Assessment' AS std_category
    UNION ALL
    SELECT 'botulinum toxin f/u' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Sleep-Valle' AS raw_category, 'Sleep' AS std_category
    UNION ALL
    SELECT 'tremor' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'PM&R Exam - Neurologic Patient' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Old Sleep' AS raw_category, 'Sleep' AS std_category
    UNION ALL
    SELECT 'PHYSICAL EXAM:' AS raw_category, 'General/Physical' AS std_category
    UNION ALL
    SELECT 'NEUROLOGICAL EXAM:' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'MRI findings' AS raw_category, 'Neurological (Imaging)' AS std_category
    UNION ALL
    SELECT 'Knee / Shin' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Shoulder / Upper arm' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Elbow/Arm' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Wrist / Hand' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'er' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Language Domains' AS raw_category, 'Speech-Language Pathology' AS std_category
    UNION ALL
    SELECT '~SLP Speech' AS raw_category, 'Speech-Language Pathology' AS std_category
    UNION ALL
    SELECT '~SLP Speech Intelligibility' AS raw_category, 'Speech-Language Pathology' AS std_category
    UNION ALL
    SELECT '~SLP Special Tests' AS raw_category, 'Speech-Language Pathology' AS std_category
    UNION ALL
    SELECT '~SLP Treatment Provided' AS raw_category, 'Speech-Language Pathology' AS std_category
    UNION ALL
    SELECT 'Genitourinary - Female' AS raw_category, 'Genitourinary' AS std_category
    UNION ALL
    SELECT 'Labs' AS raw_category, 'Laboratory' AS std_category
    UNION ALL
    SELECT '~SLP Therapeutic Interventions' AS raw_category, 'Speech-Language Pathology' AS std_category
    UNION ALL
    SELECT 'Clinical Assessment' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Voice Assessment' AS raw_category, 'Speech-Language Pathology' AS std_category
    UNION ALL
    SELECT 'Audiologic Evaluation' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Audiologic Recommendations' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Hearing Screening' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'NOA Diagnostics' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Hearing Device Selection' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Hearing Device Fitting' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Neuro' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Sensorimotor' AS raw_category, 'Neurological' AS std_category
    UNION ALL
    SELECT 'Equipment Inventory - Back-Up Processor' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Equipment Inventory - Primary Processor' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Replacement Equipment Requested' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Cochlear Implant Programming' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Urinalysis' AS raw_category, 'Laboratory' AS std_category
    UNION ALL
    SELECT 'Vestibular Recommendations' AS raw_category, 'Vestibular/Balance' AS std_category
    UNION ALL
    SELECT 'Vestibular Results' AS raw_category, 'Vestibular/Balance' AS std_category
    UNION ALL
    SELECT 'Neurotology Exam' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Diagnostic Studies' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Left hand' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Right hip' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'UPDRS' AS raw_category, 'Movement Disorder Rating Scales' AS std_category
    UNION ALL
    SELECT 'Cochlear Implant' AS raw_category, 'ENT/Audiological' AS std_category
    UNION ALL
    SELECT 'Office Procedure' AS raw_category, NULL AS std_category
    UNION ALL
    SELECT 'Impression/Plan' AS raw_category, NULL AS std_category
)
SELECT
    e.gold_row_id,
    e.ndid,
    e.exam_category                       AS raw_exam_category,
    COALESCE(m.std_category, '')          AS exam_category_std
FROM rgd_gold_ad.examination e
LEFT JOIN category_map m
    ON UPPER(TRIM(e.exam_category)) = UPPER(TRIM(m.raw_category))
;

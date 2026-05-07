# Artifacts Summary - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Analytics Observation Profile](StructureDefinition-analitics-observation-profile.md) | Laboratory/analytics observations for glucose, cholesterol, INR and related laboratory findings. The id preserves the original spelling used in the Python profile URL. |
| [Base Stroke Observation Profile](StructureDefinition-base-stroke-observation.md) | Base profile for stroke registry observations: subject and encounter required; status is normally final. |
| [Discharge MedicationRequest Profile](StructureDefinition-discharge-medication-request-profile.md) | MedicationRequest profile for medications prescribed at discharge, aligned with build_on_discharge_medicationRequest_profile(). |
| [Fever Observation Profile](StructureDefinition-fever-observation-profile.md) | Fever observation profile aligned with build_observation_fever(). |
| [Functional Score Observation Profile](StructureDefinition-functional-score-observation-profile.md) | Functional score profile for mRS, NIHSS, ASPECTS, GCS-like score categories, Hunt-Hess, ABCD2, CHA2DS2-VASc and THRIVE. |
| [Glasgow Coma Scale Observation Profile](StructureDefinition-glasgow-coma-scale-observation-profile.md) | GCS score/profile generated from build_observation_glasgow_coma_scale(). |
| [Glucose >= 10 Observation Profile](StructureDefinition-glucose-ge10-observation-profile.md) | Boolean indicator for glucose >= 10 mmol/L. |
| [Highest Hyperglycemia Value Observation Profile](StructureDefinition-highest-hyperglycemia-value-observation-profile.md) | Highest hyperglycemia value observation profile. |
| [Hospitalized Location Profile](StructureDefinition-hospitalized-location-profile.md) | Hospitalized location profile aligned with build_hospitalized_location(): Location.type stores admission department and extension stores care intensity. |
| [Hyperglycemia Observation Profile](StructureDefinition-hyperglycemia-observation-profile.md) | Hyperglycemia monitoring/check observations aligned with build_observation_hyperglycemia_measurement_checks(). |
| [Insulin on Hyperglycemia MedicationAdministration Profile](StructureDefinition-insulin-on-hyperglycemia-medicationAdministration-profile.md) | MedicationAdministration profile for insulin administered due to hyperglycemia. |
| [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md) | DiagnosticReport profile for thrombectomy outcome, especially mTICI score. |
| [Nimodipine MedicationAdministration Profile](StructureDefinition-nimodipine-medicationAdministration-profile.md) | MedicationAdministration profile for nimodipine in subarachnoid hemorrhage pathway. |
| [Paracetamol on Fever MedicationAdministration Profile](StructureDefinition-paracetamol-on-fever-medicationAdministration-profile.md) | MedicationAdministration profile for paracetamol given because of fever. |
| [Patient Ventilated Observation Profile](StructureDefinition-patient-ventilated-observation-profile.md) | Ventilation observation profile for post-acute/acute context. |
| [Post-Stroke Complication Condition Profile](StructureDefinition-post-stroke-complication-condition-profile.md) | Post-stroke complication Condition profile aligned with build_post_stroke_conditions(). |
| [Prior MedicationStatement Profile](StructureDefinition-prior-medication-statement-profile.md) | MedicationStatement profile for medication taken before stroke onset, aligned with build_before_onset_medicationStatement_profile(). |
| [RESQ BodyStructure Profile](StructureDefinition-resq-body-structure-profile.md) | BodyStructure profile for occluded arteries or anatomical structures, aligned with build_bodyStructure(). |
| [RESQ Location Profile](StructureDefinition-resq-location-profile.md) | Generic coded location profile aligned with build_location(). |
| [RESQ Patient Profile](StructureDefinition-resq-patient-profile.md) | Patient profile aligned with build_Patient(): identifier is required and sex/gender is captured with a SNOMED CT extension. Age is represented as an Observation in the ETL, not as a Patient extension. |
| [RESQ PractitionerRole Profile](StructureDefinition-resq-practitioner-role-profile.md) | PractitionerRole profile for recording performer type in swallowing screening and related procedures. |
| [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md) | Generic profile for specific imaging/procedure/clinical findings including mTICI, bleeding volume, carotid stenosis, occlusion and AF/flutter. |
| [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md) | Carotid endarterectomy Procedure aligned with build_endarterectomy_procedure(). |
| [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md) | Carotid imaging Procedure aligned with build_carotid_imaging_procedure(). |
| [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md) | Index stroke diagnosis profile aligned with build_stroke_diagnosis_condition_profile(). |
| [Stroke Encounter Profile](StructureDefinition-stroke-encounter-profile.md) | Index stroke encounter profile aligned with build_stroke_encounter_profile(). |
| [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md) | Imaging DiagnosticReport profile aligned with build_imaging_diagnostic_report(), build_carotid_arteries_imaging_diagnostic_report(), build_ct_mr_after_ivt_diagnostic_report() and build_follow_up_ct_mr_diagnostic_report(). |
| [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md) | Brain imaging Procedure aligned with build_imaging_procedure(). |
| [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md) | Generic MedicationAdministration profile for acute stroke treatment medications, including thrombolysis, anticoagulant reversal, IV antihypertensives and other administrations. |
| [Stroke Registry Organization Profile](StructureDefinition-stroke-registry-organization-profile.md) | Organization profile aligned with build_organization(): active=true, registry identifier and canonical hospital name. |
| [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md) | Thrombolysis and mechanical thrombectomy Procedure profile aligned with build_thrombolysis_procedure() and build_thrombectomy_procedure(). |
| [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md) | Risk factor Condition profile aligned with build_risk_factor_condition_profile(). |
| [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md) | Swallowing screening Procedure aligned with build_swallowing_screening_procedure(). |
| [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md) | Generic treatment/rehabilitation profile for ICH, SAH, CVT, craniectomy, therapy, smoking cessation and shunt procedures not given a dedicated meta.profile in the Python builders. |
| [Stroke VTE Prophylaxis Procedure Profile](StructureDefinition-stroke-vte-procedure-profile.md) | VTE prophylaxis Procedure profile aligned with build_vte_procedure(). |
| [TIA Clinical Symptoms Observation Profile](StructureDefinition-tia-clinical-symptoms-observation-profile.md) | TIA symptoms observation profile aligned with build_tia_clinical_symptomps_observation(). |
| [Three-Month Contact Communication Profile](StructureDefinition-three-month-communication-profile.md) | Communication profile for three-month follow-up contact, aligned with build_three_m_contact(). |
| [Three-Month Contact Mode Observation Profile](StructureDefinition-three-month-contact-mode-observation-profile.md) | Observation profile for contact mode at three-month follow-up. |
| [Three-Month Follow-up Appointment Profile](StructureDefinition-follow-up-appointment-profile.md) | Follow-up neurology appointment profile aligned with build_follow_up_appointment(). |
| [Timing Metric Observation Profile](StructureDefinition-timing-metric-observation-profile.md) | Timing/process metric profile for door-to-needle, door-to-groin, onset-to-door and related indicators. |
| [Vital Sign Observation Profile](StructureDefinition-vital-sign-observation-profile.md) | Blood pressure observation aligned with build_observation_vital_signs(). |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Assessment or medication timing](StructureDefinition-assessment-timing-ext.md) | Timing category used by medication-administration builders, e.g. insulin within one hour or paracetamol timing. The Python code contains a typo variant tecnomod-um-org; this IG normalizes to tecnomod-um.org. |
| [Discharge department or service](StructureDefinition-discharge-department-service-ext.md) | Department/service or facility type receiving the patient at discharge. |
| [EMS prenotification](StructureDefinition-ems-prenotification-ext.md) | Indicates whether emergency medical services prenotified the receiving hospital before arrival. |
| [First hospital for the stroke episode](StructureDefinition-first-hospital-ext.md) | Boolean flag indicating whether the Encounter corresponds to the first hospital attended for the index stroke episode. |
| [Gender represented with SNOMED CT](StructureDefinition-gender-snomed-ext.md) | Sex/gender value as a SNOMED CT CodeableConcept, matching build_Patient(). |
| [Hemorrhagic stroke bleeding reason](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.md) | Reason or underlying cause identified for hemorrhagic stroke. |
| [Hemorrhagic stroke bleeding reason found coded state](StructureDefinition-hemorrhagic-stroke-bleeding-reason-found-ext.md) | Coded state used when bleeding reason is not found/undetermined in the source model. |
| [Initial care intensity](StructureDefinition-initial-care-intensity-ext.md) | Initial care intensity for hospitalized location, e.g. ICU/stroke unit, monitored bed, or standard bed. |
| [Ischemic stroke etiology](StructureDefinition-ischemic-stroke-etiology-ext.md) | Etiology of ischemic stroke when known. |
| [Ischemic stroke etiology known/unknown coded state](StructureDefinition-ischemic-stroke-etiology-known-ext.md) | Coded state used when the Python builder represents unknown or undetermined ischemic stroke etiology. |
| [Observation timing context](StructureDefinition-observation-timing-context-ext.md) | Temporal/clinical context of an observation, such as admission, discharge, prestroke or three-month follow-up. Also supports boolean usage because build_observation_blood_volume currently writes a boolean post_acute_care value to this URL. |
| [Post-acute care required](StructureDefinition-post-acute-care-required-ext.md) | Boolean indicator used by Procedure builders to mark post-acute-care relevance. Semantically equivalent to required-post-acute-care-ext but kept because both URLs exist in the codebase. |
| [Procedure timing context](StructureDefinition-procedure-timing-context-ext.md) | Timing or phase context for procedure execution, such as acute/post-acute or specific screening window. |
| [Required post-acute care](StructureDefinition-required-post-acute-care-ext.md) | Boolean indicator that post-acute care is required or applicable to the resource context. Used by Encounter, Observation and MedicationAdministration builders. |
| [Wake-up stroke](StructureDefinition-wakeup-stroke-ext.md) | Boolean flag indicating that the stroke was first noticed after waking; onsetDateTime is then populated using the last-known-well/sleep timestamp in the builder. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AdherenceCodes ValueSet](ValueSet-adherence-codes-vs.md) | Allowed coded values for AdherenceCodes, generated from enum_models.py. |
| [AdmissionDepartment ValueSet](ValueSet-admission-department-vs.md) | Allowed coded values for AdmissionDepartment, generated from enum_models.py. |
| [AdmissionPathway ValueSet](ValueSet-admission-pathway-vs.md) | Allowed coded values for AdmissionPathway, generated from enum_models.py. |
| [AnaliticsCodes ValueSet](ValueSet-analitics-codes-vs.md) | Allowed coded values for AnaliticsCodes, generated from enum_models.py. |
| [AnticoagulantReversal ValueSet](ValueSet-anticoagulant-reversal-vs.md) | Allowed coded values for AnticoagulantReversal, generated from enum_models.py. |
| [AssessmentContext ValueSet](ValueSet-assessment-context-vs.md) | Allowed coded values for AssessmentContext, generated from enum_models.py. |
| [AtrialFibrillationOrFlutter ValueSet](ValueSet-atrial-fibrillation-or-flutter-vs.md) | Allowed coded values for AtrialFibrillationOrFlutter, generated from enum_models.py. |
| [BleedingReason ValueSet](ValueSet-bleeding-reason-vs.md) | Allowed coded values for BleedingReason, generated from enum_models.py. |
| [BodySites ValueSet](ValueSet-body-sites-vs.md) | Allowed coded values for BodySites, generated from enum_models.py. |
| [Bool ValueSet](ValueSet-bool-vs.md) | Allowed coded values for Bool, generated from enum_models.py. |
| [CarotidEndarterectomyTiming ValueSet](ValueSet-carotid-endarterectomy-timing-vs.md) | Allowed coded values for CarotidEndarterectomyTiming, generated from enum_models.py. |
| [CarotidStenosisLevel ValueSet](ValueSet-carotid-stenosis-level-vs.md) | Allowed coded values for CarotidStenosisLevel, generated from enum_models.py. |
| [ClinicalStatusCodes ValueSet](ValueSet-clinical-status-codes-vs.md) | Allowed coded values for ClinicalStatusCodes, generated from enum_models.py. |
| [DischargeDestination ValueSet](ValueSet-discharge-destination-vs.md) | Allowed coded values for DischargeDestination, generated from enum_models.py. |
| [DischargeFacilityDepartment ValueSet](ValueSet-discharge-facility-department-vs.md) | Allowed coded values for DischargeFacilityDepartment, generated from enum_models.py. |
| [DischargeFacilityType ValueSet](ValueSet-discharge-facility-type-vs.md) | Allowed coded values for DischargeFacilityType, generated from enum_models.py. |
| [DischargeMedication ValueSet](ValueSet-discharge-medication-vs.md) | Allowed coded values for DischargeMedication, generated from enum_models.py. |
| [FirstContactPlace ValueSet](ValueSet-first-contact-place-vs.md) | Allowed coded values for FirstContactPlace, generated from enum_models.py. |
| [FunctionalScore ValueSet](ValueSet-functional-score-vs.md) | Allowed coded values for FunctionalScore, generated from enum_models.py. |
| [GCSScore ValueSet](ValueSet-gcsscore-vs.md) | Allowed coded values for GCSScore, generated from enum_models.py. |
| [GlasgowComaScale ValueSet](ValueSet-glasgow-coma-scale-vs.md) | Allowed coded values for GlasgowComaScale, generated from enum_models.py. |
| [HemorrhagicTransformationType ValueSet](ValueSet-hemorrhagic-transformation-type-vs.md) | Allowed coded values for HemorrhagicTransformationType, generated from enum_models.py. |
| [HospitalizedIn ValueSet](ValueSet-hospitalized-in-vs.md) | Allowed coded values for HospitalizedIn, generated from enum_models.py. |
| [INRmode ValueSet](ValueSet-inrmode-vs.md) | Allowed coded values for INRmode, generated from enum_models.py. |
| [IchTreatment ValueSet](ValueSet-ich-treatment-vs.md) | Allowed coded values for IchTreatment, generated from enum_models.py. |
| [ImagingType ValueSet](ValueSet-imaging-type-vs.md) | Allowed coded values for ImagingType, generated from enum_models.py. |
| [InHospital ValueSet](ValueSet-in-hospital-vs.md) | Allowed coded values for InHospital, generated from enum_models.py. |
| [InsulinOnHyperglycemiaTiming ValueSet](ValueSet-insulin-on-hyperglycemia-timing-vs.md) | Allowed coded values for InsulinOnHyperglycemiaTiming, generated from enum_models.py. |
| [IvtApplicationDepartment ValueSet](ValueSet-ivt-application-department-vs.md) | Allowed coded values for IvtApplicationDepartment, generated from enum_models.py. |
| [IvtDrug ValueSet](ValueSet-ivt-drug-vs.md) | Allowed coded values for IvtDrug, generated from enum_models.py. |
| [Laterality ValueSet](ValueSet-laterality-vs.md) | Allowed coded values for Laterality, generated from enum_models.py. |
| [Locations ValueSet](ValueSet-locations-vs.md) | Allowed coded values for Locations, generated from enum_models.py. |
| [MRsScore ValueSet](ValueSet-mrs-score-vs.md) | Allowed coded values for MRsScore, generated from enum_models.py. |
| [MTiciScore ValueSet](ValueSet-mtici-score-vs.md) | Allowed coded values for MTiciScore, generated from enum_models.py. |
| [Medications ValueSet](ValueSet-medications-vs.md) | Allowed coded values for Medications, generated from enum_models.py. |
| [MimicsDiagnosis ValueSet](ValueSet-mimics-diagnosis-vs.md) | Allowed coded values for MimicsDiagnosis, generated from enum_models.py. |
| [Nimodipinetiming ValueSet](ValueSet-nimodipinetiming-vs.md) | Allowed coded values for Nimodipinetiming, generated from enum_models.py. |
| [NoAnticoagulantReason ValueSet](ValueSet-no-anticoagulant-reason-vs.md) | Allowed coded values for NoAnticoagulantReason, generated from enum_models.py. |
| [NoAnticoagulantReversalReason ValueSet](ValueSet-no-anticoagulant-reversal-reason-vs.md) | Allowed coded values for NoAnticoagulantReversalReason, generated from enum_models.py. |
| [NoIchTreatmentReason ValueSet](ValueSet-no-ich-treatment-reason-vs.md) | Allowed coded values for NoIchTreatmentReason, generated from enum_models.py. |
| [NoThrombectomyReason ValueSet](ValueSet-no-thrombectomy-reason-vs.md) | Allowed coded values for NoThrombectomyReason, generated from enum_models.py. |
| [NoThrombolysisReason ValueSet](ValueSet-no-thrombolysis-reason-vs.md) | Allowed coded values for NoThrombolysisReason, generated from enum_models.py. |
| [NotMedicationReason ValueSet](ValueSet-not-medication-reason-vs.md) | Allowed coded values for NotMedicationReason, generated from enum_models.py. |
| [ObservationMethods ValueSet](ValueSet-observation-methods-vs.md) | Allowed coded values for ObservationMethods, generated from enum_models.py. |
| [OccupationalTherapy ValueSet](ValueSet-occupational-therapy-vs.md) | Allowed coded values for OccupationalTherapy, generated from enum_models.py. |
| [ParacetamolOnFever ValueSet](ValueSet-paracetamol-on-fever-vs.md) | Allowed coded values for ParacetamolOnFever, generated from enum_models.py. |
| [ParacetamolOnFeverTiming ValueSet](ValueSet-paracetamol-on-fever-timing-vs.md) | Allowed coded values for ParacetamolOnFeverTiming, generated from enum_models.py. |
| [PerforationProcedures ValueSet](ValueSet-perforation-procedures-vs.md) | Allowed coded values for PerforationProcedures, generated from enum_models.py. |
| [PostAcuteCare ValueSet](ValueSet-post-acute-care-vs.md) | Allowed coded values for PostAcuteCare, generated from enum_models.py. |
| [PostNeurosurgeryImaging ValueSet](ValueSet-post-neurosurgery-imaging-vs.md) | Allowed coded values for PostNeurosurgeryImaging, generated from enum_models.py. |
| [PostRecanalizationImaging ValueSet](ValueSet-post-recanalization-imaging-vs.md) | Allowed coded values for PostRecanalizationImaging, generated from enum_models.py. |
| [PostStrokeComplications ValueSet](ValueSet-post-stroke-complications-vs.md) | Allowed coded values for PostStrokeComplications, generated from enum_models.py. |
| [PostStrokeProcedures ValueSet](ValueSet-post-stroke-procedures-vs.md) | Allowed coded values for PostStrokeProcedures, generated from enum_models.py. |
| [Procedure Timing Context ValueSet](ValueSet-procedure-timing-context-vs.md) | Allowed values for the Procedure timing context extension. |
| [ProcedureNotDoneReason ValueSet](ValueSet-procedure-not-done-reason-vs.md) | Allowed coded values for ProcedureNotDoneReason, generated from enum_models.py. |
| [RiskFactor ValueSet](ValueSet-risk-factor-vs.md) | Allowed coded values for RiskFactor, generated from enum_models.py. |
| [ScreeningPerformer ValueSet](ValueSet-screening-performer-vs.md) | Allowed coded values for ScreeningPerformer, generated from enum_models.py. |
| [Sex ValueSet](ValueSet-sex-vs.md) | Allowed coded values for Sex, generated from enum_models.py. |
| [SpecificFinding ValueSet](ValueSet-specific-finding-vs.md) | Allowed coded values for SpecificFinding, generated from enum_models.py. |
| [StrokeCircumstance ValueSet](ValueSet-stroke-circumstance-vs.md) | Allowed coded values for StrokeCircumstance, generated from enum_models.py. |
| [StrokeEtiology ValueSet](ValueSet-stroke-etiology-vs.md) | Allowed coded values for StrokeEtiology, generated from enum_models.py. |
| [StrokeEtiologyOther ValueSet](ValueSet-stroke-etiology-other-vs.md) | Allowed coded values for StrokeEtiologyOther, generated from enum_models.py. |
| [StrokeType ValueSet](ValueSet-stroke-type-vs.md) | Allowed coded values for StrokeType, generated from enum_models.py. |
| [SwallowingScreeningDone ValueSet](ValueSet-swallowing-screening-done-vs.md) | Allowed coded values for SwallowingScreeningDone, generated from enum_models.py. |
| [SwallowingScreeningTiming ValueSet](ValueSet-swallowing-screening-timing-vs.md) | Allowed coded values for SwallowingScreeningTiming, generated from enum_models.py. |
| [SwallowingScreeningType ValueSet](ValueSet-swallowing-screening-type-vs.md) | Allowed coded values for SwallowingScreeningType, generated from enum_models.py. |
| [TecnetplaseBrand ValueSet](ValueSet-tecnetplase-brand-vs.md) | Allowed coded values for TecnetplaseBrand, generated from enum_models.py. |
| [ThreeMonthContactMode ValueSet](ValueSet-three-month-contact-mode-vs.md) | Allowed coded values for ThreeMonthContactMode, generated from enum_models.py. |
| [ThrombectomyComplications ValueSet](ValueSet-thrombectomy-complications-vs.md) | Allowed coded values for ThrombectomyComplications, generated from enum_models.py. |
| [TiaClinicalSymptoms ValueSet](ValueSet-tia-clinical-symptoms-vs.md) | Allowed coded values for TiaClinicalSymptoms, generated from enum_models.py. |
| [TiaSymptomDuration ValueSet](ValueSet-tia-symptom-duration-vs.md) | Allowed coded values for TiaSymptomDuration, generated from enum_models.py. |
| [TimingMetricCodes ValueSet](ValueSet-timing-metric-codes-vs.md) | Allowed coded values for TimingMetricCodes, generated from enum_models.py. |
| [UnitofMeasurement ValueSet](ValueSet-unitof-measurement-vs.md) | Allowed coded values for UnitofMeasurement, generated from enum_models.py. |
| [VitalSigns ValueSet](ValueSet-vital-signs-vs.md) | Allowed coded values for VitalSigns, generated from enum_models.py. |
| [VteProcedures ValueSet](ValueSet-vte-procedures-vs.md) | Allowed coded values for VteProcedures, generated from enum_models.py. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AnalyticsCodesCs CodeSystem](CodeSystem-analytics-codes-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/analytics-codes-cs. |
| [AssessmentContextCs CodeSystem](CodeSystem-assessment-context-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/assessment-context-cs. |
| [BrainImagingTypeCs CodeSystem](CodeSystem-brain-imaging-type-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/brain-imaging-type-cs. |
| [CarotidEndarterectomyTimingCs CodeSystem](CodeSystem-carotid-endarterectomy-timing-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/carotid-endarterectomy-timing-cs. |
| [DischargeDeptCs CodeSystem](CodeSystem-discharge-dept-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-dept-cs. |
| [DischargeMedicationCs CodeSystem](CodeSystem-discharge-medication-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-medication-cs. |
| [FirstContactPlaceCs CodeSystem](CodeSystem-first-contact-place-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/first-contact-place-cs. |
| [FunctionalScoreCs CodeSystem](CodeSystem-functional-score-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/functional-score-cs. |
| [HemorrhagicStrokeBleedingReasonCs CodeSystem](CodeSystem-hemorrhagic-stroke-bleeding-reason-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/hemorrhagic-stroke-bleeding-reason-cs. |
| [HemorrhagicTransformationTypeCs CodeSystem](CodeSystem-hemorrhagic-transformation-type-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/hemorrhagic-transformation-type-cs. |
| [IchTreatmentCs CodeSystem](CodeSystem-ich-treatment-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/ich-treatment-cs. |
| [InitialCareIntensityCs CodeSystem](CodeSystem-initial-care-intensity-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/initial-care-intensity-cs. |
| [InsulinHyperglycemiaTimeCs CodeSystem](CodeSystem-insulin-hyperglycemia-time-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs. |
| [MedicationCs CodeSystem](CodeSystem-medication-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/medication-cs. |
| [MrsScoreCs CodeSystem](CodeSystem-mrs-score-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mrs-score-cs. |
| [MticiCodeCs CodeSystem](CodeSystem-mtici-code-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mtici-code-cs. |
| [MticiScoreCs CodeSystem](CodeSystem-mtici-score-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mtici-score-cs. |
| [NotMedicationReasonCs CodeSystem](CodeSystem-not-medication-reason-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/not-medication-reason-cs. |
| [OldInfarctCs CodeSystem](CodeSystem-old-infarct-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/old-infarct-cs. |
| [PerfusionVolumeCs CodeSystem](CodeSystem-perfusion-volume-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/perfusion-volume-cs. |
| [ProcedureTimingContextCs CodeSystem](CodeSystem-procedure-timing-context-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs. |
| [RiskFactorCs CodeSystem](CodeSystem-risk-factor-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/risk-factor-cs. |
| [SpecificFindingCs CodeSystem](CodeSystem-specific-finding-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/specific-finding-cs. |
| [StrokeArrivalModeCs CodeSystem](CodeSystem-stroke-arrival-mode-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-arrival-mode-cs. |
| [StrokeCircumstanceCodesCs CodeSystem](CodeSystem-stroke-circumstance-codes-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-circumstance-codes-cs. |
| [StrokeDischargeDestinationCs CodeSystem](CodeSystem-stroke-discharge-destination-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs. |
| [StrokeEtiologyCs CodeSystem](CodeSystem-stroke-etiology-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-cs. |
| [StrokeEtiologyOtherCs CodeSystem](CodeSystem-stroke-etiology-other-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-other-cs. |
| [StrokeMimicsDiagnosisCs CodeSystem](CodeSystem-stroke-mimics-diagnosis-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-mimics-diagnosis-cs. |
| [StrokePostStrokeComplicationCs CodeSystem](CodeSystem-stroke-post-stroke-complication-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs. |
| [StrokeProcNotDoneReasonCs CodeSystem](CodeSystem-stroke-proc-not-done-reason-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-proc-not-done-reason-cs. |
| [SwallowProceduresCs CodeSystem](CodeSystem-swallow-procedures-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/swallow-procedures-cs. |
| [SwallowScreenTimeCs CodeSystem](CodeSystem-swallow-screen-time-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/swallow-screen-time-cs. |
| [SymptomsCs CodeSystem](CodeSystem-symptoms-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/symptoms-cs. |
| [TenecteplaseBrandCs CodeSystem](CodeSystem-tenecteplase-brand-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/tenecteplase-brand-cs. |
| [ThreeMonthContactModeCs CodeSystem](CodeSystem-three-month-contact-mode-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/three-month-contact-mode-cs. |
| [ThrombectomyComplicationsCs CodeSystem](CodeSystem-thrombectomy-complications-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/thrombectomy-complications-cs. |
| [TiaSymptomDurationCs CodeSystem](CodeSystem-tia-symptom-duration-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs. |
| [TimingCs CodeSystem](CodeSystem-timing-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/timing-cs. |
| [TimingMetricCodesCs CodeSystem](CodeSystem-timing-metric-codes-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/timing-metric-codes-cs. |
| [VteProceduresCs CodeSystem](CodeSystem-vte-procedures-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/vte-procedures-cs. |
| [YesNoNotRequiredCs CodeSystem](CodeSystem-yes-no-not-required-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/yes-no-not-required-cs. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [ExampleDoorToNeedle](Observation-ExampleDoorToNeedle.md) |
| [ExampleRESQPatient](Patient-ExampleRESQPatient.md) |
| [ExampleStrokeDiagnosis](Condition-ExampleStrokeDiagnosis.md) |
| [ExampleStrokeEncounter](Encounter-ExampleStrokeEncounter.md) |


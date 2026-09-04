# Artifacts Summary - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Analytics Observation Profile](StructureDefinition-analitics-observation-profile.md) | Laboratory/analytics observation profile for glucose, cholesterol, INR and related findings. The id preserves the original spelling used in the Python profile URL. |
| [Anticoagulant Reversal MedicationAdministration Profile](StructureDefinition-anticoagulant-reversal-medication-administration-profile.md) | MedicationAdministration profile for anticoagulant reversal treatment in the acute stroke pathway, including completed and not-done reversal administrations. |
| [Appointment Management Observation Profile](StructureDefinition-appointment-management-observation-profile.md) | Observation profile for recording whether a three-month follow-up appointment was scheduled or attended. |
| [Base Stroke Observation Profile](StructureDefinition-base-stroke-observation.md) | Base profile for RES-Q stroke observations. It requires final status, patient, encounter and observation code so derived profiles share a consistent registry context. |
| [Discharge MedicationRequest Profile](StructureDefinition-discharge-medication-request-profile.md) | MedicationRequest profile for medications prescribed or recommended at discharge after the index stroke encounter. |
| [Fever Observation Profile](StructureDefinition-fever-observation-profile.md) | Observation profile for fever presence or temperature values during the stroke pathway. |
| [Functional Score Observation Profile](StructureDefinition-functional-score-observation-profile.md) | Observation profile for functional or severity scores such as mRS, NIHSS, ASPECTS, Hunt-Hess, ABCD2, CHA2DS2-VASc and THRIVE. |
| [Glasgow Coma Scale Observation Profile](StructureDefinition-glasgow-coma-scale-observation-profile.md) | Specialized functional score profile for Glasgow Coma Scale component values captured by the registry. |
| [Glasgow Coma Score Observation Profile](StructureDefinition-glasgow-coma-score-observation-profile.md) | Specialized functional score profile for Glasgow Coma Score values captured by the registry. |
| [Glucose >= 10 Observation Profile](StructureDefinition-glucose-ge10-observation-profile.md) | Boolean observation profile indicating whether glucose was greater than or equal to 10 mmol/L. |
| [Highest Hyperglycemia Value Observation Profile](StructureDefinition-highest-hyperglycemia-value-observation-profile.md) | Observation profile for the highest recorded hyperglycemia value in the relevant stroke care interval. |
| [Hospitalized Location Profile](StructureDefinition-hospitalized-location-profile.md) | Hospitalized location profile aligned with the admission department and initial care intensity captured by the RES-Q source model. |
| [Hyperglycemia Observation Profile](StructureDefinition-hyperglycemia-observation-profile.md) | Observation profile for hyperglycemia monitoring, checks and measured values. |
| [Insulin on Hyperglycemia MedicationAdministration Profile](StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.md) | MedicationAdministration profile for insulin administered in response to hyperglycemia. |
| [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md) | DiagnosticReport profile for thrombectomy outcome, especially mTICI reperfusion results. |
| [Nimodipine MedicationAdministration Profile](StructureDefinition-nimodipine-medication-administration-profile.md) | MedicationAdministration profile for nimodipine in the subarachnoid hemorrhage pathway. |
| [No Anticoagulant Discharge Reason Observation Profile](StructureDefinition-no-anticoagulant-discharge-reason-observation-profile.md) | Observation profile for recording the reason for not prescribing anticoagulants at discharge after ischemic stroke or TIA. |
| [Paracetamol on Fever MedicationAdministration Profile](StructureDefinition-paracetamol-on-fever-medication-administration-profile.md) | MedicationAdministration profile for paracetamol administered because of fever. |
| [Patient Ventilated Observation Profile](StructureDefinition-patient-ventilated-observation-profile.md) | Observation profile for recording whether the patient was ventilated in acute or post-acute care. |
| [Post-Stroke Complication Condition Profile](StructureDefinition-post-stroke-complication-condition-profile.md) | Condition profile for complications occurring after the index stroke, including complications relevant to post-acute care and registry outcome tracking. |
| [Prior MedicationStatement Profile](StructureDefinition-prior-medication-statement-profile.md) | MedicationStatement profile for medication taken before stroke onset, including adherence state when captured by the registry. |
| [RESQ BodyStructure Profile](StructureDefinition-resq-body-structure-profile.md) | BodyStructure profile for anatomical structures relevant to stroke, such as occluded arteries, stenosis sites and laterality-specific findings. |
| [RESQ Location Profile](StructureDefinition-resq-location-profile.md) | Generic coded location profile used by registry builders when the important information is the type of location or service rather than a fully described physical site. |
| [RESQ Patient Profile](StructureDefinition-resq-patient-profile.md) | Patient profile for RES-Q stroke registry submissions. The registry patient is intentionally pseudonymized: the profile requires a stable registry identifier and represents sex/gender using a SNOMED CT coded extension because the source ETL does not populate Patient.gender. Age is represented as an Observation in the registry model rather than as a Patient extension. |
| [RESQ PractitionerRole Profile](StructureDefinition-resq-practitioner-role-profile.md) | PractitionerRole profile for recording the type of clinician or professional performing swallowing screening and related pathway activities. |
| [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md) | Composition profile for the RESQ Stroke Discharge Patient Summary document. It assembles the patient, index stroke encounter and clinically relevant registry resources into a navigable FHIR R5 discharge summary. |
| [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md) | Observation profile for specific stroke-related clinical, imaging and procedural findings including mTICI, bleeding volume, carotid stenosis, artery occlusion, atrial fibrillation/flutter and post-treatment findings. |
| [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md) | Procedure profile for carotid endarterectomy and its timing window in the RES-Q pathway. |
| [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md) | Procedure profile for carotid imaging used in post-stroke assessment. |
| [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md) | Condition profile for the index stroke diagnosis. It captures stroke type, onset timing, body site, diagnostic evidence and stroke-specific classification extensions such as ischemic etiology, hemorrhagic bleeding reason and wake-up stroke status. |
| [Stroke Encounter Profile](StructureDefinition-stroke-encounter-profile.md) | Index encounter for an acute stroke episode in the RES-Q registry. It records the patient, completed encounter state, admission and discharge pathway information, hospital locations, first-hospital status, EMS prenotification and post-acute-care applicability. |
| [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md) | DiagnosticReport profile for brain, carotid and follow-up imaging reports in the stroke pathway. |
| [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md) | Procedure profile for brain imaging performed in the stroke pathway, with optional report linkage and timing context. |
| [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md) | Generic MedicationAdministration profile for acute stroke treatment medications, including thrombolysis, anticoagulant reversal, IV antihypertensives and other administrations. |
| [Stroke Registry Organization Profile](StructureDefinition-stroke-registry-organization-profile.md) | Organization profile for hospitals or registry participants contributing RES-Q stroke data. The profile requires an active organization, a display name and a registry-scoped identifier. |
| [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md) | Procedure profile for acute reperfusion interventions, including thrombolysis and mechanical thrombectomy. It supports reason, not-done reason, location, occurrence, complications and timing context. |
| [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md) | Condition profile for pre-existing or episode-relevant risk factors captured in the RES-Q registry. |
| [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md) | Procedure profile for swallowing screening, including screening type, not-done reason, performer role and timing context. |
| [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md) | Generic treatment and rehabilitation profile for ICH, SAH, CVT, craniectomy, therapy, smoking cessation and shunt procedures not given a dedicated meta.profile in the Python builders. |
| [Stroke VTE Prophylaxis Procedure Profile](StructureDefinition-stroke-vte-procedure-profile.md) | Procedure profile for venous thromboembolism prophylaxis used in the stroke pathway. |
| [Systolic Blood Pressure Highest Value Observation Profile](StructureDefinition-highest-systolic-blood-pressure-value-observation-profile.md) | Observation profile for the highest recorded systolic blood pressure value in the relevant stroke care interval. |
| [TIA Clinical Symptoms Observation Profile](StructureDefinition-tia-clinical-symptoms-observation-profile.md) | Observation profile for TIA clinical symptoms and their recorded values. |
| [Tenecteplase Brand Medication Profile](StructureDefinition-tenecteplase-brand-medication-profile.md) | Medication profile for tenecteplase with a specific brand name, used in the RES-Q registry to capture the use of tenecteplase in stroke treatment. |
| [Three-Month Contact Communication Profile](StructureDefinition-three-month-communication-profile.md) | Communication profile for recording contact with the patient or caregiver at approximately three months after stroke. |
| [Three-Month Contact Mode Observation Profile](StructureDefinition-three-month-contact-mode-observation-profile.md) | Observation profile for the modality used to obtain three-month follow-up information. |
| [Three-Month Follow-up Appointment Profile](StructureDefinition-follow-up-appointment-profile.md) | Appointment profile for planned or recorded three-month neurology follow-up after the index stroke episode. |
| [Timing Metric Observation Profile](StructureDefinition-timing-metric-observation-profile.md) | Observation profile for stroke time metrics and process indicators such as door-to-needle, door-to-groin, onset-to-door and related measures. |
| [Vital Sign Observation Profile](StructureDefinition-vital-sign-observation-profile.md) | Observation profile for vital signs in the acute stroke pathway, especially blood pressure components. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Assessment or medication timing](StructureDefinition-assessment-timing-ext.md) | Timing category used by medication-administration builders, e.g. insulin within one hour or paracetamol timing. The Python code contains a typo variant tecnomod-um-org; this IG normalizes it to the qualityregistry.org canonical. |
| [Discharge department or service](StructureDefinition-discharge-department-service-ext.md) | Department, unit or service receiving the patient at discharge. |
| [Discharge facility type](StructureDefinition-discharge-facility-type-ext.md) | Type of facility or transfer destination receiving the patient at discharge. |
| [EMS prenotification](StructureDefinition-ems-prenotification-ext.md) | Indicates whether emergency medical services prenotified the receiving hospital before arrival. |
| [First hospital for the stroke episode](StructureDefinition-first-hospital-ext.md) | Boolean flag indicating whether the Encounter corresponds to the first hospital attended for the index stroke episode. |
| [Gender represented with SNOMED CT](StructureDefinition-gender-snomed-ext.md) | Sex/gender value as a SNOMED CT CodeableConcept, matching build_Patient(). |
| [Hemorrhagic stroke bleeding reason](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.md) | Reason or underlying cause identified for hemorrhagic stroke, including undetermined when no reason is found. |
| [Initial care intensity](StructureDefinition-initial-care-intensity-ext.md) | Initial care intensity for hospitalized location, e.g. ICU/stroke unit, monitored bed, or standard bed. |
| [Ischemic stroke etiology](StructureDefinition-ischemic-stroke-etiology-ext.md) | Etiology of ischemic stroke, including undetermined when the etiology is not known. |
| [Observation timing context](StructureDefinition-observation-timing-context-ext.md) | Temporal/clinical context of an observation, such as admission, discharge, prestroke or three-month follow-up. Also supports boolean usage because build_observation_blood_volume currently writes a boolean post_acute_care value to this URL. |
| [Post-acute care required](StructureDefinition-post-acute-care-required-ext.md) | Boolean indicator used by Procedure builders to mark post-acute-care relevance. Semantically equivalent to required-post-acute-care-ext but kept because both URLs exist in the codebase. |
| [Procedure timing context](StructureDefinition-procedure-timing-context-ext.md) | Timing or phase context for procedure execution, such as acute/post-acute or specific screening window. |
| [Required post-acute care](StructureDefinition-required-post-acute-care-ext.md) | Boolean indicator that post-acute care is required or applicable to the resource context. Used by Encounter, Observation and MedicationAdministration builders. |
| [Wake-up stroke](StructureDefinition-wakeup-stroke-ext.md) | Boolean flag indicating that the stroke was first noticed after waking; onsetDateTime is then populated using the last-known-well/sleep timestamp in the builder. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AdherenceCodes ValueSet](ValueSet-adherence-codes-vs.md) | Allowed coded values for AdherenceCodes |
| [AdmissionDepartment ValueSet](ValueSet-admission-department-vs.md) | Allowed coded values for AdmissionDepartment |
| [AdmissionPathway ValueSet](ValueSet-admission-pathway-vs.md) | Allowed coded values for AdmissionPathway |
| [AnaliticsCodes ValueSet](ValueSet-analitics-codes-vs.md) | Allowed coded values for AnaliticsCodes |
| [AnticoagulantReversal ValueSet](ValueSet-anticoagulant-reversal-vs.md) | Allowed coded values for AnticoagulantReversal |
| [AssessmentContext ValueSet](ValueSet-assessment-context-vs.md) | Allowed coded values for AssessmentContext |
| [AtrialFibrillationOrFlutter ValueSet](ValueSet-atrial-fibrillation-or-flutter-vs.md) | Allowed coded values for AtrialFibrillationOrFlutter |
| [BleedingReason ValueSet](ValueSet-bleeding-reason-vs.md) | Allowed coded values for BleedingReason |
| [BodySites ValueSet](ValueSet-body-sites-vs.md) | Allowed coded values for BodySites |
| [Bool ValueSet](ValueSet-bool-vs.md) | Allowed coded values for Bool |
| [CarotidEndarterectomyTiming ValueSet](ValueSet-carotid-endarterectomy-timing-vs.md) | Allowed coded values for CarotidEndarterectomyTiming |
| [CarotidStenosisLevel ValueSet](ValueSet-carotid-stenosis-level-vs.md) | Allowed coded values for CarotidStenosisLevel |
| [ClinicalStatusCodes ValueSet](ValueSet-clinical-status-codes-vs.md) | Allowed coded values for ClinicalStatusCodes |
| [DischargeDestination ValueSet](ValueSet-discharge-destination-vs.md) | Allowed coded values for DischargeDestination |
| [DischargeFacilityDepartment ValueSet](ValueSet-discharge-facility-department-vs.md) | Allowed coded values for DischargeFacilityDepartment |
| [DischargeFacilityType ValueSet](ValueSet-discharge-facility-type-vs.md) | Allowed coded values for DischargeFacilityType |
| [FirstContactPlace ValueSet](ValueSet-first-contact-place-vs.md) | Allowed coded values for FirstContactPlace |
| [FunctionalScore ValueSet](ValueSet-functional-score-vs.md) | Allowed coded values for FunctionalScore |
| [GCSScore ValueSet](ValueSet-gcsscore-vs.md) | Allowed coded values for GCSScore |
| [GlasgowComaScale ValueSet](ValueSet-glasgow-coma-scale-vs.md) | Allowed coded values for GlasgowComaScale |
| [HemorrhagicTransformationType ValueSet](ValueSet-hemorrhagic-transformation-type-vs.md) | Allowed coded values for HemorrhagicTransformationType |
| [HospitalizedIn ValueSet](ValueSet-hospitalized-in-vs.md) | Allowed coded values for HospitalizedIn |
| [INRmode ValueSet](ValueSet-inrmode-vs.md) | Allowed coded values for INRmode |
| [ImagingType ValueSet](ValueSet-imaging-type-vs.md) | Allowed coded values for ImagingType |
| [InHospital ValueSet](ValueSet-in-hospital-vs.md) | Allowed coded values for InHospital |
| [InsulinOnHyperglycemiaTiming ValueSet](ValueSet-insulin-on-hyperglycemia-timing-vs.md) | Allowed coded values for InsulinOnHyperglycemiaTiming |
| [IvtApplicationDepartment ValueSet](ValueSet-ivt-application-department-vs.md) | Allowed coded values for IvtApplicationDepartment |
| [IvtDrug ValueSet](ValueSet-ivt-drug-vs.md) | Allowed coded values for IvtDrug |
| [Laterality ValueSet](ValueSet-laterality-vs.md) | Allowed coded values for Laterality |
| [Locations ValueSet](ValueSet-locations-vs.md) | Allowed coded values for Locations |
| [MRsScore ValueSet](ValueSet-mrs-score-vs.md) | Allowed coded values for MRsScore |
| [MTiciScore ValueSet](ValueSet-mtici-score-vs.md) | Allowed coded values for MTiciScore |
| [ManagementAppointment ValueSet](ValueSet-management-appointment-vs.md) | Allowed coded values for ManagementAppointment |
| [Medications ValueSet](ValueSet-medications-vs.md) | Allowed coded values for Medications |
| [MimicsDiagnosis ValueSet](ValueSet-mimics-diagnosis-vs.md) | Allowed coded values for MimicsDiagnosis |
| [Nimodipinetiming ValueSet](ValueSet-nimodipinetiming-vs.md) | Allowed coded values for Nimodipinetiming |
| [NotMedicationReason ValueSet](ValueSet-not-medication-reason-vs.md) | Allowed coded values for NotMedicationReason |
| [OccupationalTherapy ValueSet](ValueSet-occupational-therapy-vs.md) | Allowed coded values for OccupationalTherapy |
| [ParacetamolOnFever ValueSet](ValueSet-paracetamol-on-fever-vs.md) | Allowed coded values for ParacetamolOnFever |
| [ParacetamolOnFeverTiming ValueSet](ValueSet-paracetamol-on-fever-timing-vs.md) | Allowed coded values for ParacetamolOnFeverTiming |
| [PerforationProcedures ValueSet](ValueSet-perforation-procedures-vs.md) | Allowed coded values for PerforationProcedures |
| [PostAcuteCare ValueSet](ValueSet-post-acute-care-vs.md) | Allowed coded values for PostAcuteCare |
| [PostNeurosurgeryImaging ValueSet](ValueSet-post-neurosurgery-imaging-vs.md) | Allowed coded values for PostNeurosurgeryImaging |
| [PostRecanalizationImaging ValueSet](ValueSet-post-recanalization-imaging-vs.md) | Allowed coded values for PostRecanalizationImaging |
| [PostStrokeComplications ValueSet](ValueSet-post-stroke-complications-vs.md) | Allowed coded values for PostStrokeComplications |
| [PostStrokeProcedures ValueSet](ValueSet-post-stroke-procedures-vs.md) | Allowed coded values for PostStrokeProcedures |
| [PostStrokeProcedures ValueSet](ValueSet-stroke-treatment-procedure-vs.md) | Allowed coded values for PostStrokeProcedures |
| [Procedure Timing Context ValueSet](ValueSet-procedure-timing-context-vs.md) | Allowed values for the Procedure timing context extension. |
| [ProcedureNotDoneReason ValueSet](ValueSet-procedure-not-done-reason-vs.md) | Allowed coded values for ProcedureNotDoneReason |
| [RESQ Stroke Discharge Document Type ValueSet](ValueSet-resq-stroke-discharge-document-type-vs.md) | Allowed document type code for the RESQ Stroke Discharge Patient Summary Composition. |
| [RESQ Stroke Discharge Section Code ValueSet](ValueSet-resq-stroke-discharge-section-code-vs.md) | Allowed section codes for the RESQ Stroke Discharge Patient Summary Composition. |
| [RiskFactor ValueSet](ValueSet-risk-factor-vs.md) | Allowed coded values for RiskFactor |
| [ScreeningPerformer ValueSet](ValueSet-screening-performer-vs.md) | Allowed coded values for ScreeningPerformer |
| [Sex ValueSet](ValueSet-sex-vs.md) | Allowed coded values for Sex |
| [Specific Finding Value ValueSet](ValueSet-specific-finding-value-vs.md) | Allowed coded values used as Observation.valueCodeableConcept for specific finding observations. |
| [SpecificFinding ValueSet](ValueSet-specific-finding-vs.md) | Allowed coded values for specific stroke-related findings. |
| [Stroke Diagnosis Code ValueSet](ValueSet-stroke-diagnosis-code-vs.md) | Allowed coded values for final stroke episode diagnosis, including stroke types and stroke mimics. |
| [StrokeCircumstance ValueSet](ValueSet-stroke-circumstance-vs.md) | Allowed coded values for StrokeCircumstance |
| [StrokeEtiology ValueSet](ValueSet-stroke-etiology-vs.md) | Allowed coded values for StrokeEtiology |
| [StrokeEtiologyOther ValueSet](ValueSet-stroke-etiology-other-vs.md) | Allowed coded values for StrokeEtiologyOther |
| [StrokeTreatment ValueSet](ValueSet-stroke-treatment-vs.md) | Allowed coded values for StrokeTreatment |
| [StrokeType ValueSet](ValueSet-stroke-type-vs.md) | Allowed coded values for StrokeType |
| [SwallowingScreeningDone ValueSet](ValueSet-swallowing-screening-done-vs.md) | Allowed coded values for SwallowingScreeningDone |
| [SwallowingScreeningTiming ValueSet](ValueSet-swallowing-screening-timing-vs.md) | Allowed coded values for SwallowingScreeningTiming |
| [SwallowingScreeningType ValueSet](ValueSet-swallowing-screening-type-vs.md) | Allowed coded values for SwallowingScreeningType |
| [TenecteplaseBrand ValueSet](ValueSet-tenecteplase-brand-vs.md) | Allowed coded values for TenecteplaseBrand |
| [ThreeMonthContactMode ValueSet](ValueSet-three-month-contact-mode-vs.md) | Allowed coded values for ThreeMonthContactMode |
| [ThrombectomyComplications ValueSet](ValueSet-thrombectomy-complications-vs.md) | Allowed coded values for ThrombectomyComplications |
| [TiaClinicalSymptoms ValueSet](ValueSet-tia-clinical-symptoms-vs.md) | Allowed coded values for TiaClinicalSymptoms |
| [TiaSymptomDuration ValueSet](ValueSet-tia-symptom-duration-vs.md) | Allowed coded values for TiaSymptomDuration |
| [TimingMetricCodes ValueSet](ValueSet-timing-metric-codes-vs.md) | Allowed coded values for TimingMetricCodes |
| [UnitofMeasurement ValueSet](ValueSet-unitof-measurement-vs.md) | Allowed coded values for UnitofMeasurement |
| [VitalSigns ValueSet](ValueSet-vital-signs-vs.md) | Allowed coded values for VitalSigns |
| [VteProcedures ValueSet](ValueSet-vte-procedures-vs.md) | Allowed coded values for VteProcedures |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AnalyticsCodesCs CodeSystem](CodeSystem-analytics-codes-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/analytics-codes-cs. |
| [AssessmentContextCs CodeSystem](CodeSystem-assessment-context-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/assessment-context-cs. |
| [BrainImagingTypeCs CodeSystem](CodeSystem-brain-imaging-type-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/brain-imaging-type-cs. |
| [CarotidEndarterectomyTimingCs CodeSystem](CodeSystem-carotid-endarterectomy-timing-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/carotid-endarterectomy-timing-cs. |
| [DischargeDeptCs CodeSystem](CodeSystem-discharge-dept-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/discharge-dept-cs. |
| [DischargeMedicationCs CodeSystem](CodeSystem-discharge-medication-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/discharge-medication-cs. |
| [FirstContactPlaceCs CodeSystem](CodeSystem-first-contact-place-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/first-contact-place-cs. |
| [FunctionalScoreCs CodeSystem](CodeSystem-functional-score-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/functional-score-cs. |
| [HemorrhagicStrokeBleedingReasonCs CodeSystem](CodeSystem-hemorrhagic-stroke-bleeding-reason-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/hemorrhagic-stroke-bleeding-reason-cs. |
| [HemorrhagicTransformationTypeCs CodeSystem](CodeSystem-hemorrhagic-transformation-type-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/hemorrhagic-transformation-type-cs. |
| [InitialCareIntensityCs CodeSystem](CodeSystem-initial-care-intensity-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/initial-care-intensity-cs. |
| [InsulinHyperglycemiaTimeCs CodeSystem](CodeSystem-insulin-hyperglycemia-time-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/insulin-hyperglycemia-time-cs. |
| [LocationCs CodeSystem](CodeSystem-location-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/location-cs. |
| [ManagementAppointmentCs CodeSystem](CodeSystem-management-appointment-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/management-appointment-cs. |
| [MedicationCs CodeSystem](CodeSystem-medication-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/medication-cs. |
| [MrsScoreCs CodeSystem](CodeSystem-mrs-score-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/mrs-score-cs. |
| [MticiCodeCs CodeSystem](CodeSystem-mtici-code-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/mtici-code-cs. |
| [MticiScoreCs CodeSystem](CodeSystem-mtici-score-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/mtici-score-cs. |
| [NotMedicationReasonCs CodeSystem](CodeSystem-not-medication-reason-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/not-medication-reason-cs. |
| [OldInfarctCs CodeSystem](CodeSystem-old-infarct-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/old-infarct-cs. |
| [PerfusionVolumeCs CodeSystem](CodeSystem-perfusion-volume-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/perfusion-volume-cs. |
| [ProcedureTimingContextCs CodeSystem](CodeSystem-procedure-timing-context-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/procedure-timing-context-cs. |
| [RiskFactorCs CodeSystem](CodeSystem-risk-factor-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/risk-factor-cs. |
| [SpecificFindingCs CodeSystem](CodeSystem-specific-finding-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/specific-finding-cs. |
| [StrokeArrivalModeCs CodeSystem](CodeSystem-stroke-arrival-mode-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-arrival-mode-cs. |
| [StrokeCircumstanceCodesCs CodeSystem](CodeSystem-stroke-circumstance-codes-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-circumstance-codes-cs. |
| [StrokeDischargeDestinationCs CodeSystem](CodeSystem-stroke-discharge-destination-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-discharge-destination-cs. |
| [StrokeDischargeSummarySectionCs CodeSystem](CodeSystem-stroke-discharge-summary-section-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-discharge-summary-section-cs. |
| [StrokeEtiologyCs CodeSystem](CodeSystem-stroke-etiology-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-etiology-cs. |
| [StrokeEtiologyOtherCs CodeSystem](CodeSystem-stroke-etiology-other-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-etiology-other-cs. |
| [StrokeMimicsDiagnosisCs CodeSystem](CodeSystem-stroke-mimics-diagnosis-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-mimics-diagnosis-cs. |
| [StrokePostStrokeComplicationCs CodeSystem](CodeSystem-stroke-post-stroke-complication-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-post-stroke-complication-cs. |
| [StrokeProcNotDoneReasonCs CodeSystem](CodeSystem-stroke-proc-not-done-reason-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-proc-not-done-reason-cs. |
| [StrokeTreatmentCs CodeSystem](CodeSystem-stroke-treatment-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-treatment-cs. |
| [SwallowProceduresCs CodeSystem](CodeSystem-swallow-procedures-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/swallow-procedures-cs. |
| [SwallowScreenTimeCs CodeSystem](CodeSystem-swallow-screen-time-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/swallow-screen-time-cs. |
| [SymptomsCs CodeSystem](CodeSystem-symptoms-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/symptoms-cs. |
| [TenecteplaseBrandCs CodeSystem](CodeSystem-tenecteplase-brand-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/tenecteplase-brand-cs. |
| [ThreeMonthContactModeCs CodeSystem](CodeSystem-three-month-contact-mode-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/three-month-contact-mode-cs. |
| [ThrombectomyComplicationsCs CodeSystem](CodeSystem-thrombectomy-complications-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/thrombectomy-complications-cs. |
| [TiaSymptomDurationCs CodeSystem](CodeSystem-tia-symptom-duration-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/tia-symptom-duration-cs. |
| [TimingCs CodeSystem](CodeSystem-timing-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/timing-cs. |
| [TimingMetricCodesCs CodeSystem](CodeSystem-timing-metric-codes-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/timing-metric-codes-cs. |
| [VitalSignsCs CodeSystem](CodeSystem-vital-signs-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/vital-signs-cs. |
| [VteProceduresCs CodeSystem](CodeSystem-vte-procedures-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/vte-procedures-cs. |
| [YesNoNotRequiredCs CodeSystem](CodeSystem-yes-no-not-required-cs.md) | Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/yes-no-not-required-cs. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [ExampleDoorToNeedle](Observation-ExampleDoorToNeedle.md) |
| [ExampleRESQPatient](Patient-ExampleRESQPatient.md) |
| [ExampleStrokeDiagnosis](Condition-ExampleStrokeDiagnosis.md) |
| [ExampleStrokeEncounter](Encounter-ExampleStrokeEncounter.md) |
| [OrganizationExample](Organization-OrganizationExample.md) |
| [RESQ Stroke Discharge Patient Summary](Composition-ExampleRESQStrokeDischargeComposition.md) |


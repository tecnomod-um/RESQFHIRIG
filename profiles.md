# Profiles - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

# Profiles

Profiles are grouped below by FHIR resource type. Each link opens the generated StructureDefinition page with the formal constraints, bindings, snapshots and downloadable JSON/XML/TTL representations.

## Clinical Documents

| | |
| :--- | :--- |
| `Composition` | [RESQ Stroke Discharge Patient Summary](StructureDefinition-resq-stroke-discharge-composition.md) |

## Administrative Resources

| | |
| :--- | :--- |
| `Patient` | [RESQ Patient](StructureDefinition-resq-patient-profile.md) |
| `Encounter` | [Stroke Encounter](StructureDefinition-stroke-encounter-profile.md) |
| `Organization` | [Stroke Registry Organization](StructureDefinition-stroke-registry-organization-profile.md) |
| `Location` | [RESQ Location](StructureDefinition-resq-location-profile.md),[Hospitalized Location](StructureDefinition-hospitalized-location-profile.md) |
| `BodyStructure` | [RESQ BodyStructure](StructureDefinition-resq-body-structure-profile.md) |
| `PractitionerRole` | [RESQ PractitionerRole](StructureDefinition-resq-practitioner-role-profile.md) |
| `Appointment` | [Three-Month Follow-up Appointment](StructureDefinition-follow-up-appointment-profile.md) |
| `Communication` | [Three-Month Contact Communication](StructureDefinition-three-month-communication-profile.md) |

## Conditions

| | |
| :--- | :--- |
| [Stroke Diagnosis Condition](StructureDefinition-stroke-diagnosis-condition-profile.md) | Captures the index stroke diagnosis, onset, body site and stroke-specific classification details. |
| [Stroke Risk Factor Condition](StructureDefinition-stroke-risk-factor-condition-profile.md) | Represents comorbidities and risk factors relevant to stroke quality measurement. |
| [Post-Stroke Complication Condition](StructureDefinition-post-stroke-complication-condition-profile.md) | Records complications occurring after the index stroke. |

## Observations

| | |
| :--- | :--- |
| [Base Stroke Observation](StructureDefinition-base-stroke-observation.md) | Shared subject, encounter, status and code constraints for registry observations. |
| [Vital Sign Observation](StructureDefinition-vital-sign-observation-profile.md) | Blood pressure and other vital signs using components. |
| [Functional Score Observation](StructureDefinition-functional-score-observation-profile.md) | NIHSS, mRS, ASPECTS and other severity or outcome scales. |
| [Glasgow Coma Scale Observation](StructureDefinition-glasgow-coma-scale-observation-profile.md) | Specialized GCS score binding. |
| [Specific Finding Observation](StructureDefinition-specific-finding-observation-profile.md) | Imaging, procedure and clinical findings such as mTICI or stenosis. |
| [Timing Metric Observation](StructureDefinition-timing-metric-observation-profile.md) | Door-to-needle, onset-to-door and related process metrics. |
| [Analytics Observation](StructureDefinition-analitics-observation-profile.md) | Laboratory and analytics values such as glucose, LDL and INR. |
| [Fever Observation](StructureDefinition-fever-observation-profile.md) | Fever indicator or temperature value. |
| [Hyperglycemia Observation](StructureDefinition-hyperglycemia-observation-profile.md) | Hyperglycemia checks and values. |
| [Glucose >= 10 Observation](StructureDefinition-glucose-ge10-observation-profile.md) | Boolean glucose threshold indicator. |
| [Highest Hyperglycemia Value Observation](StructureDefinition-highest-hyperglycemia-value-observation-profile.md) | Highest recorded glucose value in context. |
| [Highest Systolic Blood Pressure Value Observation](StructureDefinition-highest-systolic-blood-pressure-value-observation-profile.md) | Highest recorded systolic blood pressure value in context. |
| [TIA Clinical Symptoms Observation](StructureDefinition-tia-clinical-symptoms-observation-profile.md) | TIA symptom indicators and durations. |
| [Patient Ventilated Observation](StructureDefinition-patient-ventilated-observation-profile.md) | Ventilation indicator. |
| [Three-Month Contact Mode Observation](StructureDefinition-three-month-contact-mode-observation-profile.md) | Contact mode used for follow-up outcome capture. |
| [Appointment Management Observation](StructureDefinition-appointment-management-observation-profile.md) | Scheduled or attended follow-up appointment management status. |

## Procedures

| | |
| :--- | :--- |
| [Stroke Imaging Procedure](StructureDefinition-stroke-imaging-procedure-profile.md) | Brain imaging procedure and related report link. |
| [Stroke Carotid Imaging Procedure](StructureDefinition-stroke-carotid-imaging-procedure-profile.md) | Carotid imaging in post-stroke assessment. |
| [Stroke Carotid Endarterectomy Procedure](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md) | Carotid intervention and timing window. |
| [Stroke Reperfusion Procedure](StructureDefinition-stroke-mechanical-procedure-profile.md) | Thrombolysis and mechanical thrombectomy, including not-done reasons. |
| [Stroke Swallowing Screening Procedure](StructureDefinition-stroke-swallow-procedure-profile.md) | Swallowing screening performer, timing and not-done reason. |
| [Stroke VTE Prophylaxis Procedure](StructureDefinition-stroke-vte-procedure-profile.md) | VTE prophylaxis in the stroke pathway. |
| [Stroke Treatment Procedure](StructureDefinition-stroke-treatment-procedure-profile.md) | Broader treatment and rehabilitation procedures. |

## Reports

| | |
| :--- | :--- |
| `DiagnosticReport` | [Stroke Imaging DiagnosticReport](StructureDefinition-stroke-imaging-diagnostic-report-profile.md),[Mechanical Thrombectomy DiagnosticReport](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md) |

## Medications

| | |
| :--- | :--- |
| `Medication` | [Tenecteplase Brand Medication](StructureDefinition-tenecteplase-brand-medication-profile.md) |
| `MedicationStatement` | [Prior MedicationStatement](StructureDefinition-prior-medication-statement-profile.md) |
| `MedicationRequest` | [Discharge MedicationRequest](StructureDefinition-discharge-medication-request-profile.md) |
| `MedicationAdministration` | [Stroke MedicationAdministration](StructureDefinition-stroke-medication-administration-profile.md),[Paracetamol on Fever](StructureDefinition-paracetamol-on-fever-medication-administration-profile.md),[Insulin on Hyperglycemia](StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.md),[Nimodipine](StructureDefinition-nimodipine-medication-administration-profile.md),[Anticoagulant Reversal](StructureDefinition-anticoagulant-reversal-medication-administration-profile.md) |


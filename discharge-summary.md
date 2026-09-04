# Discharge Summary - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Discharge Summary**

## Discharge Summary

# Discharge Patient Summary

The [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md) is the clinical document entry point for a completed RES-Q stroke admission. It does not replace the discrete registry resources; it organizes them into a discharge summary that can be rendered for humans while preserving computable references for validation, analytics and exchange.

## Document Role

| | |
| :--- | :--- |
| `status` | Fixed to`final`for the completed discharge summary. |
| `type` | Fixed to LOINC`18842-5`Discharge summary. |
| `subject` | References the profiled[RESQ Patient](StructureDefinition-resq-patient-profile.md). |
| `encounter` | References the profiled[Stroke Encounter](StructureDefinition-stroke-encounter-profile.md)when available. |
| `author` | References the authoring organization, clinician role, practitioner or source system. |
| `custodian` | References the profiled[Stroke Registry Organization](StructureDefinition-stroke-registry-organization-profile.md). |
| `section` | Uses fixed section slices with required coded section headers and narrative text. |

## Sections

| | | |
| :--- | :--- | :--- |
| Admission Evaluation | LOINC`67851-6` | Admission diagnosis, risk factors, admission assessments, vitals, timing metrics and locations. |
| Relevant Patient History | LOINC`11329-0` | Prior medications and relevant risk factors. |
| Relevant Problems and Risk Factors | LOINC`11450-4` | Diagnosis, risk factors and post-stroke complications. |
| Hospital Course | LOINC`8648-8` | Required section for diagnosis, observations, procedures, medication administrations and reports recorded during hospitalization. |
| Diagnostic Summary | LOINC`11535-2` | Final diagnosis, imaging findings and diagnostic reports. |
| Significant Procedures | LOINC`10185-7` | Imaging, reperfusion, swallowing screening, VTE prophylaxis, carotid and treatment procedures. |
| Pharmacotherapy During Hospitalisation | LOINC`87232-5` | Acute or post-acute medication administrations. |
| Treatment Timings | RES-Q`treatment-timings` | Stroke pathway timing metrics such as door-to-needle and onset-to-door. |
| Significant Results | LOINC`30954-2` | Imaging, laboratory and clinically significant observation results. |
| Vital Signs at Discharge | LOINC`8716-3` | Discharge-relevant vital signs. |
| Functional Status at Discharge | LOINC`47420-5` | Functional scores, neurological status and ventilation status. |
| Discharge Details | LOINC`8650-4` | Discharge disposition and facility/service details from the stroke encounter. |
| Discharge Medications | LOINC`75311-1` | Medication requests and documented reasons for omitted anticoagulation. |
| Plan of Care and Follow-up | LOINC`18776-5` | Follow-up appointments, communications, contact mode and appointment management observations. |

## Implementation Guidance

Implementers SHOULD produce this Composition when exchanging a complete discharge summary for a registry case. Each section SHALL include narrative text. When a section has no discrete entries, populate `section.emptyReason` rather than leaving the section structurally empty.

The Composition SHOULD reference RES-Q profiled resources wherever a matching profile exists. This keeps the document clinically readable while preserving the computable resource graph used elsewhere in the IG.


The [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.html) is the document organization layer for a completed RES-Q stroke admission. It does not replace the discrete clinical resources. The `Composition` organizes the existing RES-Q resource graph into a FHIR R5 document that can be rendered for humans while preserving computable references for validation, analytics and exchange.

The current RESQ2FHIR implementation aligns this document structure with the Xt-EHR logical model `EHDSDischargeReport`:

`http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport`

That logical model refines the eHealth Network Hospital Discharge Report content in the EHDS context. This IG does not claim to publish the normative final EU FHIR discharge profile; it aligns the RES-Q discharge document with the evolving European logical model while keeping the registry's stroke-specific clinical resources intact.

## Document Role

| Composition element | RES-Q expectation |
| --- | --- |
| `status` | Fixed to `final` for the completed discharge summary. |
| `type` | Fixed to LOINC `18842-5` Discharge summary. |
| `identifier.system` | Fixed to `https://stroke.qualityregistry.org/`. |
| `subject` | References the profiled [RESQ Patient](StructureDefinition-resq-patient-profile.html). |
| `encounter` | References the profiled [Stroke Encounter](StructureDefinition-stroke-encounter-profile.html) when available. |
| `author` | References the authoring organization, clinician role, practitioner or source system according to the existing model. |
| `custodian` | References the profiled [Stroke Registry Organization](StructureDefinition-stroke-registry-organization-profile.html). |
| `title` | Fixed to `Stroke Hospital Discharge Summary`. |
| `language` | Fixed to `en`; generated narratives carry matching XHTML language attributes. |
| `version` | Fixed to `1`. |
| `text` | Contains the generated narrative for the Composition. |

## Section Hierarchy

RESQ2FHIR currently emits 20 section concepts: 10 root sections, 6 children under Hospital Course and 4 children under Discharge Details.

| Root section | Code | Required | EHDS path | Notes |
| --- | --- | --- | --- | --- |
| Medical Alerts | LOINC `75310-3` | Yes | `body.alerts` | Uses `emptyReason = notasked` when RES-Q has no alert data. |
| Allergies and Intolerances | LOINC `48765-2` | Yes | `body.alerts` | Uses `emptyReason = notasked` when RES-Q has no allergy data. |
| Encounter Information | LOINC `46240-8` | Yes | `body.encounterInformation` | References the Stroke Encounter. |
| Admission Evaluation | LOINC `67851-6` | No | `body.admissionEvaluation` | Admission assessments and context. |
| Relevant Patient History | LOINC `11329-0` | No | `body.patientHistory` | Absorbs the former RES-Q Patient History and Problem List content. |
| Hospital Course | LOINC `8648-8` | Yes | `body.courseOfEncounter` | Container for the six course-of-encounter subsections. |
| Discharge Details | LOINC `8650-4` | Yes | `body.dischargeDetails` | References the Stroke Encounter and contains four discharge detail subsections. |
| Medication Summary at Discharge | LOINC `75311-1` | Yes | `body.medicationSummary` | Discharge medication orders and omission reasons. |
| Plan of Care and Follow-up | LOINC `18776-5` | Yes | `body.carePlan` | Follow-up and continuing-care recommendations. |
| Clinical Synthesis | SNOMED CT `866144008` | No | `body.clinicalSynthesis` | Deterministic narrative only; no `section.entry` is required. |

### Hospital Course Children

| Subsection | Code | Required | EHDS path | Notes |
| --- | --- | --- | --- | --- |
| Diagnostic Summary | LOINC `11535-2` | Yes | `body.courseOfEncounter.diagnosticSummary` | Diagnosis and supporting findings. |
| Significant Procedures | LOINC `10185-7` | Yes | `body.courseOfEncounter.procedures` | Procedures performed or considered. |
| Treatment Timings | RES-Q `treatment-timings` | No | `body.courseOfEncounter` | Stroke-specific RES-Q content; includes D2N, D2G and D2D only. |
| Medical Devices and Implants | SNOMED CT `1184586001` | Yes | `body.courseOfEncounter.medicalDevicesAndImplants` | Uses `emptyReason = notasked` when RES-Q has no device data. |
| Pharmacotherapy During Encounter | LOINC `87232-5` | No | `body.courseOfEncounter.pharmacotherapy` | Medication administrations during the encounter. |
| Significant Test Results | LOINC `30954-2` | Yes | `body.courseOfEncounter.testResults[x]` | Diagnostic, imaging and laboratory results. |

### Discharge Details Children

| Subsection | Code | Required | EHDS path | Notes |
| --- | --- | --- | --- | --- |
| Vital Signs at Discharge | LOINC `8716-3` | Yes | `body.dischargeDetails.objectiveFindings` | Discharge vital signs. |
| Anthropometric Measurements | SNOMED CT `248326004` | Yes | `body.dischargeDetails.objectiveFindings` | Uses `emptyReason = notasked` when RES-Q has no anthropometry data. |
| Physical Examination at Discharge | LOINC `29545-1` | Yes | `body.dischargeDetails.objectiveFindings` | Uses `emptyReason = notasked` when RES-Q has no physical examination data. |
| Functional Status at Discharge | LOINC `47420-5` | Yes | `body.dischargeDetails.functionalStatus[x]` | Discharge NIHSS, mRS and related functional status entries. |

## Empty Sections

Required EHDS sections remain present even when RES-Q did not collect matching data. In those cases RESQ2FHIR uses `section.emptyReason`.

`notasked` means the registry did not collect the data item for that section. It must not be interpreted as "no known condition", "no known allergy", "no device" or any other negative clinical assertion. Other required sections without data use the generator's default `unavailable` empty reason.

Optional sections are omitted when they have no content. Hospital Course and Discharge Details may be valid with nested `section.section` content and no direct entries. Clinical Synthesis may be valid with generated narrative only.

## Stroke-Specific Content

Most sections use standard LOINC or SNOMED CT headings from the EHDS-aligned model. The stroke-specific RES-Q section is Treatment Timings, coded with the local section code `treatment-timings`.

RESQ2FHIR selects timing observations for this section by exact timing metric codes:

| Timing metric | Code |
| --- | --- |
| Door to Needle | `D2N` |
| Door to Groin | `D2G` |
| Door to Door | `D2D` |

Derived indicators such as `D2N<=45` are not selected into Treatment Timings.

## Clinical Synthesis

Clinical Synthesis is generated deterministically from FHIR resources that have already been modeled. It does not use an LLM and does not invent facts outside the generated resource graph.

Depending on available resources, the narrative may include age, sex, diagnosis, admission NIHSS, relevant history, treatments, discharge NIHSS, discharge mRS, discharge medication and disposition.

## Document Bundle

RESQ2FHIR builds a FHIR R5 `Bundle` with `type = document`. The `Composition` is always the first `Bundle.entry`. The Bundle then includes resources referenced by `Composition.section.entry`, plus the Patient, Encounter and Organization context resources when present.

Local references are resolved recursively. If a selected resource references another local resource in the same case graph, that referenced resource is added to the document Bundle as well.

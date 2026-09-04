# Resource Map - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Resource Map**

## Resource Map

The RES-Q IG models one registry case as a connected set of FHIR resources. The table below is the fastest route from a real registry concept to the resource profile that represents it.

| | | |
| :--- | :--- | :--- |
| `Composition` | Discharge patient summary document that organizes the stroke admission resources into sections | [RESQ Stroke Discharge Patient Summary](StructureDefinition-resq-stroke-discharge-composition.md) |
| `Patient` | Pseudonymized patient anchor and coded sex/gender | [RESQ Patient](StructureDefinition-resq-patient-profile.md) |
| `Encounter` | Index stroke admission and pathway context | [Stroke Encounter](StructureDefinition-stroke-encounter-profile.md) |
| `Organization` | Contributing registry hospital or organization | [Stroke Registry Organization](StructureDefinition-stroke-registry-organization-profile.md) |
| `Location` | Hospitalized location, department or care intensity | [RESQ Location](StructureDefinition-resq-location-profile.md),[Hospitalized Location](StructureDefinition-hospitalized-location-profile.md) |
| `Condition` | Diagnosis, risk factors and post-stroke complications | [Stroke Diagnosis](StructureDefinition-stroke-diagnosis-condition-profile.md),[Risk Factor](StructureDefinition-stroke-risk-factor-condition-profile.md),[Post-Stroke Complication](StructureDefinition-post-stroke-complication-condition-profile.md) |
| `Observation` | Scores, vital signs, labs, imaging findings, timings and follow-up indicators | [Observation profiles](profiles.md#observations) |
| `Procedure` | Imaging, reperfusion, screening, VTE prophylaxis and treatments | [Procedure profiles](profiles.md#procedures) |
| `DiagnosticReport` | Imaging reports and thrombectomy outcome reports | [Stroke Imaging Report](StructureDefinition-stroke-imaging-diagnostic-report-profile.md),[Mechanical Thrombectomy Report](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md) |
| `BodyStructure` | Anatomical sites such as occluded arteries and laterality | [RESQ BodyStructure](StructureDefinition-resq-body-structure-profile.md) |
| `Medication` | Medication product details when a registry field needs a reusable medication resource | [Tenecteplase Brand Medication](StructureDefinition-tenecteplase-brand-medication-profile.md) |
| `MedicationStatement` | Medication use before stroke onset and adherence | [Prior MedicationStatement](StructureDefinition-prior-medication-statement-profile.md) |
| `MedicationRequest` | Medication prescribed at discharge | [Discharge MedicationRequest](StructureDefinition-discharge-medication-request-profile.md) |
| `MedicationAdministration` | Acute or post-acute medication administrations | [MedicationAdministration profiles](profiles.md#medications) |
| `PractitionerRole` | Performer category for screening procedures | [RESQ PractitionerRole](StructureDefinition-resq-practitioner-role-profile.md) |
| `Appointment` | Three-month follow-up appointment | [Follow-up Appointment](StructureDefinition-follow-up-appointment-profile.md) |
| `Communication` | Three-month contact modality and communication status | [Three-Month Communication](StructureDefinition-three-month-communication-profile.md) |

## How to Navigate

Use [Discharge Patient Summary](discharge-patient-summary.md) when you need the document-level Composition. Use [Profiles](profiles.md) when you know the FHIR resource type. Use [Modeling Decisions](modeling-decisions.md) when you need to understand why a registry field was placed in a given resource. Use [Terminology](terminology.md) when a profile binds an element to a generated ValueSet.

```
flowchart TD
  Case["Stroke registry case"] --> Patient["Patient"]
  Case --> Composition["Discharge Patient Summary Composition"]
  Composition --> Patient
  Composition --> Encounter["Encounter"]
  Composition --> Sections["Composition sections"]
  Sections --> Conditions
  Sections --> Observations
  Sections --> Procedures
  Sections --> Medications
  Case --> Encounter["Encounter"]
  Encounter --> Conditions["Condition profiles"]
  Encounter --> Observations["Observation profiles"]
  Encounter --> Procedures["Procedure profiles"]
  Encounter --> Medications["Medication resources"]
  Procedures --> Reports["DiagnosticReport"]
  Reports --> Observations
  Observations --> BodyStructure["BodyStructure where anatomy matters"]
  Encounter --> FollowUp["Appointment / Communication"]

```


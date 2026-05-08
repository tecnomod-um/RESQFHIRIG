# Home - RESQ Stroke Registry Implementation Guide v1.0.0

## Home

# RESQ Stroke Registry Implementation Guide

This guide describes how RES-Q stroke registry data is represented in HL7 FHIR R5. It is designed for implementers who need to create, validate, inspect or consume the FHIR resources produced from the registry transformation pipeline.

FHIR R5 implementation guide

## Stroke registry data, organized as navigable FHIR resources

The model turns one stroke episode into a connected resource graph: a patient and encounter anchor the record, while diagnoses, observations, procedures, medications, reports and follow-up resources describe the clinical pathway.

[**41**Profiles](profiles.md)
[**15**Extensions](extensions.md)
[**117**Terminology artifacts](terminology.md)
[**15**FHIR resource types](resource-map.md)

## Start here

[ **Resource map** See every FHIR resource type used in the IG and how the resources connect across a stroke episode. ](resource-map.md)
[ **Modeling decisions** Understand why the registry is split across Patient, Encounter, Condition, Observation, Procedure and medication resources. ](modeling.md)
[ **Profiles by resource** Jump directly to the StructureDefinition pages for each profile. ](profiles.md)
[ **Terminology** Review the local CodeSystems and ValueSets generated from the registry enumeration model. ](terminology.md)

## Scope

The IG covers the complete transaction bundle produced by `transform_to_fhir`: `Organization`, `Patient`, `Encounter`, `Location`, `Condition`, `Observation`, `Procedure`, `DiagnosticReport`, `BodyStructure`, `MedicationStatement`, `MedicationRequest`, `MedicationAdministration`, `PractitionerRole`, `Appointment` and `Communication`.

## Resource graph

```
flowchart LR
  Org["Organization"] --> Enc["StrokeEncounter"]
  Pat["RESQPatient"] --> Enc
  Enc --> Dx["Diagnosis Condition"]
  Enc --> Risk["Risk Factors / Complications"]
  Enc --> Obs["Observations: scores, labs, findings, timing"]
  Enc --> Proc["Procedures: imaging, reperfusion, screening"]
  Proc --> Rep["DiagnosticReport"]
  Rep --> Obs
  Enc --> Med["MedicationStatement / Request / Administration"]
  Enc --> Fu["Appointment / Communication follow-up"]
  Body["BodyStructure"] --> Obs

```

## Modeling conventions

* `Patient` is intentionally minimal and privacy-preserving. It carries the registry identifier and a SNOMED-coded sex/gender extension; age is represented as an `Observation` because the source pipeline creates it as a measurable registry datum.
* `Encounter` is the clinical anchor for the index stroke episode. It carries admission source, discharge disposition, first-hospital flag, post-acute-care flag and EMS prenotification.
* `Condition` is used for durable clinical assertions: stroke diagnosis, risk factors and post-stroke complications.
* `Observation` is used for measurements, scales, laboratory/analytics values, imaging findings, process timings and follow-up indicators.
* `Procedure` is used for actions performed or considered in care delivery: imaging, reperfusion, swallowing screening, VTE prophylaxis, carotid endarterectomy and other stroke treatments.
* Medication resources are separated by meaning: prior medication use is `MedicationStatement`, discharge prescriptions are `MedicationRequest`, and administered acute treatment is `MedicationAdministration`.

## Known normalization notes

The Python builders include both `required-post-acute-care-ext` and `post-acute-care-required-ext`. Both are preserved as separate extension URLs because both appear in the implementation. The MedicationAdministration builders also contain a typo URL `http://tecnomod-um-org/StructureDefinition/assessment-timing-ext`; the IG normalizes this to `http://tecnomod-um.org/StructureDefinition/assessment-timing-ext`.


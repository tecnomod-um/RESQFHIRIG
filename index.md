# Home - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ImplementationGuide/RESQFHIRIG | *Version*:1.0.0 |
| Draft as of 2026-07-21 | *Computable Name*:RESQStrokeIG |

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



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "RESQFHIRIG",
  "url" : "http://tecnomod-um.org/ImplementationGuide/RESQFHIRIG",
  "version" : "1.0.0",
  "name" : "RESQStrokeIG",
  "title" : "RESQ Stroke Registry Implementation Guide",
  "status" : "draft",
  "date" : "2026-07-21T08:04:16+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "packageId" : "RESQFHIRIG",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.2.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r5",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.2.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-adherence-codes-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/adherence-codes-vs"
      },
      "name" : "AdherenceCodes ValueSet",
      "description" : "Allowed coded values for AdherenceCodes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-admission-department-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/admission-department-vs"
      },
      "name" : "AdmissionDepartment ValueSet",
      "description" : "Allowed coded values for AdmissionDepartment",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-admission-pathway-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/admission-pathway-vs"
      },
      "name" : "AdmissionPathway ValueSet",
      "description" : "Allowed coded values for AdmissionPathway",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-analitics-codes-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/analitics-codes-vs"
      },
      "name" : "AnaliticsCodes ValueSet",
      "description" : "Allowed coded values for AnaliticsCodes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-analitics-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/analitics-observation-profile"
      },
      "name" : "Analytics Observation Profile",
      "description" : "Laboratory/analytics observation profile for glucose, cholesterol, INR and related findings. The id preserves the original spelling used in the Python profile URL.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-analytics-codes-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/analytics-codes-cs"
      },
      "name" : "AnalyticsCodesCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/analytics-codes-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-anticoagulant-reversal-medication-administration-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/anticoagulant-reversal-medication-administration-profile"
      },
      "name" : "Anticoagulant Reversal MedicationAdministration Profile",
      "description" : "MedicationAdministration profile for anticoagulant reversal treatment in the acute stroke pathway, including completed and not-done reversal administrations.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-anticoagulant-reversal-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/anticoagulant-reversal-vs"
      },
      "name" : "AnticoagulantReversal ValueSet",
      "description" : "Allowed coded values for AnticoagulantReversal",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-appointment-management-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/appointment-management-observation-profile"
      },
      "name" : "Appointment Management Observation Profile",
      "description" : "Observation profile for recording whether a three-month follow-up appointment was scheduled or attended.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-assessment-timing-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/assessment-timing-ext"
      },
      "name" : "Assessment or medication timing",
      "description" : "Timing category used by medication-administration builders, e.g. insulin within one hour or paracetamol timing. The Python code contains a typo variant tecnomod-um-org; this IG normalizes to tecnomod-um.org.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-assessment-context-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/assessment-context-vs"
      },
      "name" : "AssessmentContext ValueSet",
      "description" : "Allowed coded values for AssessmentContext",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-assessment-context-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/assessment-context-cs"
      },
      "name" : "AssessmentContextCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/assessment-context-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-atrial-fibrillation-or-flutter-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/atrial-fibrillation-or-flutter-vs"
      },
      "name" : "AtrialFibrillationOrFlutter ValueSet",
      "description" : "Allowed coded values for AtrialFibrillationOrFlutter",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-base-stroke-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/base-stroke-observation"
      },
      "name" : "Base Stroke Observation Profile",
      "description" : "Base profile for RES-Q stroke observations. It requires final status, patient, encounter and observation code so derived profiles share a consistent registry context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-bleeding-reason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/bleeding-reason-vs"
      },
      "name" : "BleedingReason ValueSet",
      "description" : "Allowed coded values for BleedingReason",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-body-sites-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/body-sites-vs"
      },
      "name" : "BodySites ValueSet",
      "description" : "Allowed coded values for BodySites",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-bool-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/bool-vs"
      },
      "name" : "Bool ValueSet",
      "description" : "Allowed coded values for Bool",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-brain-imaging-type-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/brain-imaging-type-cs"
      },
      "name" : "BrainImagingTypeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/brain-imaging-type-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-carotid-endarterectomy-timing-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/carotid-endarterectomy-timing-vs"
      },
      "name" : "CarotidEndarterectomyTiming ValueSet",
      "description" : "Allowed coded values for CarotidEndarterectomyTiming",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-carotid-endarterectomy-timing-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/carotid-endarterectomy-timing-cs"
      },
      "name" : "CarotidEndarterectomyTimingCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/carotid-endarterectomy-timing-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-carotid-stenosis-level-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/carotid-stenosis-level-vs"
      },
      "name" : "CarotidStenosisLevel ValueSet",
      "description" : "Allowed coded values for CarotidStenosisLevel",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-clinical-status-codes-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/clinical-status-codes-vs"
      },
      "name" : "ClinicalStatusCodes ValueSet",
      "description" : "Allowed coded values for ClinicalStatusCodes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-discharge-department-service-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/discharge-department-service-ext"
      },
      "name" : "Discharge department or service",
      "description" : "Department, unit or service receiving the patient at discharge.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-discharge-facility-type-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/discharge-facility-type-ext"
      },
      "name" : "Discharge facility type",
      "description" : "Type of facility or transfer destination receiving the patient at discharge.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-discharge-medication-request-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/discharge-medication-request-profile"
      },
      "name" : "Discharge MedicationRequest Profile",
      "description" : "MedicationRequest profile for medications prescribed or recommended at discharge after the index stroke encounter.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-discharge-dept-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/discharge-dept-cs"
      },
      "name" : "DischargeDeptCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-dept-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-discharge-destination-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/discharge-destination-vs"
      },
      "name" : "DischargeDestination ValueSet",
      "description" : "Allowed coded values for DischargeDestination",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-discharge-facility-department-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/discharge-facility-department-vs"
      },
      "name" : "DischargeFacilityDepartment ValueSet",
      "description" : "Allowed coded values for DischargeFacilityDepartment",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-discharge-facility-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/discharge-facility-type-vs"
      },
      "name" : "DischargeFacilityType ValueSet",
      "description" : "Allowed coded values for DischargeFacilityType",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-discharge-medication-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/discharge-medication-cs"
      },
      "name" : "DischargeMedicationCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-medication-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ems-prenotification-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ems-prenotification-ext"
      },
      "name" : "EMS prenotification",
      "description" : "Indicates whether emergency medical services prenotified the receiving hospital before arrival.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleDoorToNeedle.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleDoorToNeedle"
      },
      "name" : "ExampleDoorToNeedle",
      "isExample" : true,
      "profile" : ["http://tecnomod-um.org/StructureDefinition/timing-metric-observation-profile"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ExampleRESQPatient.html"
      }],
      "reference" : {
        "reference" : "Patient/ExampleRESQPatient"
      },
      "name" : "ExampleRESQPatient",
      "isExample" : true,
      "profile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ExampleStrokeDiagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/ExampleStrokeDiagnosis"
      },
      "name" : "ExampleStrokeDiagnosis",
      "isExample" : true,
      "profile" : ["http://tecnomod-um.org/StructureDefinition/stroke-diagnosis-condition-profile"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-ExampleStrokeEncounter.html"
      }],
      "reference" : {
        "reference" : "Encounter/ExampleStrokeEncounter"
      },
      "name" : "ExampleStrokeEncounter",
      "isExample" : true,
      "profile" : ["http://tecnomod-um.org/StructureDefinition/stroke-encounter-profile"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fever-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fever-observation-profile"
      },
      "name" : "Fever Observation Profile",
      "description" : "Observation profile for fever presence or temperature values during the stroke pathway.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-first-hospital-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/first-hospital-ext"
      },
      "name" : "First hospital for the stroke episode",
      "description" : "Boolean flag indicating whether the Encounter corresponds to the first hospital attended for the index stroke episode.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-first-contact-place-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/first-contact-place-vs"
      },
      "name" : "FirstContactPlace ValueSet",
      "description" : "Allowed coded values for FirstContactPlace",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-first-contact-place-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/first-contact-place-cs"
      },
      "name" : "FirstContactPlaceCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/first-contact-place-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-functional-score-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/functional-score-observation-profile"
      },
      "name" : "Functional Score Observation Profile",
      "description" : "Observation profile for functional or severity scores such as mRS, NIHSS, ASPECTS, Hunt-Hess, ABCD2, CHA2DS2-VASc and THRIVE.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-functional-score-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/functional-score-vs"
      },
      "name" : "FunctionalScore ValueSet",
      "description" : "Allowed coded values for FunctionalScore",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-functional-score-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/functional-score-cs"
      },
      "name" : "FunctionalScoreCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/functional-score-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-gcsscore-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/gcsscore-vs"
      },
      "name" : "GCSScore ValueSet",
      "description" : "Allowed coded values for GCSScore",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gender-snomed-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gender-snomed-ext"
      },
      "name" : "Gender represented with SNOMED CT",
      "description" : "Sex/gender value as a SNOMED CT CodeableConcept, matching build_Patient().",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-glasgow-coma-scale-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/glasgow-coma-scale-observation-profile"
      },
      "name" : "Glasgow Coma Scale Observation Profile",
      "description" : "Specialized functional score profile for Glasgow Coma Scale component values captured by the registry.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-glasgow-coma-score-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/glasgow-coma-score-observation-profile"
      },
      "name" : "Glasgow Coma Score Observation Profile",
      "description" : "Specialized functional score profile for Glasgow Coma Score values captured by the registry.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-glasgow-coma-scale-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/glasgow-coma-scale-vs"
      },
      "name" : "GlasgowComaScale ValueSet",
      "description" : "Allowed coded values for GlasgowComaScale",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-glucose-ge10-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/glucose-ge10-observation-profile"
      },
      "name" : "Glucose >= 10 Observation Profile",
      "description" : "Boolean observation profile indicating whether glucose was greater than or equal to 10 mmol/L.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext"
      },
      "name" : "Hemorrhagic stroke bleeding reason",
      "description" : "Reason or underlying cause identified for hemorrhagic stroke, including undetermined when no reason is found.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hemorrhagic-stroke-bleeding-reason-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hemorrhagic-stroke-bleeding-reason-cs"
      },
      "name" : "HemorrhagicStrokeBleedingReasonCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/hemorrhagic-stroke-bleeding-reason-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hemorrhagic-transformation-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hemorrhagic-transformation-type-vs"
      },
      "name" : "HemorrhagicTransformationType ValueSet",
      "description" : "Allowed coded values for HemorrhagicTransformationType",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hemorrhagic-transformation-type-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hemorrhagic-transformation-type-cs"
      },
      "name" : "HemorrhagicTransformationTypeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/hemorrhagic-transformation-type-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-highest-hyperglycemia-value-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/highest-hyperglycemia-value-observation-profile"
      },
      "name" : "Highest Hyperglycemia Value Observation Profile",
      "description" : "Observation profile for the highest recorded hyperglycemia value in the relevant stroke care interval.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-hospitalized-location-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/hospitalized-location-profile"
      },
      "name" : "Hospitalized Location Profile",
      "description" : "Hospitalized location profile aligned with the admission department and initial care intensity captured by the RES-Q source model.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hospitalized-in-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hospitalized-in-vs"
      },
      "name" : "HospitalizedIn ValueSet",
      "description" : "Allowed coded values for HospitalizedIn",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-hyperglycemia-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/hyperglycemia-observation-profile"
      },
      "name" : "Hyperglycemia Observation Profile",
      "description" : "Observation profile for hyperglycemia monitoring, checks and measured values.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-imaging-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/imaging-type-vs"
      },
      "name" : "ImagingType ValueSet",
      "description" : "Allowed coded values for ImagingType",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-in-hospital-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/in-hospital-vs"
      },
      "name" : "InHospital ValueSet",
      "description" : "Allowed coded values for InHospital",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-initial-care-intensity-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/initial-care-intensity-ext"
      },
      "name" : "Initial care intensity",
      "description" : "Initial care intensity for hospitalized location, e.g. ICU/stroke unit, monitored bed, or standard bed.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-initial-care-intensity-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/initial-care-intensity-cs"
      },
      "name" : "InitialCareIntensityCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/initial-care-intensity-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-inrmode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/inrmode-vs"
      },
      "name" : "INRmode ValueSet",
      "description" : "Allowed coded values for INRmode",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/insulin-on-hyperglycemia-medication-administration-profile"
      },
      "name" : "Insulin on Hyperglycemia MedicationAdministration Profile",
      "description" : "MedicationAdministration profile for insulin administered in response to hyperglycemia.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-insulin-hyperglycemia-time-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/insulin-hyperglycemia-time-cs"
      },
      "name" : "InsulinHyperglycemiaTimeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-insulin-on-hyperglycemia-timing-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/insulin-on-hyperglycemia-timing-vs"
      },
      "name" : "InsulinOnHyperglycemiaTiming ValueSet",
      "description" : "Allowed coded values for InsulinOnHyperglycemiaTiming",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ischemic-stroke-etiology-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ischemic-stroke-etiology-ext"
      },
      "name" : "Ischemic stroke etiology",
      "description" : "Etiology of ischemic stroke, including undetermined when the etiology is not known.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ivt-application-department-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ivt-application-department-vs"
      },
      "name" : "IvtApplicationDepartment ValueSet",
      "description" : "Allowed coded values for IvtApplicationDepartment",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ivt-drug-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ivt-drug-vs"
      },
      "name" : "IvtDrug ValueSet",
      "description" : "Allowed coded values for IvtDrug",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-laterality-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/laterality-vs"
      },
      "name" : "Laterality ValueSet",
      "description" : "Allowed coded values for Laterality",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-location-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/location-cs"
      },
      "name" : "LocationCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/location-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-locations-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/locations-vs"
      },
      "name" : "Locations ValueSet",
      "description" : "Allowed coded values for Locations",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-management-appointment-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/management-appointment-vs"
      },
      "name" : "ManagementAppointment ValueSet",
      "description" : "Allowed coded values for ManagementAppointment",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-management-appointment-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/management-appointment-cs"
      },
      "name" : "ManagementAppointmentCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/management-appointment-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mechanical-thrombectomy-diagnostic-report-profile"
      },
      "name" : "Mechanical Thrombectomy DiagnosticReport Profile",
      "description" : "DiagnosticReport profile for thrombectomy outcome, especially mTICI reperfusion results.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-medication-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/medication-cs"
      },
      "name" : "MedicationCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/medication-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-medications-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/medications-vs"
      },
      "name" : "Medications ValueSet",
      "description" : "Allowed coded values for Medications",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mimics-diagnosis-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mimics-diagnosis-vs"
      },
      "name" : "MimicsDiagnosis ValueSet",
      "description" : "Allowed coded values for MimicsDiagnosis",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mrs-score-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mrs-score-vs"
      },
      "name" : "MRsScore ValueSet",
      "description" : "Allowed coded values for MRsScore",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mrs-score-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mrs-score-cs"
      },
      "name" : "MrsScoreCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mrs-score-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mtici-code-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mtici-code-cs"
      },
      "name" : "MticiCodeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mtici-code-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mtici-score-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mtici-score-vs"
      },
      "name" : "MTiciScore ValueSet",
      "description" : "Allowed coded values for MTiciScore",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mtici-score-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mtici-score-cs"
      },
      "name" : "MticiScoreCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mtici-score-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-nimodipine-medication-administration-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/nimodipine-medication-administration-profile"
      },
      "name" : "Nimodipine MedicationAdministration Profile",
      "description" : "MedicationAdministration profile for nimodipine in the subarachnoid hemorrhage pathway.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-nimodipinetiming-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/nimodipinetiming-vs"
      },
      "name" : "Nimodipinetiming ValueSet",
      "description" : "Allowed coded values for Nimodipinetiming",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-anticoagulant-discharge-reason-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-anticoagulant-discharge-reason-observation-profile"
      },
      "name" : "No Anticoagulant Discharge Reason Observation Profile",
      "description" : "Observation profile for recording the reason for not prescribing anticoagulants at discharge after ischemic stroke or TIA.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-not-medication-reason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/not-medication-reason-vs"
      },
      "name" : "NotMedicationReason ValueSet",
      "description" : "Allowed coded values for NotMedicationReason",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-not-medication-reason-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/not-medication-reason-cs"
      },
      "name" : "NotMedicationReasonCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/not-medication-reason-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-observation-timing-context-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/observation-timing-context-ext"
      },
      "name" : "Observation timing context",
      "description" : "Temporal/clinical context of an observation, such as admission, discharge, prestroke or three-month follow-up. Also supports boolean usage because build_observation_blood_volume currently writes a boolean post_acute_care value to this URL.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-occupational-therapy-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/occupational-therapy-vs"
      },
      "name" : "OccupationalTherapy ValueSet",
      "description" : "Allowed coded values for OccupationalTherapy",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-old-infarct-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/old-infarct-cs"
      },
      "name" : "OldInfarctCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/old-infarct-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-OrganizationExample.html"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationExample"
      },
      "name" : "OrganizationExample",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-paracetamol-on-fever-medication-administration-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/paracetamol-on-fever-medication-administration-profile"
      },
      "name" : "Paracetamol on Fever MedicationAdministration Profile",
      "description" : "MedicationAdministration profile for paracetamol administered because of fever.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-paracetamol-on-fever-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/paracetamol-on-fever-vs"
      },
      "name" : "ParacetamolOnFever ValueSet",
      "description" : "Allowed coded values for ParacetamolOnFever",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-paracetamol-on-fever-timing-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/paracetamol-on-fever-timing-vs"
      },
      "name" : "ParacetamolOnFeverTiming ValueSet",
      "description" : "Allowed coded values for ParacetamolOnFeverTiming",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-patient-ventilated-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/patient-ventilated-observation-profile"
      },
      "name" : "Patient Ventilated Observation Profile",
      "description" : "Observation profile for recording whether the patient was ventilated in acute or post-acute care.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-perforation-procedures-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/perforation-procedures-vs"
      },
      "name" : "PerforationProcedures ValueSet",
      "description" : "Allowed coded values for PerforationProcedures",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-perfusion-volume-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/perfusion-volume-cs"
      },
      "name" : "PerfusionVolumeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/perfusion-volume-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-post-acute-care-required-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/post-acute-care-required-ext"
      },
      "name" : "Post-acute care required",
      "description" : "Boolean indicator used by Procedure builders to mark post-acute-care relevance. Semantically equivalent to required-post-acute-care-ext but kept because both URLs exist in the codebase.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-post-stroke-complication-condition-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/post-stroke-complication-condition-profile"
      },
      "name" : "Post-Stroke Complication Condition Profile",
      "description" : "Condition profile for complications occurring after the index stroke, including complications relevant to post-acute care and registry outcome tracking.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-post-acute-care-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/post-acute-care-vs"
      },
      "name" : "PostAcuteCare ValueSet",
      "description" : "Allowed coded values for PostAcuteCare",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-post-neurosurgery-imaging-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/post-neurosurgery-imaging-vs"
      },
      "name" : "PostNeurosurgeryImaging ValueSet",
      "description" : "Allowed coded values for PostNeurosurgeryImaging",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-post-recanalization-imaging-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/post-recanalization-imaging-vs"
      },
      "name" : "PostRecanalizationImaging ValueSet",
      "description" : "Allowed coded values for PostRecanalizationImaging",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-post-stroke-complications-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/post-stroke-complications-vs"
      },
      "name" : "PostStrokeComplications ValueSet",
      "description" : "Allowed coded values for PostStrokeComplications",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-post-stroke-procedures-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/post-stroke-procedures-vs"
      },
      "name" : "PostStrokeProcedures ValueSet",
      "description" : "Allowed coded values for PostStrokeProcedures",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-stroke-treatment-procedure-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/stroke-treatment-procedure-vs"
      },
      "name" : "PostStrokeProcedures ValueSet",
      "description" : "Allowed coded values for PostStrokeProcedures",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-prior-medication-statement-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/prior-medication-statement-profile"
      },
      "name" : "Prior MedicationStatement Profile",
      "description" : "MedicationStatement profile for medication taken before stroke onset, including adherence state when captured by the registry.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-procedure-timing-context-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/procedure-timing-context-ext"
      },
      "name" : "Procedure timing context",
      "description" : "Timing or phase context for procedure execution, such as acute/post-acute or specific screening window.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-procedure-timing-context-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/procedure-timing-context-vs"
      },
      "name" : "Procedure Timing Context ValueSet",
      "description" : "Allowed values for the Procedure timing context extension.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-procedure-not-done-reason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/procedure-not-done-reason-vs"
      },
      "name" : "ProcedureNotDoneReason ValueSet",
      "description" : "Allowed coded values for ProcedureNotDoneReason",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-procedure-timing-context-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/procedure-timing-context-cs"
      },
      "name" : "ProcedureTimingContextCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-required-post-acute-care-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/required-post-acute-care-ext"
      },
      "name" : "Required post-acute care",
      "description" : "Boolean indicator that post-acute care is required or applicable to the resource context. Used by Encounter, Observation and MedicationAdministration builders.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-resq-body-structure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/resq-body-structure-profile"
      },
      "name" : "RESQ BodyStructure Profile",
      "description" : "BodyStructure profile for anatomical structures relevant to stroke, such as occluded arteries, stenosis sites and laterality-specific findings.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-resq-location-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/resq-location-profile"
      },
      "name" : "RESQ Location Profile",
      "description" : "Generic coded location profile used by registry builders when the important information is the type of location or service rather than a fully described physical site.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-resq-patient-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/resq-patient-profile"
      },
      "name" : "RESQ Patient Profile",
      "description" : "Patient profile for RES-Q stroke registry submissions. The registry patient is intentionally pseudonymized: the profile requires a stable registry identifier and represents sex/gender using a SNOMED CT coded extension because the source ETL does not populate Patient.gender. Age is represented as an Observation in the registry model rather than as a Patient extension.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-resq-practitioner-role-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/resq-practitioner-role-profile"
      },
      "name" : "RESQ PractitionerRole Profile",
      "description" : "PractitionerRole profile for recording the type of clinician or professional performing swallowing screening and related pathway activities.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-resq-stroke-discharge-document-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/resq-stroke-discharge-document-type-vs"
      },
      "name" : "RESQ Stroke Discharge Document Type ValueSet",
      "description" : "Allowed document type code for the RESQ Stroke Hospital Discharge Summary Composition.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-resq-stroke-discharge-section-code-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/resq-stroke-discharge-section-code-vs"
      },
      "name" : "RESQ Stroke Discharge Section Code ValueSet",
      "description" : "Allowed LOINC section codes for the RESQ Stroke Hospital Discharge Summary Composition.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-resq-stroke-discharge-composition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/resq-stroke-discharge-composition"
      },
      "name" : "RESQ Stroke Hospital Discharge Composition",
      "description" : "FHIR R5 Composition profile for the RESQ Stroke Hospital Discharge Summary document.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-risk-factor-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/risk-factor-vs"
      },
      "name" : "RiskFactor ValueSet",
      "description" : "Allowed coded values for RiskFactor",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-risk-factor-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/risk-factor-cs"
      },
      "name" : "RiskFactorCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/risk-factor-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-screening-performer-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/screening-performer-vs"
      },
      "name" : "ScreeningPerformer ValueSet",
      "description" : "Allowed coded values for ScreeningPerformer",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-sex-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/sex-vs"
      },
      "name" : "Sex ValueSet",
      "description" : "Allowed coded values for Sex",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-specific-finding-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/specific-finding-observation-profile"
      },
      "name" : "Specific Finding Observation Profile",
      "description" : "Observation profile for specific stroke-related clinical, imaging and procedural findings including mTICI, bleeding volume, carotid stenosis, artery occlusion, atrial fibrillation/flutter and post-treatment findings.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-specific-finding-value-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/specific-finding-value-vs"
      },
      "name" : "Specific Finding Value ValueSet",
      "description" : "Allowed coded values used as Observation.valueCodeableConcept for specific finding observations.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-specific-finding-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/specific-finding-vs"
      },
      "name" : "SpecificFinding ValueSet",
      "description" : "Allowed coded values for specific stroke-related findings.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-specific-finding-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/specific-finding-cs"
      },
      "name" : "SpecificFindingCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/specific-finding-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-carotid-endarterectomy-procedure-profile"
      },
      "name" : "Stroke Carotid Endarterectomy Procedure Profile",
      "description" : "Procedure profile for carotid endarterectomy and its timing window in the RES-Q pathway.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-carotid-imaging-procedure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-carotid-imaging-procedure-profile"
      },
      "name" : "Stroke Carotid Imaging Procedure Profile",
      "description" : "Procedure profile for carotid imaging used in post-stroke assessment.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-stroke-diagnosis-code-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/stroke-diagnosis-code-vs"
      },
      "name" : "Stroke Diagnosis Code ValueSet",
      "description" : "Allowed coded values for final stroke episode diagnosis, including stroke types and stroke mimics.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-diagnosis-condition-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-diagnosis-condition-profile"
      },
      "name" : "Stroke Diagnosis Condition Profile",
      "description" : "Condition profile for the index stroke diagnosis. It captures stroke type, onset timing, body site, diagnostic evidence and stroke-specific classification extensions such as ischemic etiology, hemorrhagic bleeding reason and wake-up stroke status.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-encounter-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-encounter-profile"
      },
      "name" : "Stroke Encounter Profile",
      "description" : "Index encounter for an acute stroke episode in the RES-Q registry. It records the patient, completed encounter state, admission and discharge pathway information, hospital locations, first-hospital status, EMS prenotification and post-acute-care applicability.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-imaging-diagnostic-report-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-imaging-diagnostic-report-profile"
      },
      "name" : "Stroke Imaging DiagnosticReport Profile",
      "description" : "DiagnosticReport profile for brain, carotid and follow-up imaging reports in the stroke pathway.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-imaging-procedure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-imaging-procedure-profile"
      },
      "name" : "Stroke Imaging Procedure Profile",
      "description" : "Procedure profile for brain imaging performed in the stroke pathway, with optional report linkage and timing context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-medication-administration-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-medication-administration-profile"
      },
      "name" : "Stroke MedicationAdministration Profile",
      "description" : "Generic MedicationAdministration profile for acute stroke treatment medications, including thrombolysis, anticoagulant reversal, IV antihypertensives and other administrations.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-registry-organization-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-registry-organization-profile"
      },
      "name" : "Stroke Registry Organization Profile",
      "description" : "Organization profile for hospitals or registry participants contributing RES-Q stroke data. The profile requires an active organization, a display name and a registry-scoped identifier.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-mechanical-procedure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-mechanical-procedure-profile"
      },
      "name" : "Stroke Reperfusion Procedure Profile",
      "description" : "Procedure profile for acute reperfusion interventions, including thrombolysis and mechanical thrombectomy. It supports reason, not-done reason, location, occurrence, complications and timing context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-risk-factor-condition-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-risk-factor-condition-profile"
      },
      "name" : "Stroke Risk Factor Condition Profile",
      "description" : "Condition profile for pre-existing or episode-relevant risk factors captured in the RES-Q registry.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-swallow-procedure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-swallow-procedure-profile"
      },
      "name" : "Stroke Swallowing Screening Procedure Profile",
      "description" : "Procedure profile for swallowing screening, including screening type, not-done reason, performer role and timing context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-treatment-procedure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-treatment-procedure-profile"
      },
      "name" : "Stroke Treatment Procedure Profile",
      "description" : "Generic treatment and rehabilitation profile for ICH, SAH, CVT, craniectomy, therapy, smoking cessation and shunt procedures not given a dedicated meta.profile in the Python builders.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stroke-vte-procedure-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stroke-vte-procedure-profile"
      },
      "name" : "Stroke VTE Prophylaxis Procedure Profile",
      "description" : "Procedure profile for venous thromboembolism prophylaxis used in the stroke pathway.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-arrival-mode-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-arrival-mode-cs"
      },
      "name" : "StrokeArrivalModeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-arrival-mode-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-stroke-circumstance-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/stroke-circumstance-vs"
      },
      "name" : "StrokeCircumstance ValueSet",
      "description" : "Allowed coded values for StrokeCircumstance",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-circumstance-codes-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-circumstance-codes-cs"
      },
      "name" : "StrokeCircumstanceCodesCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-circumstance-codes-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-discharge-destination-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-discharge-destination-cs"
      },
      "name" : "StrokeDischargeDestinationCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-discharge-summary-section-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-discharge-summary-section-cs"
      },
      "name" : "StrokeDischargeSummarySectionCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-discharge-summary-section-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-stroke-etiology-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/stroke-etiology-vs"
      },
      "name" : "StrokeEtiology ValueSet",
      "description" : "Allowed coded values for StrokeEtiology",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-etiology-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-etiology-cs"
      },
      "name" : "StrokeEtiologyCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-stroke-etiology-other-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/stroke-etiology-other-vs"
      },
      "name" : "StrokeEtiologyOther ValueSet",
      "description" : "Allowed coded values for StrokeEtiologyOther",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-etiology-other-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-etiology-other-cs"
      },
      "name" : "StrokeEtiologyOtherCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-other-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-mimics-diagnosis-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-mimics-diagnosis-cs"
      },
      "name" : "StrokeMimicsDiagnosisCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-mimics-diagnosis-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-post-stroke-complication-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-post-stroke-complication-cs"
      },
      "name" : "StrokePostStrokeComplicationCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-proc-not-done-reason-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-proc-not-done-reason-cs"
      },
      "name" : "StrokeProcNotDoneReasonCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-proc-not-done-reason-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-stroke-treatment-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/stroke-treatment-vs"
      },
      "name" : "StrokeTreatment ValueSet",
      "description" : "Allowed coded values for StrokeTreatment",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-stroke-treatment-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/stroke-treatment-cs"
      },
      "name" : "StrokeTreatmentCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-treatment-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-stroke-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/stroke-type-vs"
      },
      "name" : "StrokeType ValueSet",
      "description" : "Allowed coded values for StrokeType",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-swallowing-screening-done-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/swallowing-screening-done-vs"
      },
      "name" : "SwallowingScreeningDone ValueSet",
      "description" : "Allowed coded values for SwallowingScreeningDone",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-swallowing-screening-timing-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/swallowing-screening-timing-vs"
      },
      "name" : "SwallowingScreeningTiming ValueSet",
      "description" : "Allowed coded values for SwallowingScreeningTiming",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-swallowing-screening-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/swallowing-screening-type-vs"
      },
      "name" : "SwallowingScreeningType ValueSet",
      "description" : "Allowed coded values for SwallowingScreeningType",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-swallow-procedures-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/swallow-procedures-cs"
      },
      "name" : "SwallowProceduresCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/swallow-procedures-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-swallow-screen-time-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/swallow-screen-time-cs"
      },
      "name" : "SwallowScreenTimeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/swallow-screen-time-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-symptoms-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/symptoms-cs"
      },
      "name" : "SymptomsCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/symptoms-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-highest-systolic-blood-pressure-value-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/highest-systolic-blood-pressure-value-observation-profile"
      },
      "name" : "Systolic Blood Pressure Highest Value Observation Profile",
      "description" : "Observation profile for the highest recorded systolic blood pressure value in the relevant stroke care interval.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-tenecteplase-brand-medication-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/tenecteplase-brand-medication-profile"
      },
      "name" : "Tenecteplase Brand Medication Profile",
      "description" : "Medication profile for tenecteplase with a specific brand name, used in the RES-Q registry to capture the use of tenecteplase in stroke treatment.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-tenecteplase-brand-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/tenecteplase-brand-vs"
      },
      "name" : "TenecteplaseBrand ValueSet",
      "description" : "Allowed coded values for TenecteplaseBrand",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-tenecteplase-brand-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/tenecteplase-brand-cs"
      },
      "name" : "TenecteplaseBrandCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/tenecteplase-brand-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-three-month-contact-mode-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/three-month-contact-mode-observation-profile"
      },
      "name" : "Three-Month Contact Mode Observation Profile",
      "description" : "Observation profile for the modality used to obtain three-month follow-up information.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-three-month-contact-mode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/three-month-contact-mode-vs"
      },
      "name" : "ThreeMonthContactMode ValueSet",
      "description" : "Allowed coded values for ThreeMonthContactMode",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-three-month-contact-mode-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/three-month-contact-mode-cs"
      },
      "name" : "ThreeMonthContactModeCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/three-month-contact-mode-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-thrombectomy-complications-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/thrombectomy-complications-vs"
      },
      "name" : "ThrombectomyComplications ValueSet",
      "description" : "Allowed coded values for ThrombectomyComplications",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-thrombectomy-complications-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/thrombectomy-complications-cs"
      },
      "name" : "ThrombectomyComplicationsCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/thrombectomy-complications-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-tia-clinical-symptoms-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/tia-clinical-symptoms-observation-profile"
      },
      "name" : "TIA Clinical Symptoms Observation Profile",
      "description" : "Observation profile for TIA clinical symptoms and their recorded values.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-tia-clinical-symptoms-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/tia-clinical-symptoms-vs"
      },
      "name" : "TiaClinicalSymptoms ValueSet",
      "description" : "Allowed coded values for TiaClinicalSymptoms",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-tia-symptom-duration-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/tia-symptom-duration-vs"
      },
      "name" : "TiaSymptomDuration ValueSet",
      "description" : "Allowed coded values for TiaSymptomDuration",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-tia-symptom-duration-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/tia-symptom-duration-cs"
      },
      "name" : "TiaSymptomDurationCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-timing-metric-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/timing-metric-observation-profile"
      },
      "name" : "Timing Metric Observation Profile",
      "description" : "Observation profile for stroke time metrics and process indicators such as door-to-needle, door-to-groin, onset-to-door and related measures.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-timing-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/timing-cs"
      },
      "name" : "TimingCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/timing-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-timing-metric-codes-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/timing-metric-codes-vs"
      },
      "name" : "TimingMetricCodes ValueSet",
      "description" : "Allowed coded values for TimingMetricCodes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-timing-metric-codes-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/timing-metric-codes-cs"
      },
      "name" : "TimingMetricCodesCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/timing-metric-codes-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-unitof-measurement-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/unitof-measurement-vs"
      },
      "name" : "UnitofMeasurement ValueSet",
      "description" : "Allowed coded values for UnitofMeasurement",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-vital-sign-observation-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/vital-sign-observation-profile"
      },
      "name" : "Vital Sign Observation Profile",
      "description" : "Observation profile for vital signs in the acute stroke pathway, especially blood pressure components.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vital-signs-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vital-signs-vs"
      },
      "name" : "VitalSigns ValueSet",
      "description" : "Allowed coded values for VitalSigns",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-vital-signs-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/vital-signs-cs"
      },
      "name" : "VitalSignsCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/vital-signs-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vte-procedures-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vte-procedures-vs"
      },
      "name" : "VteProcedures ValueSet",
      "description" : "Allowed coded values for VteProcedures",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-vte-procedures-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/vte-procedures-cs"
      },
      "name" : "VteProceduresCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/vte-procedures-cs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-wakeup-stroke-ext.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/wakeup-stroke-ext"
      },
      "name" : "Wake-up stroke",
      "description" : "Boolean flag indicating that the stroke was first noticed after waking; onsetDateTime is then populated using the last-known-well/sleep timestamp in the builder.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-yes-no-not-required-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/yes-no-not-required-cs"
      },
      "name" : "YesNoNotRequiredCs CodeSystem",
      "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/yes-no-not-required-cs.",
      "isExample" : false
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "extensions.html",
        "name" : "extensions.html",
        "title" : "Extensions",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "modeling.html",
        "name" : "modeling.html",
        "title" : "Modeling",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "profiles.html",
        "name" : "profiles.html",
        "title" : "Profiles",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "resource-map.html",
        "name" : "resource-map.html",
        "title" : "Resource Map",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "terminology.html",
        "name" : "terminology.html",
        "title" : "Terminology",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2026"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ci-build"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/pagecontent"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "http://tecnomod-um.org/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```

# Base Stroke Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Base Stroke Observation Profile 

 
Base profile for RES-Q stroke observations. It requires final status, patient, encounter and observation code so derived profiles share a consistent registry context. 

**Usages:**

* Derived from this Profile: [Analytics Observation Profile](StructureDefinition-analitics-observation-profile.md), [Appointment Management Observation Profile](StructureDefinition-appointment-management-observation-profile.md), [Fever Observation Profile](StructureDefinition-fever-observation-profile.md), [Functional Score Observation Profile](StructureDefinition-functional-score-observation-profile.md)... Show 9 more, [Glucose >= 10 Observation Profile](StructureDefinition-glucose-ge10-observation-profile.md), [Highest Hyperglycemia Value Observation Profile](StructureDefinition-highest-hyperglycemia-value-observation-profile.md), [Hyperglycemia Observation Profile](StructureDefinition-hyperglycemia-observation-profile.md), [Patient Ventilated Observation Profile](StructureDefinition-patient-ventilated-observation-profile.md), [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md), [Three-Month Contact Mode Observation Profile](StructureDefinition-three-month-contact-mode-observation-profile.md), [TIA Clinical Symptoms Observation Profile](StructureDefinition-tia-clinical-symptoms-observation-profile.md), [Timing Metric Observation Profile](StructureDefinition-timing-metric-observation-profile.md) and [Vital Sign Observation Profile](StructureDefinition-vital-sign-observation-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/base-stroke-observation)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-base-stroke-observation.csv), [Excel](../StructureDefinition-base-stroke-observation.xlsx), [Schematron](../StructureDefinition-base-stroke-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "base-stroke-observation",
  "url" : "http://tecnomod-um.org/StructureDefinition/base-stroke-observation",
  "version" : "1.0.0",
  "name" : "BaseStrokeObservation",
  "title" : "Base Stroke Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T11:55:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Base profile for RES-Q stroke observations. It requires final status, patient, encounter and observation code so derived profiles share a consistent registry context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Provides a common observation scaffold for stroke scores, process metrics, laboratory values, imaging findings and follow-up measurements.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Final registry observation",
      "patternCode" : "final",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Registry observation concept",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "short" : "Index stroke encounter",
      "definition" : "Encounter that anchors the clinical fact to the acute stroke episode and hospital pathway.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    }]
  }
}

```

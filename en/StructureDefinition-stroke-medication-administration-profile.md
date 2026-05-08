# Stroke MedicationAdministration Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Stroke MedicationAdministration Profile 

 
Generic MedicationAdministration profile for acute stroke treatment medications, including thrombolysis, anticoagulant reversal, IV antihypertensives and other administrations. 

**Usages:**

* Derived from this Profile: [Insulin on Hyperglycemia MedicationAdministration Profile](StructureDefinition-insulin-on-hyperglycemia-medicationAdministration-profile.md), [Nimodipine MedicationAdministration Profile](StructureDefinition-nimodipine-medicationAdministration-profile.md) and [Paracetamol on Fever MedicationAdministration Profile](StructureDefinition-paracetamol-on-fever-medicationAdministration-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/stroke-medication-administration-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-stroke-medication-administration-profile.csv), [Excel](../StructureDefinition-stroke-medication-administration-profile.xlsx), [Schematron](../StructureDefinition-stroke-medication-administration-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-medication-administration-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/stroke-medication-administration-profile",
  "version" : "1.0.0",
  "name" : "StrokeMedicationAdministrationProfile",
  "title" : "Stroke MedicationAdministration Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T10:13:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Generic MedicationAdministration profile for acute stroke treatment medications, including thrombolysis, anticoagulant reversal, IV antihypertensives and other administrations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Records medication administrations that are part of the acute or post-acute stroke treatment pathway.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.extension",
      "path" : "MedicationAdministration.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.extension:requiredPostAcuteCare",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "requiredPostAcuteCare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/required-post-acute-care-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.extension:assessmentTiming",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "assessmentTiming",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/assessment-timing-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.partOf",
      "path" : "MedicationAdministration.partOf",
      "short" : "Procedure this administration supports",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.status",
      "path" : "MedicationAdministration.status",
      "short" : "Medication administration status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.statusReason",
      "path" : "MedicationAdministration.statusReason",
      "short" : "Reason medication was not given or status rationale",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/not-medication-reason-vs"
      }
    },
    {
      "id" : "MedicationAdministration.medication",
      "path" : "MedicationAdministration.medication",
      "short" : "Administered medication",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/medications-vs"
      }
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.encounter",
      "path" : "MedicationAdministration.encounter",
      "short" : "Index stroke encounter",
      "definition" : "Encounter that anchors the clinical fact to the acute stroke episode and hospital pathway.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.occurence[x]",
      "path" : "MedicationAdministration.occurence[x]",
      "short" : "Administration date/time",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.reason",
      "path" : "MedicationAdministration.reason",
      "short" : "Reason or clinical trigger for administration",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage",
      "path" : "MedicationAdministration.dosage",
      "short" : "Dose details",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose",
      "path" : "MedicationAdministration.dosage.dose",
      "mustSupport" : true
    }]
  }
}

```

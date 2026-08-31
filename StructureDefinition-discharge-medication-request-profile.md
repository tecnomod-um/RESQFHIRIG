# Discharge MedicationRequest Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Discharge MedicationRequest Profile**

## Resource Profile: Discharge MedicationRequest Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/discharge-medication-request-profile | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:DischargeMedicationRequestProfile |

 
MedicationRequest profile for medications prescribed or recommended at discharge after the index stroke encounter. 

 
Captures discharge medication orders needed for quality reporting and secondary prevention analysis. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-discharge-medication-request-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-discharge-medication-request-profile.csv), [Excel](StructureDefinition-discharge-medication-request-profile.xlsx), [Schematron](StructureDefinition-discharge-medication-request-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "discharge-medication-request-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/discharge-medication-request-profile",
  "version" : "1.0.0",
  "name" : "DischargeMedicationRequestProfile",
  "title" : "Discharge MedicationRequest Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T09:17:06+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "MedicationRequest profile for medications prescribed or recommended at discharge after the index stroke encounter.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Captures discharge medication orders needed for quality reporting and secondary prevention analysis.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Active discharge medication request",
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Medication order intent",
      "patternCode" : "order",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "short" : "Community/discharge medication category",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location",
          "code" : "community"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication",
      "path" : "MedicationRequest.medication",
      "short" : "Medication requested at discharge",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/medications-vs"
      }
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "short" : "Index stroke encounter",
      "definition" : "Encounter that anchors the clinical fact to the acute stroke episode and hospital pathway.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    }]
  }
}

```

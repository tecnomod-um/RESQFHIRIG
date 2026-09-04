# Anticoagulant Reversal MedicationAdministration Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anticoagulant Reversal MedicationAdministration Profile**

## Resource Profile: Anticoagulant Reversal MedicationAdministration Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/anticoagulant-reversal-medication-administration-profile | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:AnticoagulantReversalMedicationAdministrationProfile |

 
MedicationAdministration profile for anticoagulant reversal treatment in the acute stroke pathway, including completed and not-done reversal administrations. 

**Usages:**

* Refer to this Profile: [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-anticoagulant-reversal-medication-administration-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-anticoagulant-reversal-medication-administration-profile.csv), [Excel](StructureDefinition-anticoagulant-reversal-medication-administration-profile.xlsx), [Schematron](StructureDefinition-anticoagulant-reversal-medication-administration-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "anticoagulant-reversal-medication-administration-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/anticoagulant-reversal-medication-administration-profile",
  "version" : "1.0.0",
  "name" : "AnticoagulantReversalMedicationAdministrationProfile",
  "title" : "Anticoagulant Reversal MedicationAdministration Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T10:11:46+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "MedicationAdministration profile for anticoagulant reversal treatment in the acute stroke pathway, including completed and not-done reversal administrations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
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
  "baseDefinition" : "http://qualityregistry.org/StructureDefinition/stroke-medication-administration-profile",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration",
      "constraint" : [{
        "key" : "anticoagulant-reversal-not-done-must-have-status-reason",
        "severity" : "error",
        "human" : "If anticoagulant reversal was not done, a statusReason must be provided.",
        "expression" : "status != 'not-done' or statusReason.exists()",
        "source" : "http://qualityregistry.org/StructureDefinition/anticoagulant-reversal-medication-administration-profile"
      },
      {
        "key" : "anticoagulant-reversal-status-reason-only-when-not-done",
        "severity" : "warning",
        "human" : "statusReason should only be present when anticoagulant reversal was not done.",
        "expression" : "statusReason.exists().not() or status = 'not-done'",
        "source" : "http://qualityregistry.org/StructureDefinition/anticoagulant-reversal-medication-administration-profile"
      }]
    },
    {
      "id" : "MedicationAdministration.status",
      "path" : "MedicationAdministration.status",
      "short" : "Completed if reversal was administered; not-done if reversal was indicated/considered but not administered"
    },
    {
      "id" : "MedicationAdministration.statusReason",
      "path" : "MedicationAdministration.statusReason",
      "short" : "Reason anticoagulant reversal was not administered"
    },
    {
      "id" : "MedicationAdministration.medication",
      "path" : "MedicationAdministration.medication",
      "short" : "Anticoagulant reversal medication or substance",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/anticoagulant-reversal-vs"
      }
    },
    {
      "id" : "MedicationAdministration.occurence[x]",
      "path" : "MedicationAdministration.occurence[x]",
      "short" : "Date/time or interval when reversal was administered or considered not done"
    },
    {
      "id" : "MedicationAdministration.reason",
      "path" : "MedicationAdministration.reason",
      "short" : "Clinical reason for anticoagulant reversal, such as hemorrhagic stroke, bleeding, anticoagulant use or coagulation-related observation",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition"]
      }]
    }]
  }
}

```

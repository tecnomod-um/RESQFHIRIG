# Prior MedicationStatement Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prior MedicationStatement Profile**

## Resource Profile: Prior MedicationStatement Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/prior-medication-statement-profile | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:PriorMedicationStatementProfile |

 
MedicationStatement profile for medication taken before stroke onset, including adherence state when captured by the registry. 

 
Represents relevant pre-stroke medications and adherence as patient-reported or recorded medication use. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-prior-medication-statement-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-prior-medication-statement-profile.csv), [Excel](StructureDefinition-prior-medication-statement-profile.xlsx), [Schematron](StructureDefinition-prior-medication-statement-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "prior-medication-statement-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/prior-medication-statement-profile",
  "version" : "1.0.0",
  "name" : "PriorMedicationStatementProfile",
  "title" : "Prior MedicationStatement Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T11:21:15+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "MedicationStatement profile for medication taken before stroke onset, including adherence state when captured by the registry.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Represents relevant pre-stroke medications and adherence as patient-reported or recorded medication use.",
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
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
      "short" : "Recorded prior medication use",
      "patternCode" : "recorded",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication",
      "path" : "MedicationStatement.medication",
      "short" : "Medication used before stroke onset",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/medications-vs"
      }
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.encounter",
      "path" : "MedicationStatement.encounter",
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
      "id" : "MedicationStatement.adherence",
      "path" : "MedicationStatement.adherence",
      "short" : "Medication adherence details",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.adherence.code",
      "path" : "MedicationStatement.adherence.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/adherence-codes-vs"
      }
    }]
  }
}

```

# Three-Month Contact Communication Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Three-Month Contact Communication Profile**

## Resource Profile: Three-Month Contact Communication Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/three-month-communication-profile | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:ThreeMonthCommunicationProfile |

 
Communication profile for recording contact with the patient or caregiver at approximately three months after stroke. 

 
Captures follow-up contact status and contact modality for registry outcomes collected outside the acute encounter and referenced from the discharge patient summary plan of care. 

**Usages:**

* Refer to this Profile: [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-three-month-communication-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-three-month-communication-profile.csv), [Excel](StructureDefinition-three-month-communication-profile.xlsx), [Schematron](StructureDefinition-three-month-communication-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "three-month-communication-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/three-month-communication-profile",
  "version" : "1.0.0",
  "name" : "ThreeMonthCommunicationProfile",
  "title" : "Three-Month Contact Communication Profile",
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
  "description" : "Communication profile for recording contact with the patient or caregiver at approximately three months after stroke.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Captures follow-up contact status and contact modality for registry outcomes collected outside the acute encounter and referenced from the discharge patient summary plan of care.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Communication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Communication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Communication",
      "path" : "Communication"
    },
    {
      "id" : "Communication.status",
      "path" : "Communication.status",
      "short" : "Communication status",
      "mustSupport" : true
    },
    {
      "id" : "Communication.medium",
      "path" : "Communication.medium",
      "short" : "Follow-up contact mode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/three-month-contact-mode-vs"
      }
    },
    {
      "id" : "Communication.subject",
      "path" : "Communication.subject",
      "short" : "Patient contacted at follow-up",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.encounter",
      "path" : "Communication.encounter",
      "short" : "Index stroke encounter associated with the contact",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.sent",
      "path" : "Communication.sent",
      "short" : "Date/time contact was sent or performed",
      "mustSupport" : true
    }]
  }
}

```

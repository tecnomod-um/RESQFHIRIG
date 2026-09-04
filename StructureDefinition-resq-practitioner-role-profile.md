# RESQ PractitionerRole Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RESQ PractitionerRole Profile**

## Resource Profile: RESQ PractitionerRole Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/resq-practitioner-role-profile | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:RESQPractitionerRoleProfile |

 
PractitionerRole profile for recording the type of clinician or professional performing swallowing screening and related pathway activities. 

 
Captures performer role categories when the source registry records a role rather than an individually identified practitioner. 

**Usages:**

* Refer to this Profile: [Three-Month Follow-up Appointment Profile](StructureDefinition-follow-up-appointment-profile.md), [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md) and [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-resq-practitioner-role-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-resq-practitioner-role-profile.csv), [Excel](StructureDefinition-resq-practitioner-role-profile.xlsx), [Schematron](StructureDefinition-resq-practitioner-role-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resq-practitioner-role-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/resq-practitioner-role-profile",
  "version" : "1.0.0",
  "name" : "RESQPractitionerRoleProfile",
  "title" : "RESQ PractitionerRole Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T09:44:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "PractitionerRole profile for recording the type of clinician or professional performing swallowing screening and related pathway activities.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Captures performer role categories when the source registry records a role rather than an individually identified practitioner.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
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
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Performer role category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/screening-performer-vs"
      }
    }]
  }
}

```

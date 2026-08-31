# SymptomsCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SymptomsCs CodeSystem**

## CodeSystem: SymptomsCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/symptoms-cs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:SymptomsCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/symptoms-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TiaClinicalSymptoms ValueSet](ValueSet-tia-clinical-symptoms-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "symptoms-cs",
  "url" : "http://qualityregistry.org/CodeSystem/symptoms-cs",
  "version" : "1.0.0",
  "name" : "SymptomsCS",
  "title" : "SymptomsCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/symptoms-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "other-symptom",
    "display" : "Other Symptom"
  }]
}

```

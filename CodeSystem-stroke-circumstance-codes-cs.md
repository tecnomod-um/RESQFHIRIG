# StrokeCircumstanceCodesCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeCircumstanceCodesCs CodeSystem**

## CodeSystem: StrokeCircumstanceCodesCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/stroke-circumstance-codes-cs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:StrokeCircumstanceCodesCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-circumstance-codes-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StrokeCircumstance ValueSet](ValueSet-stroke-circumstance-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-circumstance-codes-cs",
  "url" : "http://qualityregistry.org/CodeSystem/stroke-circumstance-codes-cs",
  "version" : "1.0.0",
  "name" : "StrokeCircumstanceCodesCS",
  "title" : "StrokeCircumstanceCodesCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/stroke-circumstance-codes-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "wake-up",
    "display" : "Wake Up Stroke"
  },
  {
    "code" : "in-hospital",
    "display" : "In Hospital Stroke"
  }]
}

```

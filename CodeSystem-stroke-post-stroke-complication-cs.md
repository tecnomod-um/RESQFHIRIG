# StrokePostStrokeComplicationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokePostStrokeComplicationCs CodeSystem**

## CodeSystem: StrokePostStrokeComplicationCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:StrokePostStrokeComplicationCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PostStrokeComplicationsVS](ValueSet-post-stroke-complications-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-post-stroke-complication-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs",
  "version" : "1.0.0",
  "name" : "StrokePostStrokeComplicationCS",
  "title" : "StrokePostStrokeComplicationCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-09T09:09:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs.",
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
    "code" : "Sores",
    "display" : "Sores"
  },
  {
    "code" : "other",
    "display" : "Other Post-Stroke Complication"
  }]
}

```

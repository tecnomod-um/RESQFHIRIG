# StrokeTreatmentCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeTreatmentCs CodeSystem**

## CodeSystem: StrokeTreatmentCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/stroke-treatment-cs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:StrokeTreatmentCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-treatment-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StrokeTreatmentVS](ValueSet-stroke-treatment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-treatment-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-treatment-cs",
  "version" : "1.0.0",
  "name" : "StrokeTreatmentCS",
  "title" : "StrokeTreatmentCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:43:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-treatment-cs.",
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
    "code" : "other",
    "display" : "Other Treatment"
  },
  {
    "code" : "min-invasive",
    "display" : "Minimally Invasive Procedure"
  }]
}

```

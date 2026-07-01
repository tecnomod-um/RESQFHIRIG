# StrokeEtiologyCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeEtiologyCs CodeSystem**

## CodeSystem: StrokeEtiologyCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/stroke-etiology-cs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:StrokeEtiologyCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StrokeEtiologyVS](ValueSet-stroke-etiology-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-etiology-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-etiology-cs",
  "version" : "1.0.0",
  "name" : "StrokeEtiologyCS",
  "title" : "StrokeEtiologyCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-cs.",
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
    "code" : "atherosclerosis",
    "display" : "Stroke Etiology Atherosclerosis"
  },
  {
    "code" : "other",
    "display" : "Stroke Etiology Other"
  }]
}

```

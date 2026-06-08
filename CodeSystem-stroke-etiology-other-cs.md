# StrokeEtiologyOtherCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeEtiologyOtherCs CodeSystem**

## CodeSystem: StrokeEtiologyOtherCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/stroke-etiology-other-cs | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:StrokeEtiologyOtherCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-other-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StrokeEtiologyOtherVS](ValueSet-stroke-etiology-other-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-etiology-other-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-etiology-other-cs",
  "version" : "1.0.0",
  "name" : "StrokeEtiologyOtherCS",
  "title" : "StrokeEtiologyOtherCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-etiology-other-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "coagulation-disorder",
    "display" : "Coagulation system disorder"
  },
  {
    "code" : "hematological-disease",
    "display" : "Hematological disease"
  },
  {
    "code" : "fibromuscular-dysplasia",
    "display" : "Fibromuscular dysplasia"
  },
  {
    "code" : "radiation-induced-vasculopathy",
    "display" : "Radiation-induced vasculopathy"
  },
  {
    "code" : "CADASIL",
    "display" : "CADASIL"
  }]
}

```

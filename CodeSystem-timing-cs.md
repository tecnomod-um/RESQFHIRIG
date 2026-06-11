# TimingCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimingCs CodeSystem**

## CodeSystem: TimingCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/timing-cs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:TimingCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/timing-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NimodipinetimingVS](ValueSet-nimodipinetiming-vs.md)
* [ParacetamolOnFeverTimingVS](ValueSet-paracetamol-on-fever-timing-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "timing-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/timing-cs",
  "version" : "1.0.0",
  "name" : "TimingCS",
  "title" : "TimingCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T11:47:40+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/timing-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "within-24-hours",
    "display" : "Within 24 Hours"
  },
  {
    "code" : "within-1-hours",
    "display" : "Within 1 Hour"
  },
  {
    "code" : "after-1-hours",
    "display" : "After 1 Hour"
  }]
}

```

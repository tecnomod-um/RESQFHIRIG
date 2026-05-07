# InsulinHyperglycemiaTimeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InsulinHyperglycemiaTimeCs CodeSystem**

## CodeSystem: InsulinHyperglycemiaTimeCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs | *Version*:1.0.0 |
| Active as of 2026-05-07 | *Computable Name*:InsulinHyperglycemiaTimeCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [InsulinOnHyperglycemiaTimingVS](ValueSet-insulin-on-hyperglycemia-timing-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "insulin-hyperglycemia-time-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs",
  "version" : "1.0.0",
  "name" : "InsulinHyperglycemiaTimeCS",
  "title" : "InsulinHyperglycemiaTimeCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-07T11:15:53+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs.",
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
    "code" : "T1H",
    "display" : "Within 1 Hour"
  },
  {
    "code" : "after-1h",
    "display" : "After 1 Hour"
  }]
}

```

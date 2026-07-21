# DischargeDeptCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DischargeDeptCs CodeSystem**

## CodeSystem: DischargeDeptCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/discharge-dept-cs | *Version*:1.0.0 |
| Active as of 2026-07-21 | *Computable Name*:DischargeDeptCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-dept-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DischargeFacilityDepartmentVS](ValueSet-discharge-facility-department-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "discharge-dept-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/discharge-dept-cs",
  "version" : "1.0.0",
  "name" : "DischargeDeptCS",
  "title" : "DischargeDeptCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T08:04:16+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-dept-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "acute",
    "display" : "Acute Rehabilitation"
  },
  {
    "code" : "post-care",
    "display" : "Post Care Bed"
  },
  {
    "code" : "neurology",
    "display" : "Neurology"
  },
  {
    "code" : "another-department",
    "display" : "Another Department"
  }]
}

```

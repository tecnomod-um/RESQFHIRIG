# CarotidEndarterectomyTimingCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CarotidEndarterectomyTimingCs CodeSystem**

## CodeSystem: CarotidEndarterectomyTimingCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/carotid-endarterectomy-timing-cs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:CarotidEndarterectomyTimingCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/carotid-endarterectomy-timing-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CarotidEndarterectomyTimingVS](ValueSet-carotid-endarterectomy-timing-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "carotid-endarterectomy-timing-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/carotid-endarterectomy-timing-cs",
  "version" : "1.0.0",
  "name" : "CarotidEndarterectomyTimingCS",
  "title" : "CarotidEndarterectomyTimingCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/carotid-endarterectomy-timing-cs.",
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
    "code" : "in-24-hours",
    "display" : "Carotid endarterectomy in 24 hours"
  },
  {
    "code" : "hours-to-weeks",
    "display" : "Carotid endarterectomy 24 hours to 2 weeks"
  },
  {
    "code" : "after-weeks",
    "display" : "Carotid endarterectomy after 2 weeks"
  }]
}

```

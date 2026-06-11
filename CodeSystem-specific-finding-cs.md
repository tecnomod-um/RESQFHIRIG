# SpecificFindingCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SpecificFindingCs CodeSystem**

## CodeSystem: SpecificFindingCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/specific-finding-cs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:SpecificFindingCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/specific-finding-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpecificFindingVS](ValueSet-specific-finding-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "specific-finding-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/specific-finding-cs",
  "version" : "1.0.0",
  "name" : "SpecificFindingCS",
  "title" : "SpecificFindingCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T14:44:28+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/specific-finding-cs.",
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
    "code" : "no-finding",
    "display" : "No Finding"
  },
  {
    "code" : "atrial-fibrillation-flutter",
    "display" : "Atrial fibrillation/flutter"
  }]
}

```

# YesNoNotRequiredCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **YesNoNotRequiredCs CodeSystem**

## CodeSystem: YesNoNotRequiredCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/yes-no-not-required-cs | *Version*:1.0.0 |
| Active as of 2026-07-13 | *Computable Name*:YesNoNotRequiredCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/yes-no-not-required-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OccupationalTherapyVS](ValueSet-occupational-therapy-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "yes-no-not-required-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/yes-no-not-required-cs",
  "version" : "1.0.0",
  "name" : "YesNoNotRequiredCS",
  "title" : "YesNoNotRequiredCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-13T09:30:27+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/yes-no-not-required-cs.",
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
    "code" : "not-required",
    "display" : "Not Required"
  },
  {
    "code" : "recommended",
    "display" : "Recommended"
  }]
}

```

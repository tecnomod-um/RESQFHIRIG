# IchTreatmentCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IchTreatmentCs CodeSystem**

## CodeSystem: IchTreatmentCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/ich-treatment-cs | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:IchTreatmentCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/ich-treatment-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IchTreatmentVS](ValueSet-ich-treatment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ich-treatment-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/ich-treatment-cs",
  "version" : "1.0.0",
  "name" : "IchTreatmentCS",
  "title" : "IchTreatmentCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T10:51:55+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/ich-treatment-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "other",
    "display" : "Other Treatment"
  }]
}

```

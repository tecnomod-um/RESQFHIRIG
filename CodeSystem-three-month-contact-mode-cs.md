# ThreeMonthContactModeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ThreeMonthContactModeCs CodeSystem**

## CodeSystem: ThreeMonthContactModeCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/three-month-contact-mode-cs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:ThreeMonthContactModeCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/three-month-contact-mode-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ThreeMonthContactMode ValueSet](ValueSet-three-month-contact-mode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "three-month-contact-mode-cs",
  "url" : "http://qualityregistry.org/CodeSystem/three-month-contact-mode-cs",
  "version" : "1.0.0",
  "name" : "ThreeMonthContactModeCS",
  "title" : "ThreeMonthContactModeCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T09:17:06+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/three-month-contact-mode-cs.",
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
    "code" : "visit-clinic",
    "display" : "Visit to Clinic"
  },
  {
    "code" : "mobile-app",
    "display" : "Mobile application software"
  },
  {
    "code" : "no-response",
    "display" : "No Response"
  },
  {
    "code" : "not-contacted",
    "display" : "Not Contacted"
  }]
}

```

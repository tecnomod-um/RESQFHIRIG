# FirstContactPlaceCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FirstContactPlaceCs CodeSystem**

## CodeSystem: FirstContactPlaceCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/first-contact-place-cs | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:FirstContactPlaceCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/first-contact-place-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "first-contact-place-cs",
  "url" : "http://qualityregistry.org/CodeSystem/first-contact-place-cs",
  "version" : "1.0.0",
  "name" : "FirstContactPlaceCS",
  "title" : "FirstContactPlaceCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T09:44:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/first-contact-place-cs.",
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
    "code" : "HRAD",
    "display" : "radiology unit"
  },
  {
    "code" : "ER",
    "display" : "Emergency room"
  },
  {
    "code" : "OF",
    "display" : "Outpatient facility"
  }]
}

```

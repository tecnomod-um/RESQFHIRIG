# LocationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LocationCs CodeSystem**

## CodeSystem: LocationCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/location-cs | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:LocationCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/location-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AdmissionDepartment ValueSet](ValueSet-admission-department-vs.md)
* [FirstContactPlace ValueSet](ValueSet-first-contact-place-vs.md)
* [IvtApplicationDepartment ValueSet](ValueSet-ivt-application-department-vs.md)
* [Locations ValueSet](ValueSet-locations-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "location-cs",
  "url" : "http://qualityregistry.org/CodeSystem/location-cs",
  "version" : "1.0.0",
  "name" : "LocationCS",
  "title" : "LocationCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T10:11:46+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/location-cs.",
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
    "code" : "other",
    "display" : "Other Location"
  },
  {
    "code" : "unknown",
    "display" : "Unknown Location"
  }]
}

```

# FirstContactPlaceCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: FirstContactPlaceCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/first-contact-place-cs. 

This Code system is referenced in the definition of the following value sets:

* [FirstContactPlaceVS](ValueSet-first-contact-place-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "first-contact-place-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/first-contact-place-cs",
  "version" : "1.0.0",
  "name" : "FirstContactPlaceCS",
  "title" : "FirstContactPlaceCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T10:13:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/first-contact-place-cs.",
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

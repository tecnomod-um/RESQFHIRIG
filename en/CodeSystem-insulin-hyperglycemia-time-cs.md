# InsulinHyperglycemiaTimeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: InsulinHyperglycemiaTimeCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs. 

This Code system is referenced in the definition of the following value sets:

* [InsulinOnHyperglycemiaTimingVS](ValueSet-insulin-on-hyperglycemia-timing-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-05-08T09:03:17+00:00",
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

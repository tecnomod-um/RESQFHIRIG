# SymptomsCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: SymptomsCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/symptoms-cs. 

This Code system is referenced in the definition of the following value sets:

* [TiaClinicalSymptomsVS](ValueSet-tia-clinical-symptoms-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "symptoms-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/symptoms-cs",
  "version" : "1.0.0",
  "name" : "SymptomsCS",
  "title" : "SymptomsCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T14:50:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/symptoms-cs.",
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
    "code" : "other-symptom",
    "display" : "Other Symptom"
  }]
}

```

# TiaSymptomDurationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: TiaSymptomDurationCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs. 

This Code system is referenced in the definition of the following value sets:

* [TiaSymptomDurationVS](ValueSet-tia-symptom-duration-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tia-symptom-duration-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs",
  "version" : "1.0.0",
  "name" : "TiaSymptomDurationCS",
  "title" : "TiaSymptomDurationCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T10:24:12+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs.",
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
    "code" : "duration-lt-10-minutes",
    "display" : "Duration < 10 Minutes"
  },
  {
    "code" : "duration-between-10-and-60-minutes",
    "display" : "Duration Between 10 and 60 Minutes"
  },
  {
    "code" : "duration-gt-60-minutes",
    "display" : "Duration > 60 Minutes"
  }]
}

```

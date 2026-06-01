# FunctionalScoreCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: FunctionalScoreCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/functional-score-cs. 

This Code system is referenced in the definition of the following value sets:

* [FunctionalScoreVS](ValueSet-functional-score-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "functional-score-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/functional-score-cs",
  "version" : "1.0.0",
  "name" : "FunctionalScoreCS",
  "title" : "FunctionalScoreCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/functional-score-cs.",
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
    "code" : "ICH-score",
    "display" : "Intracerebral Hemorrhage Score"
  },
  {
    "code" : "hunt-hess",
    "display" : "Hunt and Hess Score"
  },
  {
    "code" : "thrive",
    "display" : "Totaled Health Risks in Vascular Events Score"
  }]
}

```

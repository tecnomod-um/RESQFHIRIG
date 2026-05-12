# StrokePostStrokeComplicationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: StrokePostStrokeComplicationCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs. 

This Code system is referenced in the definition of the following value sets:

* [PostStrokeComplicationsVS](ValueSet-post-stroke-complications-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-post-stroke-complication-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs",
  "version" : "1.0.0",
  "name" : "StrokePostStrokeComplicationCS",
  "title" : "StrokePostStrokeComplicationCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T07:59:38+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs.",
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
    "code" : "Sores",
    "display" : "Sores"
  },
  {
    "code" : "other",
    "display" : "Other Post-Stroke Complication"
  }]
}

```

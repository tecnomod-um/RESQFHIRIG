# StrokeArrivalModeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: StrokeArrivalModeCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-arrival-mode-cs. 

This Code system is referenced in the definition of the following value sets:

* [AdmissionPathwayVS](ValueSet-admission-pathway-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-arrival-mode-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-arrival-mode-cs",
  "version" : "1.0.0",
  "name" : "StrokeArrivalModeCS",
  "title" : "StrokeArrivalModeCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-15T10:10:20+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-arrival-mode-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "ems-gp",
    "display" : "EMS from GP"
  },
  {
    "code" : "priv-transport",
    "display" : "Private Transportation"
  },
  {
    "code" : "stroke-center",
    "display" : "Stroke Center"
  },
  {
    "code" : "another-hosp",
    "display" : "Another Hospital"
  },
  {
    "code" : "priv-transport-gp",
    "display" : "Private Transportation from GP"
  },
  {
    "code" : "in-hospital-stroke",
    "display" : "In-Hospital Stroke"
  }]
}

```

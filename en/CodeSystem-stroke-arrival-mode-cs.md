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
  "date" : "2026-06-01T07:47:29+00:00",
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
  "count" : 7,
  "concept" : [{
    "code" : "ems-home",
    "display" : "patient arrived by EMS/ambulance from home/scene"
  },
  {
    "code" : "ems-gp",
    "display" : "patient arrived by EMS/ambulance from general practitioner/outpatient office/community service"
  },
  {
    "code" : "priv-transport",
    "display" : "patient arrived by private transportation from home/scene"
  },
  {
    "code" : "stroke-center",
    "display" : "patient arrived from stroke treating center"
  },
  {
    "code" : "another-hosp",
    "display" : "patient arrived from hospital that is not stroke treating center"
  },
  {
    "code" : "priv-transport-gp",
    "display" : "patient arrived by private transportation from general practitioner/outpatient office/community service"
  },
  {
    "code" : "in-hospital-stroke",
    "display" : "stroke while hospitalized in another department of the same hospital"
  }]
}

```

# PerfusionVolumeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: PerfusionVolumeCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/perfusion-volume-cs. 

This Code system is referenced in the definition of the following value sets:

* [SpecificFindingVS](ValueSet-specific-finding-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "perfusion-volume-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/perfusion-volume-cs",
  "version" : "1.0.0",
  "name" : "PerfusionVolumeCS",
  "title" : "PerfusionVolumeCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/perfusion-volume-cs.",
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
    "code" : "perf-volume",
    "display" : "Perfusion Volume"
  },
  {
    "code" : "hypo-volume",
    "display" : "Hypoperfusion Volume"
  }]
}

```

# PerfusionVolumeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PerfusionVolumeCs CodeSystem**

## CodeSystem: PerfusionVolumeCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/perfusion-volume-cs | *Version*:1.0.0 |
| Active as of 2026-06-12 | *Computable Name*:PerfusionVolumeCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/perfusion-volume-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpecificFindingVS](ValueSet-specific-finding-vs.md)



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
  "date" : "2026-06-12T09:34:13+00:00",
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

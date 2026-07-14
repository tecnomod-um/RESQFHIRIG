# SwallowProceduresCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SwallowProceduresCs CodeSystem**

## CodeSystem: SwallowProceduresCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/swallow-procedures-cs | *Version*:1.0.0 |
| Active as of 2026-07-14 | *Computable Name*:SwallowProceduresCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/swallow-procedures-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SwallowingScreeningTypeVS](ValueSet-swallowing-screening-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "swallow-procedures-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/swallow-procedures-cs",
  "version" : "1.0.0",
  "name" : "SwallowProceduresCS",
  "title" : "SwallowProceduresCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-14T07:23:58+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/swallow-procedures-cs.",
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
    "code" : "assist",
    "display" : "ASSIST"
  },
  {
    "code" : "other",
    "display" : "Other Swallow Procedure"
  },
  {
    "code" : "v-vst",
    "display" : "V-VST"
  }]
}

```

# ProcedureTimingContextCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcedureTimingContextCs CodeSystem**

## CodeSystem: ProcedureTimingContextCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs | *Version*:1.0.0 |
| Active as of 2026-07-14 | *Computable Name*:ProcedureTimingContextCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PostAcuteCareVS](ValueSet-post-acute-care-vs.md)
* [ProcedureTimingContextVS](ValueSet-procedure-timing-context-vs.md)
* [SwallowingScreeningTimingVS](ValueSet-swallowing-screening-timing-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "procedure-timing-context-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs",
  "version" : "1.0.0",
  "name" : "ProcedureTimingContextCS",
  "title" : "ProcedureTimingContextCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs.",
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
    "code" : "post-acute",
    "display" : "Acute Phase (<24h)"
  },
  {
    "code" : "unknown",
    "display" : "Unknown/Not Applicable"
  }]
}

```

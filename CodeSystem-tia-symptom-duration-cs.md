# TiaSymptomDurationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TiaSymptomDurationCs CodeSystem**

## CodeSystem: TiaSymptomDurationCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:TiaSymptomDurationCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TiaSymptomDurationVS](ValueSet-tia-symptom-duration-vs.md)



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
  "date" : "2026-07-01T13:43:23+00:00",
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

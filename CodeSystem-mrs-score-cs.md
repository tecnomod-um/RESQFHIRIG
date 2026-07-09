# MrsScoreCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MrsScoreCs CodeSystem**

## CodeSystem: MrsScoreCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/mrs-score-cs | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:MrsScoreCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mrs-score-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MRsScoreVS](ValueSet-mrs-score-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mrs-score-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/mrs-score-cs",
  "version" : "1.0.0",
  "name" : "MrsScoreCS",
  "title" : "MrsScoreCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-09T09:09:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mrs-score-cs.",
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
    "code" : "0",
    "display" : "No symptoms at all"
  },
  {
    "code" : "1",
    "display" : "No significant disability despite symptoms; able to carry out all usual duties and activities"
  },
  {
    "code" : "2",
    "display" : "Slight disability; unable to carry out all previous activities, but able to look after own affairs without assistance"
  },
  {
    "code" : "3",
    "display" : "Moderate disability; requiring some help, but able to walk without assistance"
  },
  {
    "code" : "4",
    "display" : "Moderately severe disability; unable to walk without assistance and unable to attend to own bodily needs without assistance"
  },
  {
    "code" : "5",
    "display" : "Severe disability; bedridden, incontinent and requiring constant nursing care and attention"
  },
  {
    "code" : "6",
    "display" : "Dead"
  }]
}

```

# MticiScoreCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: MticiScoreCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mtici-score-cs. 

This Code system is referenced in the definition of the following value sets:

* [MTiciScoreVS](ValueSet-mtici-score-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mtici-score-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/mtici-score-cs",
  "version" : "1.0.0",
  "name" : "MticiScoreCS",
  "title" : "MticiScoreCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T09:35:04+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/mtici-score-cs.",
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
    "display" : "Grade 0: No perfusion"
  },
  {
    "code" : "1",
    "display" : "Grade 1: Antegrade reperfusion past the initial occlusion, but limited distal branch filling with little or slow distal reperfusion"
  },
  {
    "code" : "2a",
    "display" : "Grade 2a: Antegrade reperfusion of less than half of the occluded target artery previously ischemic territory"
  },
  {
    "code" : "2b",
    "display" : "Grade 2b: Antegrade reperfusion of more than half of the previously occluded target artery ischemic territory"
  },
  {
    "code" : "2c",
    "display" : "Grade 2c: Near complete perfusion except for slow flow or distal emboli in a few distal cortical vessels"
  },
  {
    "code" : "3",
    "display" : "Grade 3: Complete antegrade reperfusion of the previously occluded target artery ischemic territory, with absence of visualized occlusion in all distal branches"
  },
  {
    "code" : "not-confirmed",
    "display" : "Occlusion Not Confirmed"
  }]
}

```

# MTiciScore ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: MTiciScore ValueSet 

 
Allowed coded values for MTiciScore, generated from enum_models.py. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mtici-score-vs",
  "url" : "http://tecnomod-um.org/ValueSet/mtici-score-vs",
  "version" : "1.0.0",
  "name" : "MTiciScoreVS",
  "title" : "MTiciScore ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T09:03:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for MTiciScore, generated from enum_models.py.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/mtici-score-cs",
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
    }]
  }
}

```

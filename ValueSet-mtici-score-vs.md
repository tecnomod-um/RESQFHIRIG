# MTiciScore ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTiciScore ValueSet**

## ValueSet: MTiciScore ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/mtici-score-vs | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:MTiciScoreVS |

 
Allowed coded values for MTiciScore 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



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
  "date" : "2026-06-08T11:21:15+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for MTiciScore",
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

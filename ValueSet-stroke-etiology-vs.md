# StrokeEtiology ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeEtiology ValueSet**

## ValueSet: StrokeEtiology ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/stroke-etiology-vs | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:StrokeEtiologyVS |

 
Allowed coded values for StrokeEtiology 

 **References** 

* [Ischemic stroke etiology](StructureDefinition-ischemic-stroke-etiology-ext.md)
* [Ischemic stroke etiology known/unknown coded state](StructureDefinition-ischemic-stroke-etiology-known-ext.md)

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
  "id" : "stroke-etiology-vs",
  "url" : "http://tecnomod-um.org/ValueSet/stroke-etiology-vs",
  "version" : "1.0.0",
  "name" : "StrokeEtiologyVS",
  "title" : "StrokeEtiology ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T09:55:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for StrokeEtiology",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "413758000",
        "display" : "Cardioembolic stroke (disorder)"
      },
      {
        "code" : "230698000",
        "display" : "Lacunar infarction (disorder)"
      },
      {
        "code" : "16891111000119104",
        "display" : "Cryptogenic stroke (disorder)"
      },
      {
        "code" : "122459003",
        "display" : "Dissection of artery (disorder)"
      },
      {
        "code" : "1263550001",
        "display" : "Infarction of brain due to migraine (disorder)"
      },
      {
        "code" : "69116000",
        "display" : "Moyamoya disease (disorder)"
      },
      {
        "code" : "127040003",
        "display" : "Sickle cell-hemoglobin SS disease (disorder)"
      },
      {
        "code" : "373068000",
        "display" : "Undetermined (qualifier value)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-etiology-cs",
      "concept" : [{
        "code" : "atherosclerosis",
        "display" : "Stroke Etiology Atherosclerosis"
      },
      {
        "code" : "other",
        "display" : "Stroke Etiology Other"
      }]
    }]
  }
}

```

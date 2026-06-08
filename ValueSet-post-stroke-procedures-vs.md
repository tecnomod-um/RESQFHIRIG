# PostStrokeProcedures ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PostStrokeProcedures ValueSet**

## ValueSet: PostStrokeProcedures ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/post-stroke-procedures-vs | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:PostStrokeProceduresVS |

 
Allowed coded values for PostStrokeProcedures 

 **References** 

* [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md)

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
  "id" : "post-stroke-procedures-vs",
  "url" : "http://tecnomod-um.org/ValueSet/post-stroke-procedures-vs",
  "version" : "1.0.0",
  "name" : "PostStrokeProceduresVS",
  "title" : "PostStrokeProcedures ValueSet",
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
  "description" : "Allowed coded values for PostStrokeProcedures",
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
        "code" : "722138006",
        "display" : "Physiotherapy (qualifier value)"
      },
      {
        "code" : "84478008",
        "display" : "Occupational therapy (regime/therapy)"
      },
      {
        "code" : "5154007",
        "display" : "Speech therapy (regime/therapy)"
      },
      {
        "code" : "225323000",
        "display" : "Smoking cessation education (procedure)"
      },
      {
        "code" : "47020004",
        "display" : "Ventriculoperitoneal shunt (procedure)"
      }]
    }]
  }
}

```

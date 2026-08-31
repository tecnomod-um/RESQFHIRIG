# StrokeType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeType ValueSet**

## ValueSet: StrokeType ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/stroke-type-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:StrokeTypeVS |

 
Allowed coded values for StrokeType 

 **References** 

* Included into [Stroke Diagnosis Code ValueSet](ValueSet-stroke-diagnosis-code-vs.md)

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
  "id" : "stroke-type-vs",
  "url" : "http://qualityregistry.org/ValueSet/stroke-type-vs",
  "version" : "1.0.0",
  "name" : "StrokeTypeVS",
  "title" : "StrokeType ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for StrokeType",
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
        "code" : "422504002",
        "display" : "Ischemic stroke (disorder)"
      },
      {
        "code" : "274100004",
        "display" : "Cerebral hemorrhage (disorder)"
      },
      {
        "code" : "266257000",
        "display" : "Transient ischemic attack (disorder)"
      },
      {
        "code" : "21454007",
        "display" : "Subarachnoid intracranial hemorrhage (disorder)"
      },
      {
        "code" : "95455008",
        "display" : "Thrombosis of cerebral veins (disorder)"
      },
      {
        "code" : "230690007",
        "display" : "Cerebrovascular accident (disorder)"
      },
      {
        "code" : "373068000",
        "display" : "Undetermined (qualifier value)"
      }]
    }]
  }
}

```

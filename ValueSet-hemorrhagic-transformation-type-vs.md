# HemorrhagicTransformationType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HemorrhagicTransformationType ValueSet**

## ValueSet: HemorrhagicTransformationType ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/hemorrhagic-transformation-type-vs | *Version*:1.0.0 |
| Active as of 2026-07-14 | *Computable Name*:HemorrhagicTransformationTypeVS |

 
Allowed coded values for HemorrhagicTransformationType 

 **References** 

* Included into [SpecificFindingValueVS](ValueSet-specific-finding-value-vs.md)

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
  "id" : "hemorrhagic-transformation-type-vs",
  "url" : "http://tecnomod-um.org/ValueSet/hemorrhagic-transformation-type-vs",
  "version" : "1.0.0",
  "name" : "HemorrhagicTransformationTypeVS",
  "title" : "HemorrhagicTransformationType ValueSet",
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
  "description" : "Allowed coded values for HemorrhagicTransformationType",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/hemorrhagic-transformation-type-cs",
      "concept" : [{
        "code" : "hi-type-1",
        "display" : "HI type 1"
      },
      {
        "code" : "hi-type-2",
        "display" : "HI type 2"
      },
      {
        "code" : "ph-type-1",
        "display" : "PH type 1"
      },
      {
        "code" : "ph-type-2",
        "display" : "PH type 2"
      }]
    }]
  }
}

```

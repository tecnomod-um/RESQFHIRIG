# SwallowingScreeningDone ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SwallowingScreeningDone ValueSet**

## ValueSet: SwallowingScreeningDone ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/swallowing-screening-done-vs | *Version*:1.0.0 |
| Active as of 2026-07-21 | *Computable Name*:SwallowingScreeningDoneVS |

 
Allowed coded values for SwallowingScreeningDone 

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
  "id" : "swallowing-screening-done-vs",
  "url" : "http://tecnomod-um.org/ValueSet/swallowing-screening-done-vs",
  "version" : "1.0.0",
  "name" : "SwallowingScreeningDoneVS",
  "title" : "SwallowingScreeningDone ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T08:04:16+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for SwallowingScreeningDone",
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
        "code" : "385658003",
        "display" : "Done (qualifier value)"
      },
      {
        "code" : "385660001",
        "display" : "Not done (qualifier value)"
      },
      {
        "code" : "385432009",
        "display" : "Not applicable (qualifier value)"
      }]
    }]
  }
}

```

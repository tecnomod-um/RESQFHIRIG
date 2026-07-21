# GlasgowComaScale ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GlasgowComaScale ValueSet**

## ValueSet: GlasgowComaScale ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/glasgow-coma-scale-vs | *Version*:1.0.0 |
| Active as of 2026-07-21 | *Computable Name*:GlasgowComaScaleVS |

 
Allowed coded values for GlasgowComaScale 

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
  "id" : "glasgow-coma-scale-vs",
  "url" : "http://tecnomod-um.org/ValueSet/glasgow-coma-scale-vs",
  "version" : "1.0.0",
  "name" : "GlasgowComaScaleVS",
  "title" : "GlasgowComaScale ValueSet",
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
  "description" : "Allowed coded values for GlasgowComaScale",
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
        "code" : "26394007",
        "display" : "Glasgow coma scale, 3 (finding)"
      },
      {
        "code" : "112110007",
        "display" : "Glasgow coma scale, 4 (finding)"
      },
      {
        "code" : "74957005",
        "display" : "Glasgow coma scale, 5 (finding)"
      },
      {
        "code" : "80072008",
        "display" : "Glasgow coma scale, 6 (finding)"
      },
      {
        "code" : "18136007",
        "display" : "Glasgow coma scale, 7 (finding)"
      },
      {
        "code" : "32856008",
        "display" : "Glasgow coma scale, 8 (finding)"
      },
      {
        "code" : "5999000",
        "display" : "Glasgow coma scale, 9 (finding)"
      },
      {
        "code" : "1184008",
        "display" : "Glasgow coma scale, 10 (finding)"
      },
      {
        "code" : "61102007",
        "display" : "Glasgow coma scale, 11 (finding)"
      },
      {
        "code" : "91234001",
        "display" : "Glasgow coma scale, 12 (finding)"
      },
      {
        "code" : "54185009",
        "display" : "Glasgow coma scale, 13 (finding)"
      },
      {
        "code" : "26734006",
        "display" : "Glasgow coma scale, 14 (finding)"
      },
      {
        "code" : "70040003",
        "display" : "Glasgow coma scale, 15 (finding)"
      },
      {
        "code" : "386557006",
        "display" : "Glasgow coma scale finding (finding)"
      },
      {
        "code" : "248241002",
        "display" : "Glasgow coma score (observable entity)"
      }]
    }]
  }
}

```

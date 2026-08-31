# UnitofMeasurement ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UnitofMeasurement ValueSet**

## ValueSet: UnitofMeasurement ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/unitof-measurement-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:UnitofMeasurementVS |

 
Allowed coded values for UnitofMeasurement 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "unitof-measurement-vs",
  "url" : "http://qualityregistry.org/ValueSet/unitof-measurement-vs",
  "version" : "1.0.0",
  "name" : "UnitofMeasurementVS",
  "title" : "UnitofMeasurement ValueSet",
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
  "description" : "Allowed coded values for UnitofMeasurement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://ucum.org/ucum",
      "concept" : [{
        "code" : "min",
        "display" : "minute"
      },
      {
        "code" : "mm[Hg]",
        "display" : "millimeter Mercury column"
      },
      {
        "code" : "mmol/L",
        "display" : "millimole per liter"
      },
      {
        "code" : "mL",
        "display" : "milliliter"
      },
      {
        "code" : "mg",
        "display" : "milligram"
      },
      {
        "code" : "d",
        "display" : "day"
      }]
    }]
  }
}

```

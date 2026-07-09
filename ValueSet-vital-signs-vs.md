# VitalSigns ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VitalSigns ValueSet**

## ValueSet: VitalSigns ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/vital-signs-vs | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:VitalSignsVS |

 
Allowed coded values for VitalSigns 

 **References** 

* [Vital Sign Observation Profile](StructureDefinition-vital-sign-observation-profile.md)

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
  "id" : "vital-signs-vs",
  "url" : "http://tecnomod-um.org/ValueSet/vital-signs-vs",
  "version" : "1.0.0",
  "name" : "VitalSignsVS",
  "title" : "VitalSigns ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-09T09:09:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for VitalSigns",
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
        "code" : "271649006",
        "display" : "Systolic blood pressure (observable entity)"
      },
      {
        "code" : "271650006",
        "display" : "Diastolic blood pressure (observable entity)"
      },
      {
        "code" : "61746007",
        "display" : "Taking patient vital signs (procedure)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/vital-signs-cs",
      "concept" : [{
        "code" : "highest-sys-bp",
        "display" : "Highest Systolic Blood Pressure"
      }]
    }]
  }
}

```

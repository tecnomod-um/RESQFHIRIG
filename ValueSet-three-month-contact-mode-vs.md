# ThreeMonthContactMode ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ThreeMonthContactMode ValueSet**

## ValueSet: ThreeMonthContactMode ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/three-month-contact-mode-vs | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:ThreeMonthContactModeVS |

 
Allowed coded values for ThreeMonthContactMode 

 **References** 

* [Three-Month Contact Mode Observation Profile](StructureDefinition-three-month-contact-mode-observation-profile.md)

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
  "id" : "three-month-contact-mode-vs",
  "url" : "http://tecnomod-um.org/ValueSet/three-month-contact-mode-vs",
  "version" : "1.0.0",
  "name" : "ThreeMonthContactModeVS",
  "title" : "ThreeMonthContactMode ValueSet",
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
  "description" : "Allowed coded values for ThreeMonthContactMode",
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
        "code" : "466583009",
        "display" : "Video conferencing telemedicine system (physical object)"
      },
      {
        "code" : "706690007",
        "display" : "Web-based application software (physical object)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/three-month-contact-mode-cs",
      "concept" : [{
        "code" : "visit-clinic",
        "display" : "Visit to Clinic"
      },
      {
        "code" : "mobile-app",
        "display" : "Mobile application software"
      },
      {
        "code" : "no-response",
        "display" : "No Response"
      },
      {
        "code" : "not-contacted",
        "display" : "Not Contacted"
      }]
    }]
  }
}

```

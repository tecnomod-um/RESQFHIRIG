# Nimodipinetiming ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nimodipinetiming ValueSet**

## ValueSet: Nimodipinetiming ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/nimodipinetiming-vs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:NimodipinetimingVS |

 
Allowed coded values for Nimodipinetiming 

 **References** 

* [Nimodipine MedicationAdministration Profile](StructureDefinition-nimodipine-medication-administration-profile.md)

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
  "id" : "nimodipinetiming-vs",
  "url" : "http://tecnomod-um.org/ValueSet/nimodipinetiming-vs",
  "version" : "1.0.0",
  "name" : "NimodipinetimingVS",
  "title" : "Nimodipinetiming ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T11:47:40+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for Nimodipinetiming",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/timing-cs",
      "concept" : [{
        "code" : "within-24-hours",
        "display" : "Within 24 Hours"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "281381003",
        "display" : "More than 24 hours after admission (qualifier value)"
      }]
    }]
  }
}

```

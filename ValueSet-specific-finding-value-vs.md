# Specific Finding Value ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specific Finding Value ValueSet**

## ValueSet: Specific Finding Value ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/specific-finding-value-vs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:SpecificFindingValueVS |

 
Allowed coded values used as Observation.valueCodeableConcept for specific finding observations. 

 **References** 

* [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md)

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
  "id" : "specific-finding-value-vs",
  "url" : "http://tecnomod-um.org/ValueSet/specific-finding-value-vs",
  "version" : "1.0.0",
  "name" : "SpecificFindingValueVS",
  "title" : "Specific Finding Value ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:43:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values used as Observation.valueCodeableConcept for specific finding observations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://tecnomod-um.org/ValueSet/mtici-score-vs"]
    },
    {
      "valueSet" : ["http://tecnomod-um.org/ValueSet/atrial-fibrillation-or-flutter-vs"]
    },
    {
      "valueSet" : ["http://tecnomod-um.org/ValueSet/carotid-stenosis-level-vs"]
    },
    {
      "valueSet" : ["http://tecnomod-um.org/ValueSet/hemorrhagic-transformation-type-vs"]
    }]
  }
}

```

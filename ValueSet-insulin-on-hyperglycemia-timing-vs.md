# InsulinOnHyperglycemiaTiming ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InsulinOnHyperglycemiaTiming ValueSet**

## ValueSet: InsulinOnHyperglycemiaTiming ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/insulin-on-hyperglycemia-timing-vs | *Version*:1.0.0 |
| Active as of 2026-07-13 | *Computable Name*:InsulinOnHyperglycemiaTimingVS |

 
Allowed coded values for InsulinOnHyperglycemiaTiming 

 **References** 

* [Insulin on Hyperglycemia MedicationAdministration Profile](StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.md)

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
  "id" : "insulin-on-hyperglycemia-timing-vs",
  "url" : "http://tecnomod-um.org/ValueSet/insulin-on-hyperglycemia-timing-vs",
  "version" : "1.0.0",
  "name" : "InsulinOnHyperglycemiaTimingVS",
  "title" : "InsulinOnHyperglycemiaTiming ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-13T09:21:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for InsulinOnHyperglycemiaTiming",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs",
      "concept" : [{
        "code" : "T1H",
        "display" : "Within 1 Hour"
      },
      {
        "code" : "after-1h",
        "display" : "After 1 Hour"
      }]
    }]
  }
}

```

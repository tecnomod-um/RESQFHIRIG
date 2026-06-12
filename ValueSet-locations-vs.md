# Locations ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Locations ValueSet**

## ValueSet: Locations ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType | *Version*:1.0.0 |
| Active as of 2026-06-12 | *Computable Name*:LocationsVS |

 
Allowed coded values for Locations 

 **References** 

* [Location](http://hl7.org/fhir/R5/location.html)
* [ServiceRequest](http://hl7.org/fhir/R5/servicerequest.html)
* [RESQ Location Profile](StructureDefinition-resq-location-profile.md)

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
  "id" : "locations-vs",
  "url" : "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType",
  "version" : "1.0.0",
  "name" : "LocationsVS",
  "title" : "Locations ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T09:34:13+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for Locations",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "concept" : [{
        "code" : "ER",
        "display" : "Emergency room"
      },
      {
        "code" : "OF",
        "display" : "Outpatient facility"
      },
      {
        "code" : "HRAD",
        "display" : "radiology unit"
      },
      {
        "code" : "NCCS",
        "display" : "Neurology critical care and stroke unit"
      },
      {
        "code" : "ICU",
        "display" : "Intensive Care Unit"
      },
      {
        "code" : "NS",
        "display" : "Neurosurgery unit"
      },
      {
        "code" : "GIM",
        "display" : "General internal medicine clinic"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/location-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Location"
      }]
    }]
  }
}

```

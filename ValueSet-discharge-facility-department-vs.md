# DischargeFacilityDepartment ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DischargeFacilityDepartment ValueSet**

## ValueSet: DischargeFacilityDepartment ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/discharge-facility-department-vs | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:DischargeFacilityDepartmentVS |

 
Allowed coded values for DischargeFacilityDepartment 

 **References** 

* [Discharge department or service](StructureDefinition-discharge-department-service-ext.md)

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
  "id" : "discharge-facility-department-vs",
  "url" : "http://qualityregistry.org/ValueSet/discharge-facility-department-vs",
  "version" : "1.0.0",
  "name" : "DischargeFacilityDepartmentVS",
  "title" : "DischargeFacilityDepartment ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T09:44:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for DischargeFacilityDepartment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://qualityregistry.org/CodeSystem/discharge-dept-cs",
      "concept" : [{
        "code" : "acute",
        "display" : "Acute Rehabilitation"
      },
      {
        "code" : "post-care",
        "display" : "Post Care Bed"
      },
      {
        "code" : "neurology",
        "display" : "Neurology"
      },
      {
        "code" : "another-department",
        "display" : "Another Department"
      }]
    }]
  }
}

```

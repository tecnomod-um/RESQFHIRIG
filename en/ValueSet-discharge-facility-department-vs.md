# DischargeFacilityDepartment ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: DischargeFacilityDepartment ValueSet 

 
Allowed coded values for DischargeFacilityDepartment 

 **References** 

* [Discharge department or service](StructureDefinition-discharge-department-service-ext.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "discharge-facility-department-vs",
  "url" : "http://tecnomod-um.org/ValueSet/discharge-facility-department-vs",
  "version" : "1.0.0",
  "name" : "DischargeFacilityDepartmentVS",
  "title" : "DischargeFacilityDepartment ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T09:35:04+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
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
      "system" : "http://tecnomod-um.org/CodeSystem/discharge-dept-cs",
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

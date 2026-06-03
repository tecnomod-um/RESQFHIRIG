# AdmissionDepartment ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: AdmissionDepartment ValueSet 

 
Allowed coded values for AdmissionDepartment 

 **References** 

* [Hospitalized Location Profile](StructureDefinition-hospitalized-location-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "admission-department-vs",
  "url" : "http://tecnomod-um.org/ValueSet/admission-department-vs",
  "version" : "1.0.0",
  "name" : "AdmissionDepartmentVS",
  "title" : "AdmissionDepartment ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T07:55:03+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for AdmissionDepartment",
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
        "code" : "NCCS",
        "display" : "Neurology critical care and stroke unit"
      },
      {
        "code" : "NS",
        "display" : "Neurosurgery unit"
      },
      {
        "code" : "ICU",
        "display" : "Intensive Care Unit"
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
      },
      {
        "code" : "unknown",
        "display" : "Unknown Location"
      }]
    }]
  }
}

```

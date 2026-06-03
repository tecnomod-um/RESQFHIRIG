# Locations ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Locations ValueSet 

 
Allowed coded values for Locations 

 **References** 

* [Location](http://hl7.org/fhir/R5/location.html)
* [ServiceRequest](http://hl7.org/fhir/R5/servicerequest.html)
* [RESQ Location Profile](StructureDefinition-resq-location-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-06-03T14:48:08+00:00",
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

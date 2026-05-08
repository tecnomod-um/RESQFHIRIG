# DischargeFacilityType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: DischargeFacilityType ValueSet 

 
Allowed coded values for DischargeFacilityType, generated from enum_models.py. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "discharge-facility-type-vs",
  "url" : "http://tecnomod-um.org/ValueSet/discharge-facility-type-vs",
  "version" : "1.0.0",
  "name" : "DischargeFacilityTypeVS",
  "title" : "DischargeFacilityType ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T10:13:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for DischargeFacilityType, generated from enum_models.py.",
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
        "code" : "37729005",
        "display" : "Patient transfer, in-hospital (procedure)"
      },
      {
        "code" : "45131006",
        "display" : "Primary care hospital (environment)"
      },
      {
        "code" : "19712007",
        "display" : "Patient transfer, to another health care facility (procedure)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs",
      "concept" : [{
        "code" : "comprehensive-stroke-center",
        "display" : "Discharged to comprehensive stroke center"
      }]
    }]
  }
}

```

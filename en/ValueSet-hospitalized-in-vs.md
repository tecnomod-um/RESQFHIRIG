# HospitalizedIn ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: HospitalizedIn ValueSet 

 
Allowed coded values for HospitalizedIn 

 **References** 

* [Initial care intensity](StructureDefinition-initial-care-intensity-ext.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "hospitalized-in-vs",
  "url" : "http://tecnomod-um.org/ValueSet/hospitalized-in-vs",
  "version" : "1.0.0",
  "name" : "HospitalizedInVS",
  "title" : "HospitalizedIn ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-02T10:42:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for HospitalizedIn",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/initial-care-intensity-cs",
      "concept" : [{
        "code" : "icu-stroke",
        "display" : "ICU / Stroke Unit"
      },
      {
        "code" : "monitored",
        "display" : "Monitored Bed"
      },
      {
        "code" : "standard",
        "display" : "Standard Bed"
      }]
    }]
  }
}

```

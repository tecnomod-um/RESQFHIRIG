# INRmode ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: INRmode ValueSet 

 
Allowed coded values for INRmode, generated from enum_models.py. 

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
  "id" : "inrmode-vs",
  "url" : "http://tecnomod-um.org/ValueSet/inrmode-vs",
  "version" : "1.0.0",
  "name" : "INRmodeVS",
  "title" : "INRmode ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T09:03:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for INRmode, generated from enum_models.py.",
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
        "code" : "15220000",
        "display" : "Laboratory test (procedure)"
      },
      {
        "code" : "405262001",
        "display" : "Point of care (qualifier value)"
      },
      {
        "code" : "385660001",
        "display" : "Not done (qualifier value)"
      }]
    }]
  }
}

```

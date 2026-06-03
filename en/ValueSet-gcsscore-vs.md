# GCSScore ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: GCSScore ValueSet 

 
Allowed coded values for GCSScore 

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
  "id" : "gcsscore-vs",
  "url" : "http://tecnomod-um.org/ValueSet/gcsscore-vs",
  "version" : "1.0.0",
  "name" : "GCSScoreVS",
  "title" : "GCSScore ValueSet",
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
  "description" : "Allowed coded values for GCSScore",
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
        "code" : "24484000",
        "display" : "Severe (qualifier value)"
      },
      {
        "code" : "1255665007",
        "display" : "Moderate (qualifier value)"
      },
      {
        "code" : "255604002",
        "display" : "Mild (qualifier value)"
      }]
    }]
  }
}

```

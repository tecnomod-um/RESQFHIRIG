# Nimodipinetiming ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Nimodipinetiming ValueSet 

 
Allowed coded values for Nimodipinetiming 

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
  "id" : "nimodipinetiming-vs",
  "url" : "http://tecnomod-um.org/ValueSet/nimodipinetiming-vs",
  "version" : "1.0.0",
  "name" : "NimodipinetimingVS",
  "title" : "Nimodipinetiming ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-13T14:14:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for Nimodipinetiming",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/timing-cs",
      "concept" : [{
        "code" : "within-24-hours",
        "display" : "Within 24 Hours"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "281381003",
        "display" : "More than 24 hours after admission (qualifier value)"
      }]
    }]
  }
}

```

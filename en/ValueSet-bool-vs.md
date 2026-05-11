# Bool ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Bool ValueSet 

 
Allowed coded values for Bool 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "bool-vs",
  "url" : "http://tecnomod-um.org/ValueSet/bool-vs",
  "version" : "1.0.0",
  "name" : "BoolVS",
  "title" : "Bool ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-11T15:54:34+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for Bool",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/bool",
      "concept" : [{
        "code" : "true",
        "display" : "True"
      },
      {
        "code" : "false",
        "display" : "False"
      }]
    }]
  }
}

```

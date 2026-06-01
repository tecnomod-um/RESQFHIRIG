# HemorrhagicTransformationType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: HemorrhagicTransformationType ValueSet 

 
Allowed coded values for HemorrhagicTransformationType 

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
  "id" : "hemorrhagic-transformation-type-vs",
  "url" : "http://tecnomod-um.org/ValueSet/hemorrhagic-transformation-type-vs",
  "version" : "1.0.0",
  "name" : "HemorrhagicTransformationTypeVS",
  "title" : "HemorrhagicTransformationType ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T10:24:12+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for HemorrhagicTransformationType",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/hemorrhagic-transformation-type-cs",
      "concept" : [{
        "code" : "hi-type-1",
        "display" : "HI type 1"
      },
      {
        "code" : "hi-type-2",
        "display" : "HI type 2"
      },
      {
        "code" : "ph-type-1",
        "display" : "PH type 1"
      },
      {
        "code" : "ph-type-2",
        "display" : "PH type 2"
      }]
    }]
  }
}

```

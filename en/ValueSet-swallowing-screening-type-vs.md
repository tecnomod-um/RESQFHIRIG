# SwallowingScreeningType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: SwallowingScreeningType ValueSet 

 
Allowed coded values for SwallowingScreeningType 

 **References** 

* [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "swallowing-screening-type-vs",
  "url" : "http://tecnomod-um.org/ValueSet/swallowing-screening-type-vs",
  "version" : "1.0.0",
  "name" : "SwallowingScreeningTypeVS",
  "title" : "SwallowingScreeningType ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-15T10:10:20+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for SwallowingScreeningType",
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
        "code" : "1290000005",
        "display" : "Assessment using Gugging Swallowing Screen (procedure)"
      },
      {
        "code" : "63913004",
        "display" : "Tonography with water provocation (procedure)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/swallow-procedures-cs",
      "concept" : [{
        "code" : "assist",
        "display" : "ASSIST"
      },
      {
        "code" : "other",
        "display" : "Other Swallow Procedure"
      },
      {
        "code" : "v-vst",
        "display" : "V-VST"
      }]
    }]
  }
}

```

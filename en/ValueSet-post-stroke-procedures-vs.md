# PostStrokeProcedures ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: PostStrokeProcedures ValueSet 

 
Allowed coded values for PostStrokeProcedures 

 **References** 

* [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "post-stroke-procedures-vs",
  "url" : "http://tecnomod-um.org/ValueSet/post-stroke-procedures-vs",
  "version" : "1.0.0",
  "name" : "PostStrokeProceduresVS",
  "title" : "PostStrokeProcedures ValueSet",
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
  "description" : "Allowed coded values for PostStrokeProcedures",
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
        "code" : "722138006",
        "display" : "Physiotherapy (qualifier value)"
      },
      {
        "code" : "84478008",
        "display" : "Occupational therapy (regime/therapy)"
      },
      {
        "code" : "5154007",
        "display" : "Speech therapy (regime/therapy)"
      },
      {
        "code" : "225323000",
        "display" : "Smoking cessation education (procedure)"
      },
      {
        "code" : "47020004",
        "display" : "Ventriculoperitoneal shunt (procedure)"
      }]
    }]
  }
}

```

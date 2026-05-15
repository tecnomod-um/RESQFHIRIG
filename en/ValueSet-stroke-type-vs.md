# StrokeType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: StrokeType ValueSet 

 
Allowed coded values for StrokeType 

 **References** 

* [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "stroke-type-vs",
  "url" : "http://tecnomod-um.org/ValueSet/stroke-type-vs",
  "version" : "1.0.0",
  "name" : "StrokeTypeVS",
  "title" : "StrokeType ValueSet",
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
  "description" : "Allowed coded values for StrokeType",
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
        "code" : "422504002",
        "display" : "Ischemic stroke (disorder)"
      },
      {
        "code" : "274100004",
        "display" : "Cerebral hemorrhage (disorder)"
      },
      {
        "code" : "266257000",
        "display" : "Transient ischemic attack (disorder)"
      },
      {
        "code" : "21454007",
        "display" : "Subarachnoid intracranial hemorrhage (disorder)"
      },
      {
        "code" : "95455008",
        "display" : "Thrombosis of cerebral veins (disorder)"
      },
      {
        "code" : "230690007",
        "display" : "Cerebrovascular accident (disorder)"
      },
      {
        "code" : "373068000",
        "display" : "Undetermined (qualifier value)"
      }]
    }]
  }
}

```

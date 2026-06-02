# ScreeningPerformer ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ScreeningPerformer ValueSet 

 
Allowed coded values for ScreeningPerformer 

 **References** 

* [RESQ PractitionerRole Profile](StructureDefinition-resq-practitioner-role-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "screening-performer-vs",
  "url" : "http://tecnomod-um.org/ValueSet/screening-performer-vs",
  "version" : "1.0.0",
  "name" : "ScreeningPerformerVS",
  "title" : "ScreeningPerformer ValueSet",
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
  "description" : "Allowed coded values for ScreeningPerformer",
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
        "code" : "106292003",
        "display" : "Professional nurse (occupation)"
      },
      {
        "code" : "309343006",
        "display" : "Physician (occupation)"
      },
      {
        "code" : "223366009",
        "display" : "Healthcare professional (occupation)"
      },
      {
        "code" : "159026005",
        "display" : "Speech and language therapist"
      }]
    }]
  }
}

```

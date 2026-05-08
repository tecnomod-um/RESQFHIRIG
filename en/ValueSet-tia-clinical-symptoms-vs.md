# TiaClinicalSymptoms ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: TiaClinicalSymptoms ValueSet 

 
Allowed coded values for TiaClinicalSymptoms, generated from enum_models.py. 

 **References** 

* [TIA Clinical Symptoms Observation Profile](StructureDefinition-tia-clinical-symptoms-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tia-clinical-symptoms-vs",
  "url" : "http://tecnomod-um.org/ValueSet/tia-clinical-symptoms-vs",
  "version" : "1.0.0",
  "name" : "TiaClinicalSymptomsVS",
  "title" : "TiaClinicalSymptoms ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T09:31:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for TiaClinicalSymptoms, generated from enum_models.py.",
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
        "code" : "26544005",
        "display" : "Muscle weakness (finding)"
      },
      {
        "code" : "29164008",
        "display" : "Disturbance in speech (finding)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/symptoms-cs",
      "concept" : [{
        "code" : "other-symptom",
        "display" : "Other Symptom"
      }]
    }]
  }
}

```

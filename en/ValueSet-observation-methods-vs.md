# ObservationMethods ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ObservationMethods ValueSet 

 
Allowed coded values for ObservationMethods 

 **References** 

* [Analytics Observation Profile](StructureDefinition-analitics-observation-profile.md)
* [Patient Ventilated Observation Profile](StructureDefinition-patient-ventilated-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-methods-vs",
  "url" : "http://tecnomod-um.org/ValueSet/observation-methods-vs",
  "version" : "1.0.0",
  "name" : "ObservationMethodsVS",
  "title" : "ObservationMethods ValueSet",
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
  "description" : "Allowed coded values for ObservationMethods",
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
        "code" : "40617009",
        "display" : "Artificial ventilation (regime/therapy)"
      }]
    }]
  }
}

```

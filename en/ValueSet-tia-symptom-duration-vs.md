# TiaSymptomDuration ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: TiaSymptomDuration ValueSet 

 
Allowed coded values for TiaSymptomDuration 

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
  "id" : "tia-symptom-duration-vs",
  "url" : "http://tecnomod-um.org/ValueSet/tia-symptom-duration-vs",
  "version" : "1.0.0",
  "name" : "TiaSymptomDurationVS",
  "title" : "TiaSymptomDuration ValueSet",
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
  "description" : "Allowed coded values for TiaSymptomDuration",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/tia-symptom-duration-cs",
      "concept" : [{
        "code" : "duration-lt-10-minutes",
        "display" : "Duration < 10 Minutes"
      },
      {
        "code" : "duration-between-10-and-60-minutes",
        "display" : "Duration Between 10 and 60 Minutes"
      },
      {
        "code" : "duration-gt-60-minutes",
        "display" : "Duration > 60 Minutes"
      }]
    }]
  }
}

```

# VitalSigns ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: VitalSigns ValueSet 

 
Allowed coded values for VitalSigns 

 **References** 

* [Vital Sign Observation Profile](StructureDefinition-vital-sign-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vital-signs-vs",
  "url" : "http://tecnomod-um.org/ValueSet/vital-signs-vs",
  "version" : "1.0.0",
  "name" : "VitalSignsVS",
  "title" : "VitalSigns ValueSet",
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
  "description" : "Allowed coded values for VitalSigns",
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
        "code" : "271649006",
        "display" : "Systolic blood pressure (observable entity)"
      },
      {
        "code" : "271650006",
        "display" : "Diastolic blood pressure (observable entity)"
      },
      {
        "code" : "61746007",
        "display" : "Taking patient vital signs (procedure)"
      }]
    }]
  }
}

```

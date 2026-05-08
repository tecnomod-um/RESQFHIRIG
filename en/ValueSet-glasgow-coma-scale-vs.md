# GlasgowComaScale ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: GlasgowComaScale ValueSet 

 
Allowed coded values for GlasgowComaScale, generated from enum_models.py. 

 **References** 

* [Glasgow Coma Scale Observation Profile](StructureDefinition-glasgow-coma-scale-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "glasgow-coma-scale-vs",
  "url" : "http://tecnomod-um.org/ValueSet/glasgow-coma-scale-vs",
  "version" : "1.0.0",
  "name" : "GlasgowComaScaleVS",
  "title" : "GlasgowComaScale ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T10:13:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for GlasgowComaScale, generated from enum_models.py.",
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
        "code" : "26394007",
        "display" : "Glasgow coma scale, 3 (finding)"
      },
      {
        "code" : "112110007",
        "display" : "Glasgow coma scale, 4 (finding)"
      },
      {
        "code" : "74957005",
        "display" : "Glasgow coma scale, 5 (finding)"
      },
      {
        "code" : "80072008",
        "display" : "Glasgow coma scale, 6 (finding)"
      },
      {
        "code" : "18136007",
        "display" : "Glasgow coma scale, 7 (finding)"
      },
      {
        "code" : "32856008",
        "display" : "Glasgow coma scale, 8 (finding)"
      },
      {
        "code" : "5999000",
        "display" : "Glasgow coma scale, 9 (finding)"
      },
      {
        "code" : "1184008",
        "display" : "Glasgow coma scale, 10 (finding)"
      },
      {
        "code" : "61102007",
        "display" : "Glasgow coma scale, 11 (finding)"
      },
      {
        "code" : "91234001",
        "display" : "Glasgow coma scale, 12 (finding)"
      },
      {
        "code" : "54185009",
        "display" : "Glasgow coma scale, 13 (finding)"
      },
      {
        "code" : "26734006",
        "display" : "Glasgow coma scale, 14 (finding)"
      },
      {
        "code" : "70040003",
        "display" : "Glasgow coma scale, 15 (finding)"
      },
      {
        "code" : "248241002",
        "display" : "Glasgow coma scale (observable entity)"
      }]
    }]
  }
}

```

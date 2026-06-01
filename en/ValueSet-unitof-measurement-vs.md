# UnitofMeasurement ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: UnitofMeasurement ValueSet 

 
Allowed coded values for UnitofMeasurement 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "unitof-measurement-vs",
  "url" : "http://tecnomod-um.org/ValueSet/unitof-measurement-vs",
  "version" : "1.0.0",
  "name" : "UnitofMeasurementVS",
  "title" : "UnitofMeasurement ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T10:42:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for UnitofMeasurement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://ucum.org/ucum",
      "concept" : [{
        "code" : "min",
        "display" : "minute"
      },
      {
        "code" : "mm[Hg]",
        "display" : "millimeter Mercury column"
      },
      {
        "code" : "mmol/L",
        "display" : "millimole per liter"
      },
      {
        "code" : "mL",
        "display" : "milliliter"
      },
      {
        "code" : "mg",
        "display" : "milligram"
      },
      {
        "code" : "d",
        "display" : "day"
      }]
    }]
  }
}

```

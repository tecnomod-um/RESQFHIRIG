# ParacetamolOnFeverTiming ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ParacetamolOnFeverTiming ValueSet 

 
Allowed coded values for ParacetamolOnFeverTiming 

 **References** 

* [Paracetamol on Fever MedicationAdministration Profile](StructureDefinition-paracetamol-on-fever-medicationAdministration-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "paracetamol-on-fever-timing-vs",
  "url" : "http://tecnomod-um.org/ValueSet/paracetamol-on-fever-timing-vs",
  "version" : "1.0.0",
  "name" : "ParacetamolOnFeverTimingVS",
  "title" : "ParacetamolOnFeverTiming ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-11T15:54:44+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for ParacetamolOnFeverTiming",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/timing-cs",
      "concept" : [{
        "code" : "within-1-hours",
        "display" : "Within 1 Hour"
      },
      {
        "code" : "after-1-hours",
        "display" : "After 1 Hour"
      }]
    }]
  }
}

```

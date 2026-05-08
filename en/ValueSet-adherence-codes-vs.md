# AdherenceCodes ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: AdherenceCodes ValueSet 

 
Allowed coded values for AdherenceCodes, generated from enum_models.py. 

 **References** 

* [Prior MedicationStatement Profile](StructureDefinition-prior-medication-statement-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "adherence-codes-vs",
  "url" : "http://tecnomod-um.org/ValueSet/adherence-codes-vs",
  "version" : "1.0.0",
  "name" : "AdherenceCodesVS",
  "title" : "AdherenceCodes ValueSet",
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
  "description" : "Allowed coded values for AdherenceCodes, generated from enum_models.py.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/CodeSystem/medication-statement-adherence",
      "concept" : [{
        "code" : "taking",
        "display" : "Taking"
      },
      {
        "code" : "not-taking",
        "display" : "Not Taking"
      },
      {
        "code" : "unknown",
        "display" : "Unknown"
      }]
    }]
  }
}

```

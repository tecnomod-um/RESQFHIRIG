# ClinicalStatusCodes ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ClinicalStatusCodes ValueSet 

 
Allowed coded values for ClinicalStatusCodes 

 **References** 

* [Post-Stroke Complication Condition Profile](StructureDefinition-post-stroke-complication-condition-profile.md)
* [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "clinical-status-codes-vs",
  "url" : "http://tecnomod-um.org/ValueSet/clinical-status-codes-vs",
  "version" : "1.0.0",
  "name" : "ClinicalStatusCodesVS",
  "title" : "ClinicalStatusCodes ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T09:35:04+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for ClinicalStatusCodes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "concept" : [{
        "code" : "active",
        "display" : "Active"
      },
      {
        "code" : "inactive",
        "display" : "Inactive"
      },
      {
        "code" : "remission",
        "display" : "Remission"
      },
      {
        "code" : "unknown",
        "display" : "Unknown"
      }]
    }]
  }
}

```

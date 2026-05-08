# NoAnticoagulantReversalReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: NoAnticoagulantReversalReason ValueSet 

 
Allowed coded values for NoAnticoagulantReversalReason, generated from enum_models.py. 

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
  "id" : "no-anticoagulant-reversal-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/no-anticoagulant-reversal-reason-vs",
  "version" : "1.0.0",
  "name" : "NoAnticoagulantReversalReasonVS",
  "title" : "NoAnticoagulantReversalReason ValueSet",
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
  "description" : "Allowed coded values for NoAnticoagulantReversalReason, generated from enum_models.py.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/not-medication-reason-cs",
      "concept" : [{
        "code" : "Not-Consent",
        "display" : "Patient or family did not consent"
      },
      {
        "code" : "Cost of drug",
        "display" : "Cost of drug"
      },
      {
        "code" : "Not-Available",
        "display" : "Drug not available"
      },
      {
        "code" : "Not-Licensed",
        "display" : "Antidote not licenced for specific indication"
      },
      {
        "code" : "Not-Criteria",
        "display" : "Not met criteria for specific agent"
      },
      {
        "code" : "Forgot",
        "display" : "Patient did not use anticoagulant before ICH (forgot to take a pill)"
      },
      {
        "code" : "Not-Reported",
        "display" : "Reason for not giving anticoagulant reversal not reported"
      }]
    }]
  }
}

```

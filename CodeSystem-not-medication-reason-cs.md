# NotMedicationReasonCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NotMedicationReasonCs CodeSystem**

## CodeSystem: NotMedicationReasonCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/not-medication-reason-cs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:NotMedicationReasonCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/not-medication-reason-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NotMedicationReasonVS](ValueSet-not-medication-reason-vs.md)
* [ParacetamolOnFeverVS](ValueSet-paracetamol-on-fever-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "not-medication-reason-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/not-medication-reason-cs",
  "version" : "1.0.0",
  "name" : "NotMedicationReasonCS",
  "title" : "NotMedicationReasonCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:43:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/not-medication-reason-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "Not-Consent",
    "display" : "Patient or family did not consent"
  },
  {
    "code" : "Cost-of-drug",
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
  },
  {
    "code" : "not-required",
    "display" : "Not Required"
  }]
}

```

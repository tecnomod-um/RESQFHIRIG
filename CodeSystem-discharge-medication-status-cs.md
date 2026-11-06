# DischargeMedicationStatusCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DischargeMedicationStatusCs CodeSystem**

## CodeSystem: DischargeMedicationStatusCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/discharge-medication-status-cs | *Version*:1.1.0 |
| Active as of 2026-11-06 | *Computable Name*:DischargeMedicationStatusCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/discharge-medication-status-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationStatus ValueSet](ValueSet-medication-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "discharge-medication-status-cs",
  "url" : "http://qualityregistry.org/CodeSystem/discharge-medication-status-cs",
  "version" : "1.1.0",
  "name" : "DischargeMedicationStatusCS",
  "title" : "DischargeMedicationStatusCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-06T09:50:34+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/discharge-medication-status-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "medication-prescribed-at-discharge",
    "display" : "Medication Prescribed at Discharge"
  },
  {
    "code" : "medication-class",
    "display" : "Medication class queried at Discharge"
  }]
}

```

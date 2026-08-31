# MedicationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationCs CodeSystem**

## CodeSystem: MedicationCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/medication-cs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:MedicationCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/medication-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AnticoagulantReversal ValueSet](ValueSet-anticoagulant-reversal-vs.md)
* [IvtDrug ValueSet](ValueSet-ivt-drug-vs.md)
* [Medications ValueSet](ValueSet-medications-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-cs",
  "url" : "http://qualityregistry.org/CodeSystem/medication-cs",
  "version" : "1.0.0",
  "name" : "MedicationCS",
  "title" : "MedicationCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T09:17:06+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/medication-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "other",
    "display" : "Other Medication"
  },
  {
    "code" : "none-medication",
    "display" : "No Medication"
  },
  {
    "code" : "Vitamin-K",
    "display" : "Vitamin K"
  },
  {
    "code" : "Ciraparantag",
    "display" : "Ciraparantag"
  },
  {
    "code" : "antidiabetic",
    "display" : "Any Antidiabetic"
  },
  {
    "code" : "antiplatelet",
    "display" : "Any Antiplatelet"
  },
  {
    "code" : "other-anticoagulant",
    "display" : "Other Anticoagulant"
  },
  {
    "code" : "other-antiplatelet",
    "display" : "Other Antiplatelet"
  },
  {
    "code" : "staphylokinase",
    "display" : "Staphylokinase"
  }]
}

```

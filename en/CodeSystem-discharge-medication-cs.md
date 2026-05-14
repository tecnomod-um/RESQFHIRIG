# DischargeMedicationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: DischargeMedicationCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-medication-cs. 

This Code system is referenced in the definition of the following value sets:

* [DischargeMedicationVS](ValueSet-discharge-medication-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "discharge-medication-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/discharge-medication-cs",
  "version" : "1.0.0",
  "name" : "DischargeMedicationCS",
  "title" : "DischargeMedicationCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T11:02:20+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/discharge-medication-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "antiplatelet",
    "display" : "Any Antiplatelet"
  },
  {
    "code" : "anticoagulant",
    "display" : "Any Anticoagulant"
  },
  {
    "code" : "asa",
    "display" : "Aspirin"
  },
  {
    "code" : "heparin",
    "display" : "Heparin"
  },
  {
    "code" : "warfarin",
    "display" : "Warfarin"
  },
  {
    "code" : "statin",
    "display" : "Statin"
  },
  {
    "code" : "antidiabetics",
    "display" : "Antidiabetics"
  },
  {
    "code" : "antihypertensive",
    "display" : "Antihypertensive"
  },
  {
    "code" : "other-antiplatelet",
    "display" : "Other Antiplatelet"
  },
  {
    "code" : "clopidogrel",
    "display" : "Clopidogrel"
  },
  {
    "code" : "contraception",
    "display" : "Contraception"
  },
  {
    "code" : "other",
    "display" : "Other"
  }]
}

```

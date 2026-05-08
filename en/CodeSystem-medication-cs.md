# MedicationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: MedicationCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/medication-cs. 

This Code system is referenced in the definition of the following value sets:

* [AnticoagulantReversalVS](ValueSet-anticoagulant-reversal-vs.md)
* [IvtDrugVS](ValueSet-ivt-drug-vs.md)
* [MedicationsVS](ValueSet-medications-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/medication-cs",
  "version" : "1.0.0",
  "name" : "MedicationCS",
  "title" : "MedicationCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T09:03:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/medication-cs.",
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

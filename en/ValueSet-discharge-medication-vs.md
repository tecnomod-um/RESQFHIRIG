# DischargeMedication ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: DischargeMedication ValueSet 

 
Allowed coded values for DischargeMedication, generated from enum_models.py. 

 **References** 

* [Discharge MedicationRequest Profile](StructureDefinition-discharge-medication-request-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "discharge-medication-vs",
  "url" : "http://tecnomod-um.org/ValueSet/discharge-medication-vs",
  "version" : "1.0.0",
  "name" : "DischargeMedicationVS",
  "title" : "DischargeMedication ValueSet",
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
  "description" : "Allowed coded values for DischargeMedication, generated from enum_models.py.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/discharge-medication-cs",
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
    }]
  }
}

```

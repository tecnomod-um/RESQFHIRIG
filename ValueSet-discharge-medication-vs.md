# DischargeMedication ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DischargeMedication ValueSet**

## ValueSet: DischargeMedication ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/discharge-medication-vs | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:DischargeMedicationVS |

 
Allowed coded values for medications prescribed or recommended at discharge. 

 **References** 

* [Discharge MedicationRequest Profile](StructureDefinition-discharge-medication-request-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "discharge-medication-vs",
  "url" : "http://qualityregistry.org/ValueSet/discharge-medication-vs",
  "version" : "1.0.0",
  "name" : "DischargeMedicationVS",
  "title" : "DischargeMedication ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T10:11:46+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for medications prescribed or recommended at discharge.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://qualityregistry.org/CodeSystem/discharge-medication-cs",
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

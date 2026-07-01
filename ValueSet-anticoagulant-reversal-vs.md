# AnticoagulantReversal ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AnticoagulantReversal ValueSet**

## ValueSet: AnticoagulantReversal ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/anticoagulant-reversal-vs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:AnticoagulantReversalVS |

 
Allowed coded values for AnticoagulantReversal 

 **References** 

* [Anticoagulant Reversal MedicationAdministration Profile](StructureDefinition-anticoagulant-reversal-medication-administration-profile.md)

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
  "id" : "anticoagulant-reversal-vs",
  "url" : "http://tecnomod-um.org/ValueSet/anticoagulant-reversal-vs",
  "version" : "1.0.0",
  "name" : "AnticoagulantReversalVS",
  "title" : "AnticoagulantReversal ValueSet",
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
  "description" : "Allowed coded values for AnticoagulantReversal",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "783678000",
        "display" : "Andexanet alfa (substance)"
      },
      {
        "code" : "716017002",
        "display" : "Idarucizumab (substance)"
      },
      {
        "code" : "346447007",
        "display" : "Fresh frozen plasma (substance)"
      },
      {
        "code" : "7348004",
        "display" : "Coagulation factor II (substance)"
      },
      {
        "code" : "64520006",
        "display" : "Protamine sulfate (substance)"
      },
      {
        "code" : "386960009",
        "display" : "Tranexamic acid (substance)"
      },
      {
        "code" : "59882007",
        "display" : "Aminocaproic acid (substance)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/medication-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Medication"
      },
      {
        "code" : "Vitamin-K",
        "display" : "Vitamin K"
      },
      {
        "code" : "Ciraparantag",
        "display" : "Ciraparantag"
      }]
    }]
  }
}

```

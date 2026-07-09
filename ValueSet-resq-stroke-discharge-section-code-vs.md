# RESQ Stroke Discharge Section Code ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RESQ Stroke Discharge Section Code ValueSet**

## ValueSet: RESQ Stroke Discharge Section Code ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/resq-stroke-discharge-section-code-vs | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:RESQStrokeDischargeSectionCodeVS |

 
Allowed LOINC section codes for the RESQ Stroke Hospital Discharge Summary Composition. 

 **References** 

* [RESQ Stroke Hospital Discharge Composition](StructureDefinition-resq-stroke-discharge-composition.md)

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
  "id" : "resq-stroke-discharge-section-code-vs",
  "url" : "http://tecnomod-um.org/ValueSet/resq-stroke-discharge-section-code-vs",
  "version" : "1.0.0",
  "name" : "RESQStrokeDischargeSectionCodeVS",
  "title" : "RESQ Stroke Discharge Section Code ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-09T09:09:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed LOINC section codes for the RESQ Stroke Hospital Discharge Summary Composition.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "67851-6",
        "display" : "Admission evaluation note"
      },
      {
        "code" : "11329-0",
        "display" : "History of general health Narrative"
      },
      {
        "code" : "11450-4",
        "display" : "Problem list - Reported"
      },
      {
        "code" : "8648-8",
        "display" : "Hospital course note"
      },
      {
        "code" : "11535-2",
        "display" : "Hospital discharge diagnosis Narrative"
      },
      {
        "code" : "10185-7",
        "display" : "Hospital discharge procedures"
      },
      {
        "code" : "87232-5",
        "display" : "Medication administration brief"
      },
      {
        "code" : "30954-2",
        "display" : "Relevant diagnostic tests/laboratory data Narrative"
      },
      {
        "code" : "8716-3",
        "display" : "Vital signs note"
      },
      {
        "code" : "47420-5",
        "display" : "Functional status assessment note"
      },
      {
        "code" : "8650-4",
        "display" : "Hospital discharge disposition note"
      },
      {
        "code" : "75311-1",
        "display" : "Discharge medications Narrative"
      },
      {
        "code" : "18776-5",
        "display" : "Plan of care note"
      }]
    }]
  }
}

```

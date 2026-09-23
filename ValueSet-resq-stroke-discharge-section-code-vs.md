# RESQ Stroke Discharge Section Code ValueSet - RESQ Stroke Registry Implementation Guide v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RESQ Stroke Discharge Section Code ValueSet**

## ValueSet: RESQ Stroke Discharge Section Code ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/resq-stroke-discharge-section-code-vs | *Version*:1.1.0 |
| Active as of 2026-09-23 | *Computable Name*:RESQStrokeDischargeSectionCodeVS |

 
Allowed section codes for the RESQ Stroke Discharge Patient Summary Composition. 

 **References** 

* [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md)

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
  "url" : "http://qualityregistry.org/ValueSet/resq-stroke-discharge-section-code-vs",
  "version" : "1.1.0",
  "name" : "RESQStrokeDischargeSectionCodeVS",
  "title" : "RESQ Stroke Discharge Section Code ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-23T10:52:36+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed section codes for the RESQ Stroke Discharge Patient Summary Composition.",
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
        "code" : "75310-3",
        "display" : "Health concerns document"
      },
      {
        "code" : "48765-2",
        "display" : "Allergies and adverse reactions document"
      },
      {
        "code" : "46240-8",
        "display" : "History of hospitalization and outpatient visits"
      },
      {
        "code" : "67851-6",
        "display" : "Admission evaluation note"
      },
      {
        "code" : "11329-0",
        "display" : "History of general health narrative"
      },
      {
        "code" : "8648-8",
        "display" : "Hospital course note"
      },
      {
        "code" : "11535-2",
        "display" : "Hospital discharge diagnosis note"
      },
      {
        "code" : "10185-7",
        "display" : "Hospital discharge procedure note"
      },
      {
        "code" : "87232-5",
        "display" : "Medication administration brief"
      },
      {
        "code" : "30954-2",
        "display" : "Relevant diagnostic tests and laboratory data note"
      },
      {
        "code" : "8650-4",
        "display" : "Hospital discharge disposition note"
      },
      {
        "code" : "8716-3",
        "display" : "Vital signs note"
      },
      {
        "code" : "29545-1",
        "display" : "Physical findings"
      },
      {
        "code" : "47420-5",
        "display" : "Functional status assessment note"
      },
      {
        "code" : "75311-1",
        "display" : "Discharge medications note"
      },
      {
        "code" : "18776-5",
        "display" : "Plan of care note"
      }]
    },
    {
      "system" : "http://qualityregistry.org/CodeSystem/stroke-discharge-summary-section-cs",
      "concept" : [{
        "code" : "treatment-timings",
        "display" : "Treatment Timings"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1184586001",
        "display" : "Medical device document section"
      },
      {
        "code" : "248326004",
        "display" : "Anthropometric measure"
      },
      {
        "code" : "866144008",
        "display" : "Encounter note"
      }]
    }]
  }
}

```

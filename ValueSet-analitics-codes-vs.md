# AnaliticsCodes ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AnaliticsCodes ValueSet**

## ValueSet: AnaliticsCodes ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/analitics-codes-vs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:AnaliticsCodesVS |

 
Allowed coded values for AnaliticsCodes 

 **References** 

* [Analytics Observation Profile](StructureDefinition-analitics-observation-profile.md)
* [Fever Observation Profile](StructureDefinition-fever-observation-profile.md)
* [Glucose >= 10 Observation Profile](StructureDefinition-glucose-ge10-observation-profile.md)
* [Hyperglycemia Observation Profile](StructureDefinition-hyperglycemia-observation-profile.md)

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
  "id" : "analitics-codes-vs",
  "url" : "http://tecnomod-um.org/ValueSet/analitics-codes-vs",
  "version" : "1.0.0",
  "name" : "AnaliticsCodesVS",
  "title" : "AnaliticsCodes ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T11:47:40+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for AnaliticsCodes",
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
        "code" : "33747003",
        "display" : "Glucose measurement, blood (procedure)"
      },
      {
        "code" : "372361000119104",
        "display" : "Low density lipoprotein cholesterol by direct assay (observable entity)"
      },
      {
        "code" : "165581004",
        "display" : "International normalized ratio (observable entity)"
      },
      {
        "code" : "386661006",
        "display" : "Fever (finding)"
      },
      {
        "code" : "80394007",
        "display" : "Hyperglycemia (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/analytics-codes-cs",
      "concept" : [{
        "code" : "ge10",
        "display" : "Glucose > 10 mmol/L"
      },
      {
        "code" : "highest-hyperglycemia-value",
        "display" : "Highest Hyperglycemia Value"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/timing-metric-codes-cs",
      "concept" : [{
        "code" : "hyperglycemia-day-1",
        "display" : "Hyperglycemia Checks Day 1"
      },
      {
        "code" : "hyperglycemia-day-2",
        "display" : "Hyperglycemia Checks Day 2"
      },
      {
        "code" : "hyperglycemia-day-3",
        "display" : "Hyperglycemia Checks Day 3"
      },
      {
        "code" : "temperature-checks-day-1",
        "display" : "Temperature Checks Day 1"
      },
      {
        "code" : "temperature-checks-day-2",
        "display" : "Temperature Checks Day 2"
      },
      {
        "code" : "temperature-checks-day-3",
        "display" : "Temperature Checks Day 3"
      }]
    }]
  }
}

```

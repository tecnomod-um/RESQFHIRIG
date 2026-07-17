# FunctionalScore ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FunctionalScore ValueSet**

## ValueSet: FunctionalScore ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/functional-score-vs | *Version*:1.0.0 |
| Active as of 2026-07-17 | *Computable Name*:FunctionalScoreVS |

 
Allowed coded values for FunctionalScore 

 **References** 

* [Functional Score Observation Profile](StructureDefinition-functional-score-observation-profile.md)

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
  "id" : "functional-score-vs",
  "url" : "http://tecnomod-um.org/ValueSet/functional-score-vs",
  "version" : "1.0.0",
  "name" : "FunctionalScoreVS",
  "title" : "FunctionalScore ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-17T09:40:30+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for FunctionalScore",
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
        "code" : "1255866005",
        "display" : "Modified Rankin Scale score (observable entity)"
      },
      {
        "code" : "450743008",
        "display" : "National Institutes of Health stroke scale score (observable entity)"
      },
      {
        "code" : "1290002002",
        "display" : "Alberta Stroke Program Early CT score (assessment scale)"
      },
      {
        "code" : "774086001",
        "display" : "Age, Blood pressure, Clinical features, Duration, Diabetes 2 score (observable entity)"
      },
      {
        "code" : "713678009",
        "display" : "Congestive heart failure, hypertension, age 2, diabetes mellitus, stroke 2, vascular disease, age, sex category stroke risk score (observable entity)"
      },
      {
        "code" : "445518008",
        "display" : "Age at onset of clinical finding (observable entity)"
      },
      {
        "code" : "386557006",
        "display" : "Glasgow coma scale finding (finding)"
      },
      {
        "code" : "248241002",
        "display" : "Glasgow coma score (observable entity)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/functional-score-cs",
      "concept" : [{
        "code" : "ICH-score",
        "display" : "Intracerebral Hemorrhage Score"
      },
      {
        "code" : "hunt-hess",
        "display" : "Hunt and Hess Score"
      },
      {
        "code" : "thrive",
        "display" : "Totaled Health Risks in Vascular Events Score"
      }]
    }]
  }
}

```

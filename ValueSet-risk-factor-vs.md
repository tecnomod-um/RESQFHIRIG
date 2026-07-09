# RiskFactor ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RiskFactor ValueSet**

## ValueSet: RiskFactor ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/risk-factor-vs | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:RiskFactorVS |

 
Allowed coded values for RiskFactor 

 **References** 

* [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md)

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
  "id" : "risk-factor-vs",
  "url" : "http://tecnomod-um.org/ValueSet/risk-factor-vs",
  "version" : "1.0.0",
  "name" : "RiskFactorVS",
  "title" : "RiskFactor ValueSet",
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
  "description" : "Allowed coded values for RiskFactor",
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
        "code" : "49436004",
        "display" : "Atrial fibrillation (disorder)"
      },
      {
        "code" : "84114007",
        "display" : "Heart failure (disorder)"
      },
      {
        "code" : "53741008",
        "display" : "Coronary arteriosclerosis (disorder)"
      },
      {
        "code" : "840539006",
        "display" : "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
      },
      {
        "code" : "73211009",
        "display" : "Diabetes mellitus (disorder)"
      },
      {
        "code" : "165816005",
        "display" : "Human immunodeficiency virus detected (finding)"
      },
      {
        "code" : "55822004",
        "display" : "Hyperlipidemia (disorder)"
      },
      {
        "code" : "38341003",
        "display" : "Hypertensive disorder, systemic arterial (disorder)"
      },
      {
        "code" : "230706003",
        "display" : "Hemorrhagic cerebral infarction (disorder)"
      },
      {
        "code" : "266257000",
        "display" : "Transient ischemic attack (disorder)"
      },
      {
        "code" : "230690007",
        "display" : "Cerebrovascular accident (disorder)"
      },
      {
        "code" : "77176002",
        "display" : "Smoker (finding)"
      },
      {
        "code" : "8392000",
        "display" : "Non-smoker (finding)"
      },
      {
        "code" : "8517006",
        "display" : "Ex-smoker (finding)"
      },
      {
        "code" : "429098002",
        "display" : "Thromboembolism of vein (disorder)"
      },
      {
        "code" : "66590003",
        "display" : "Alcohol dependence (disorder)"
      },
      {
        "code" : "73430006",
        "display" : "Sleep apnea (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/risk-factor-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other"
      }]
    }]
  }
}

```

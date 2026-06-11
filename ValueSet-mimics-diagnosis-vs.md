# MimicsDiagnosis ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MimicsDiagnosis ValueSet**

## ValueSet: MimicsDiagnosis ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/mimics-diagnosis-vs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:MimicsDiagnosisVS |

 
Allowed coded values for MimicsDiagnosis 

 **References** 

* Included into [StrokeDiagnosisCodeVS](ValueSet-stroke-diagnosis-code-vs.md)

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
  "id" : "mimics-diagnosis-vs",
  "url" : "http://tecnomod-um.org/ValueSet/mimics-diagnosis-vs",
  "version" : "1.0.0",
  "name" : "MimicsDiagnosisVS",
  "title" : "MimicsDiagnosis ValueSet",
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
  "description" : "Allowed coded values for MimicsDiagnosis",
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
        "code" : "37796009",
        "display" : "Migraine (disorder)"
      },
      {
        "code" : "128613002",
        "display" : "Seizure disorder (disorder)"
      },
      {
        "code" : "2776000",
        "display" : "Delirium (disorder)"
      },
      {
        "code" : "105593004",
        "display" : "Electrolyte imbalance (disorder)"
      },
      {
        "code" : "386585008",
        "display" : "Functional disorder (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-mimics-diagnosis-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Stroke Mimics Diagnosis"
      }]
    }]
  }
}

```

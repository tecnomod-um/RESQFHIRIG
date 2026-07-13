# Laterality ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laterality ValueSet**

## ValueSet: Laterality ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/laterality-vs | *Version*:1.0.0 |
| Active as of 2026-07-13 | *Computable Name*:LateralityVS |

 
Allowed coded values for Laterality 

 **References** 

* [RESQ BodyStructure Profile](StructureDefinition-resq-body-structure-profile.md)

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
  "id" : "laterality-vs",
  "url" : "http://tecnomod-um.org/ValueSet/laterality-vs",
  "version" : "1.0.0",
  "name" : "LateralityVS",
  "title" : "Laterality ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-13T09:21:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for Laterality",
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
        "code" : "7771000",
        "display" : "Left (qualifier value)"
      },
      {
        "code" : "24028007",
        "display" : "Right (qualifier value)"
      },
      {
        "code" : "51440002",
        "display" : "Bilateral"
      },
      {
        "code" : "46053002",
        "display" : "Distal"
      },
      {
        "code" : "255554000",
        "display" : "Dorsal"
      },
      {
        "code" : "264147007",
        "display" : "Plantar"
      },
      {
        "code" : "261183002",
        "display" : "Upper"
      },
      {
        "code" : "261122009",
        "display" : "Lower"
      },
      {
        "code" : "255561001",
        "display" : "Medial"
      },
      {
        "code" : "49370004",
        "display" : "Lateral"
      },
      {
        "code" : "264217000",
        "display" : "Superior"
      },
      {
        "code" : "261089000",
        "display" : "Inferior"
      },
      {
        "code" : "255551008",
        "display" : "Posterior"
      },
      {
        "code" : "351726001",
        "display" : "Below"
      },
      {
        "code" : "352730000",
        "display" : "Above"
      }]
    }]
  }
}

```

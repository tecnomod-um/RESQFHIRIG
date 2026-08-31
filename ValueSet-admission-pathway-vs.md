# AdmissionPathway ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AdmissionPathway ValueSet**

## ValueSet: AdmissionPathway ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/admission-pathway-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:AdmissionPathwayVS |

 
Allowed coded values for AdmissionPathway 

 **References** 

* [Stroke Encounter Profile](StructureDefinition-stroke-encounter-profile.md)

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
  "id" : "admission-pathway-vs",
  "url" : "http://qualityregistry.org/ValueSet/admission-pathway-vs",
  "version" : "1.0.0",
  "name" : "AdmissionPathwayVS",
  "title" : "AdmissionPathway ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for AdmissionPathway",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://qualityregistry.org/CodeSystem/stroke-arrival-mode-cs",
      "concept" : [{
        "code" : "ems-gp",
        "display" : "EMS from GP"
      },
      {
        "code" : "priv-transport",
        "display" : "Private Transportation"
      },
      {
        "code" : "stroke-center",
        "display" : "Stroke Center"
      },
      {
        "code" : "another-hosp",
        "display" : "Another Hospital"
      },
      {
        "code" : "priv-transport-gp",
        "display" : "Private Transportation from GP"
      },
      {
        "code" : "in-hospital-stroke",
        "display" : "In-Hospital Stroke"
      },
      {
        "code" : "ems-home",
        "display" : "patient arrived by EMS/ambulance from home/scene"
      }]
    }]
  }
}

```

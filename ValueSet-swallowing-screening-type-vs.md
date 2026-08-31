# SwallowingScreeningType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SwallowingScreeningType ValueSet**

## ValueSet: SwallowingScreeningType ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/swallowing-screening-type-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:SwallowingScreeningTypeVS |

 
Allowed coded values for SwallowingScreeningType 

 **References** 

* [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md)

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
  "id" : "swallowing-screening-type-vs",
  "url" : "http://qualityregistry.org/ValueSet/swallowing-screening-type-vs",
  "version" : "1.0.0",
  "name" : "SwallowingScreeningTypeVS",
  "title" : "SwallowingScreeningType ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T09:17:06+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for SwallowingScreeningType",
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
        "code" : "1290000005",
        "display" : "Assessment using Gugging Swallowing Screen (procedure)"
      },
      {
        "code" : "63913004",
        "display" : "Tonography with water provocation (procedure)"
      }]
    },
    {
      "system" : "http://qualityregistry.org/CodeSystem/swallow-procedures-cs",
      "concept" : [{
        "code" : "assist",
        "display" : "ASSIST"
      },
      {
        "code" : "other",
        "display" : "Other Swallow Procedure"
      },
      {
        "code" : "v-vst",
        "display" : "V-VST"
      }]
    }]
  }
}

```

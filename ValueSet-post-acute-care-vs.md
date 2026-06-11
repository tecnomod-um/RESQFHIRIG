# PostAcuteCare ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PostAcuteCare ValueSet**

## ValueSet: PostAcuteCare ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/post-acute-care-vs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:PostAcuteCareVS |

 
Allowed coded values for PostAcuteCare 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "post-acute-care-vs",
  "url" : "http://tecnomod-um.org/ValueSet/post-acute-care-vs",
  "version" : "1.0.0",
  "name" : "PostAcuteCareVS",
  "title" : "PostAcuteCare ValueSet",
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
  "description" : "Allowed coded values for PostAcuteCare",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs",
      "concept" : [{
        "code" : "post-acute",
        "display" : "Acute Phase (<24h)"
      },
      {
        "code" : "unknown",
        "display" : "Unknown/Not Applicable"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "281381003",
        "display" : "More than 24 hours after admission (qualifier value)"
      }]
    }]
  }
}

```

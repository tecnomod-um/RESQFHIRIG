# PostStrokeComplications ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PostStrokeComplications ValueSet**

## ValueSet: PostStrokeComplications ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/post-stroke-complications-vs | *Version*:1.0.0 |
| Active as of 2026-07-21 | *Computable Name*:PostStrokeComplicationsVS |

 
Allowed coded values for PostStrokeComplications 

 **References** 

* [Post-Stroke Complication Condition Profile](StructureDefinition-post-stroke-complication-condition-profile.md)

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
  "id" : "post-stroke-complications-vs",
  "url" : "http://tecnomod-um.org/ValueSet/post-stroke-complications-vs",
  "version" : "1.0.0",
  "name" : "PostStrokeComplicationsVS",
  "title" : "PostStrokeComplications ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T08:04:16+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for PostStrokeComplications",
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
        "code" : "233604007",
        "display" : "Pneumonia (disorder)"
      },
      {
        "code" : "91302008",
        "display" : "Sepsis (disorder)"
      },
      {
        "code" : "128053003",
        "display" : "Deep venous thrombosis (disorder)"
      },
      {
        "code" : "398117008",
        "display" : "Falling injury (disorder)"
      },
      {
        "code" : "59282003",
        "display" : "Pulmonary embolism (disorder)"
      },
      {
        "code" : "161917009",
        "display" : "Recurrence of problem (finding)"
      },
      {
        "code" : "68566005",
        "display" : "Urinary tract infectious disease (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs",
      "concept" : [{
        "code" : "Sores",
        "display" : "Sores"
      },
      {
        "code" : "other",
        "display" : "Other Post-Stroke Complication"
      }]
    }]
  }
}

```

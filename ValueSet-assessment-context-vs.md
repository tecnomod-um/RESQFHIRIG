# AssessmentContext ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssessmentContext ValueSet**

## ValueSet: AssessmentContext ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/assessment-context-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:AssessmentContextVS |

 
Allowed coded values for AssessmentContext 

 **References** 

* [Observation timing context](StructureDefinition-observation-timing-context-ext.md)
* [Procedure timing context](StructureDefinition-procedure-timing-context-ext.md)

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
  "id" : "assessment-context-vs",
  "url" : "http://qualityregistry.org/ValueSet/assessment-context-vs",
  "version" : "1.0.0",
  "name" : "AssessmentContextVS",
  "title" : "AssessmentContext ValueSet",
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
  "description" : "Allowed coded values for AssessmentContext",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://qualityregistry.org/CodeSystem/assessment-context-cs",
      "concept" : [{
        "code" : "pre-stroke",
        "display" : "Pre-stroke"
      },
      {
        "code" : "discharge",
        "display" : "Discharge"
      },
      {
        "code" : "3-month",
        "display" : "3 Month Follow-up"
      },
      {
        "code" : "admission",
        "display" : "Admission"
      },
      {
        "code" : "72-hours",
        "display" : "72 Hours After Admission"
      },
      {
        "code" : "first-48-hours",
        "display" : "First 48 Hours After Admission"
      },
      {
        "code" : "post-stroke",
        "display" : "Post-Stroke"
      },
      {
        "code" : "last-10-years",
        "display" : "During Last 10 Years"
      },
      {
        "code" : "discharge-or-7-days",
        "display" : "Discharge or 7 Days After Admission"
      },
      {
        "code" : "unknown",
        "display" : "Unknown/Not Applicable"
      },
      {
        "code" : "acute",
        "display" : "Acute Phase (<24h)"
      },
      {
        "code" : "T4H",
        "display" : "Within 4 Hours"
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

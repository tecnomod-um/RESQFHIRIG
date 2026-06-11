# AssessmentContextCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssessmentContextCs CodeSystem**

## CodeSystem: AssessmentContextCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/assessment-context-cs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:AssessmentContextCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/assessment-context-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AssessmentContextVS](ValueSet-assessment-context-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "assessment-context-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/assessment-context-cs",
  "version" : "1.0.0",
  "name" : "AssessmentContextCS",
  "title" : "AssessmentContextCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/assessment-context-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 12,
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
}

```

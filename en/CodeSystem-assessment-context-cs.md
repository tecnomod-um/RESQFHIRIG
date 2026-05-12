# AssessmentContextCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: AssessmentContextCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/assessment-context-cs. 

This Code system is referenced in the definition of the following value sets:

* [AssessmentContextVS](ValueSet-assessment-context-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-05-12T07:59:38+00:00",
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
  "count" : 9,
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
  }]
}

```

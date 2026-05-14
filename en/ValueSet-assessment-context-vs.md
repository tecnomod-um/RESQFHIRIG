# AssessmentContext ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: AssessmentContext ValueSet 

 
Allowed coded values for AssessmentContext 

 **References** 

* [Observation timing context](StructureDefinition-observation-timing-context-ext.md)
* [Procedure timing context](StructureDefinition-procedure-timing-context-ext.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "assessment-context-vs",
  "url" : "http://tecnomod-um.org/ValueSet/assessment-context-vs",
  "version" : "1.0.0",
  "name" : "AssessmentContextVS",
  "title" : "AssessmentContext ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T08:09:55+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
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
      "system" : "http://tecnomod-um.org/CodeSystem/assessment-context-cs",
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
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "281381003",
        "display" : "More than 24 hours after admission (qualifier value)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/swallow-screen-time-cs",
      "concept" : [{
        "code" : "T4H",
        "display" : "Within 4 Hours"
      }]
    }]
  }
}

```

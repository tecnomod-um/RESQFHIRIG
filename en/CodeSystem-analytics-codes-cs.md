# AnalyticsCodesCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: AnalyticsCodesCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/analytics-codes-cs. 

This Code system is referenced in the definition of the following value sets:

* [AnaliticsCodesVS](ValueSet-analitics-codes-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "analytics-codes-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/analytics-codes-cs",
  "version" : "1.0.0",
  "name" : "AnalyticsCodesCS",
  "title" : "AnalyticsCodesCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-13T15:23:44+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/analytics-codes-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "ge10",
    "display" : "Glucose > 10 mmol/L"
  },
  {
    "code" : "highest-hyperglycemia-value",
    "display" : "Highest Hyperglycemia Value"
  }]
}

```

# AnalyticsCodesCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AnalyticsCodesCs CodeSystem**

## CodeSystem: AnalyticsCodesCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/analytics-codes-cs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:AnalyticsCodesCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/analytics-codes-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AnaliticsCodesVS](ValueSet-analitics-codes-vs.md)



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
  "date" : "2026-07-01T13:43:23+00:00",
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

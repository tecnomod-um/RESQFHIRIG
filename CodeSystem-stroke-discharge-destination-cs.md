# StrokeDischargeDestinationCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeDischargeDestinationCs CodeSystem**

## CodeSystem: StrokeDischargeDestinationCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs | *Version*:1.0.0 |
| Active as of 2026-07-21 | *Computable Name*:StrokeDischargeDestinationCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DischargeDestinationVS](ValueSet-discharge-destination-vs.md)
* [DischargeFacilityTypeVS](ValueSet-discharge-facility-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-discharge-destination-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs",
  "version" : "1.0.0",
  "name" : "StrokeDischargeDestinationCS",
  "title" : "StrokeDischargeDestinationCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs.",
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
    "code" : "dead",
    "display" : "Patient Deceased"
  },
  {
    "code" : "comprehensive-stroke-center",
    "display" : "Discharged to comprehensive stroke center"
  }]
}

```

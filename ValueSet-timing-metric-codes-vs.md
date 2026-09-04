# TimingMetricCodes ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimingMetricCodes ValueSet**

## ValueSet: TimingMetricCodes ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/timing-metric-codes-vs | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:TimingMetricCodesVS |

 
Allowed coded values for TimingMetricCodes 

 **References** 

* [Timing Metric Observation Profile](StructureDefinition-timing-metric-observation-profile.md)

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
  "id" : "timing-metric-codes-vs",
  "url" : "http://qualityregistry.org/ValueSet/timing-metric-codes-vs",
  "version" : "1.0.0",
  "name" : "TimingMetricCodesVS",
  "title" : "TimingMetricCodes ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T09:44:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for TimingMetricCodes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://qualityregistry.org/CodeSystem/timing-metric-codes-cs",
      "concept" : [{
        "code" : "D2G",
        "display" : "Door to Groin"
      },
      {
        "code" : "D2G<=90",
        "display" : "Door to Groin <= 90 Minutes"
      },
      {
        "code" : "D2G<=120",
        "display" : "Door to Groin <= 120 Minutes"
      },
      {
        "code" : "Door2Door",
        "display" : "Door to Door"
      },
      {
        "code" : "Door2Discharge",
        "display" : "Door to Discharge"
      },
      {
        "code" : "D2N",
        "display" : "Door to Needle"
      },
      {
        "code" : "D2N<=45",
        "display" : "Door to Needle <= 45 Minutes"
      },
      {
        "code" : "D2N<=60",
        "display" : "Door to Needle <= 60 Minutes"
      },
      {
        "code" : "D2ICH-Evac",
        "display" : "Door to ICH Evacuation"
      },
      {
        "code" : "D2I",
        "display" : "Door to Imaging"
      },
      {
        "code" : "D2IV-Antihypertensive",
        "display" : "Door to IV Antihypertensive"
      },
      {
        "code" : "D2SysBP<140",
        "display" : "Door to Systolic Blood Pressure < 140 mmHg"
      },
      {
        "code" : "D2R",
        "display" : "Door to Reperfusion"
      },
      {
        "code" : "O2D",
        "display" : "Onset to Door"
      },
      {
        "code" : "highest-sys-bp-after-24-hours",
        "display" : "Highest Systolic Blood Pressure After 24 Hours"
      },
      {
        "code" : "G2R",
        "display" : "Groin to Reperfusion"
      },
      {
        "code" : "temperature-checks-day-1",
        "display" : "Temperature Checks Day 1"
      },
      {
        "code" : "temperature-checks-day-2",
        "display" : "Temperature Checks Day 2"
      },
      {
        "code" : "temperature-checks-day-3",
        "display" : "Temperature Checks Day 3"
      },
      {
        "code" : "hyperglycemia-day-1",
        "display" : "Hyperglycemia Checks Day 1"
      },
      {
        "code" : "hyperglycemia-day-2",
        "display" : "Hyperglycemia Checks Day 2"
      },
      {
        "code" : "hyperglycemia-day-3",
        "display" : "Hyperglycemia Checks Day 3"
      },
      {
        "code" : "discharge-to-3-month-contact",
        "display" : "Discharge to 3 Month Contact"
      },
      {
        "code" : "discharge-or-7-days",
        "display" : "At Discharge or at 7 Days"
      },
      {
        "code" : "D2AnticoagulantReversal",
        "display" : "Door to Anticoagulant Reversal"
      },
      {
        "code" : "IV-Antihypertensive-to-SysBP<140",
        "display" : "IV Antihypertensive to Systolic Blood Pressure < 140 mmHg"
      },
      {
        "code" : "sys-bp-lt-140",
        "display" : "Systolic Blood Pressure < 140 mmHg"
      }]
    }]
  }
}

```

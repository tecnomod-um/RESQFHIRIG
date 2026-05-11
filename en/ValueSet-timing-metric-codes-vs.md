# TimingMetricCodes ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: TimingMetricCodes ValueSet 

 
Allowed coded values for TimingMetricCodes 

 **References** 

* [Timing Metric Observation Profile](StructureDefinition-timing-metric-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "timing-metric-codes-vs",
  "url" : "http://tecnomod-um.org/ValueSet/timing-metric-codes-vs",
  "version" : "1.0.0",
  "name" : "TimingMetricCodesVS",
  "title" : "TimingMetricCodes ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-11T15:54:34+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
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
      "system" : "http://tecnomod-um.org/CodeSystem/timing-metric-codes-cs",
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
        "code" : "D2D",
        "display" : "Door to Door"
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

# Timing Metric Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Timing Metric Observation Profile**

## Resource Profile: Timing Metric Observation Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/timing-metric-observation-profile | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:TimingMetricObservationProfile |

 
Observation profile for stroke time metrics and process indicators such as door-to-needle, door-to-groin, onset-to-door and related measures. 

**Usages:**

* Examples for this Profile: [Observation/ExampleDoorToNeedle](Observation-ExampleDoorToNeedle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-timing-metric-observation-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-timing-metric-observation-profile.csv), [Excel](StructureDefinition-timing-metric-observation-profile.xlsx), [Schematron](StructureDefinition-timing-metric-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "timing-metric-observation-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/timing-metric-observation-profile",
  "version" : "1.0.0",
  "name" : "TimingMetricObservationProfile",
  "title" : "Timing Metric Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T09:55:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Observation profile for stroke time metrics and process indicators such as door-to-needle, door-to-groin, onset-to-door and related measures.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://tecnomod-um.org/StructureDefinition/base-stroke-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "short" : "Procedure or administration measured by this timing metric",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Timing or process metric",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/timing-metric-codes-vs"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Metric duration/value or yes/no indicator",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "boolean"
      }],
      "mustSupport" : true
    }]
  }
}

```

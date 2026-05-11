# Observation timing context - RESQ Stroke Registry Implementation Guide v1.0.0

## Extension: Observation timing context 

Temporal/clinical context of an observation, such as admission, discharge, prestroke or three-month follow-up. Also supports boolean usage because build_observation_blood_volume currently writes a boolean post_acute_care value to this URL.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Analytics Observation Profile](StructureDefinition-analitics-observation-profile.md), [Fever Observation Profile](StructureDefinition-fever-observation-profile.md), [Functional Score Observation Profile](StructureDefinition-functional-score-observation-profile.md), [Highest Hyperglycemia Value Observation Profile](StructureDefinition-highest-hyperglycemia-value-observation-profile.md)... Show 2 more, [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md) and [Vital Sign Observation Profile](StructureDefinition-vital-sign-observation-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/observation-timing-context-ext)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-observation-timing-context-ext.csv), [Excel](../StructureDefinition-observation-timing-context-ext.xlsx), [Schematron](../StructureDefinition-observation-timing-context-ext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "observation-timing-context-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/observation-timing-context-ext",
  "version" : "1.0.0",
  "name" : "ObservationTimingContextExt",
  "title" : "Observation timing context",
  "status" : "draft",
  "date" : "2026-05-11T15:54:44+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Temporal/clinical context of an observation, such as admission, discharge, prestroke or three-month follow-up. Also supports boolean usage because build_observation_blood_volume currently writes a boolean post_acute_care value to this URL.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Observation timing context",
      "definition" : "Temporal/clinical context of an observation, such as admission, discharge, prestroke or three-month follow-up. Also supports boolean usage because build_observation_blood_volume currently writes a boolean post_acute_care value to this URL."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/observation-timing-context-ext"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valueCodeableConcept",
      "path" : "Extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/assessment-context-vs"
      }
    }]
  }
}

```

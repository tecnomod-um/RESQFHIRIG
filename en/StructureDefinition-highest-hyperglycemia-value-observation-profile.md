# Highest Hyperglycemia Value Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Highest Hyperglycemia Value Observation Profile 

 
Observation profile for the highest recorded hyperglycemia value in the relevant stroke care interval. 

**Usages:**

* Refer to this Profile: [Insulin on Hyperglycemia MedicationAdministration Profile](StructureDefinition-insulin-on-hyperglycemia-medicationAdministration-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/highest-hyperglycemia-value-observation-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-highest-hyperglycemia-value-observation-profile.csv), [Excel](../StructureDefinition-highest-hyperglycemia-value-observation-profile.xlsx), [Schematron](../StructureDefinition-highest-hyperglycemia-value-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "highest-hyperglycemia-value-observation-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/highest-hyperglycemia-value-observation-profile",
  "version" : "1.0.0",
  "name" : "HighestHyperglycemiaValueObservationProfile",
  "title" : "Highest Hyperglycemia Value Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-13T14:14:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Observation profile for the highest recorded hyperglycemia value in the relevant stroke care interval.",
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
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:observationTimingContext",
      "path" : "Observation.extension",
      "sliceName" : "observationTimingContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/observation-timing-context-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/analitics-codes-vs"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Highest glucose value",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    }]
  }
}

```

# Hyperglycemia Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperglycemia Observation Profile**

## Resource Profile: Hyperglycemia Observation Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/hyperglycemia-observation-profile | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:HyperglycemiaObservationProfile |

 
Observation profile for hyperglycemia monitoring, checks and measured values. 

**Usages:**

* Refer to this Profile: [Insulin on Hyperglycemia MedicationAdministration Profile](StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-hyperglycemia-observation-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hyperglycemia-observation-profile.csv), [Excel](StructureDefinition-hyperglycemia-observation-profile.xlsx), [Schematron](StructureDefinition-hyperglycemia-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hyperglycemia-observation-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/hyperglycemia-observation-profile",
  "version" : "1.0.0",
  "name" : "HyperglycemiaObservationProfile",
  "title" : "Hyperglycemia Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Observation profile for hyperglycemia monitoring, checks and measured values.",
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
  "baseDefinition" : "http://qualityregistry.org/StructureDefinition/base-stroke-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/analitics-codes-vs"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Hyperglycemia indicator or measured value",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "boolean"
      },
      {
        "code" : "integer"
      }]
    }]
  }
}

```

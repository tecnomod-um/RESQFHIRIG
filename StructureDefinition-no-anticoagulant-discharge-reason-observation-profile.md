# No Anticoagulant Discharge Reason Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **No Anticoagulant Discharge Reason Observation Profile**

## Resource Profile: No Anticoagulant Discharge Reason Observation Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/no-anticoagulant-discharge-reason-observation-profile | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:NoAnticoagulantDischargeReasonObservationProfile |

 
Observation profile for recording the reason for not prescribing anticoagulants at discharge after ischemic stroke or TIA. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-no-anticoagulant-discharge-reason-observation-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-anticoagulant-discharge-reason-observation-profile.csv), [Excel](StructureDefinition-no-anticoagulant-discharge-reason-observation-profile.xlsx), [Schematron](StructureDefinition-no-anticoagulant-discharge-reason-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-anticoagulant-discharge-reason-observation-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/no-anticoagulant-discharge-reason-observation-profile",
  "version" : "1.0.0",
  "name" : "NoAnticoagulantDischargeReasonObservationProfile",
  "title" : "No Anticoagulant Discharge Reason Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T14:44:28+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Observation profile for recording the reason for not prescribing anticoagulants at discharge after ischemic stroke or TIA.",
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
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/not-medication-reason-vs"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Reason for no anticoagulant prescription at discharge",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```

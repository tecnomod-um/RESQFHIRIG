# Insulin on Hyperglycemia MedicationAdministration Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Insulin on Hyperglycemia MedicationAdministration Profile**

## Resource Profile: Insulin on Hyperglycemia MedicationAdministration Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/insulin-on-hyperglycemia-medication-administration-profile | *Version*:1.0.0 |
| Active as of 2026-06-12 | *Computable Name*:InsulinOnHyperglycemiaMedicationAdministrationProfile |

 
MedicationAdministration profile for insulin administered in response to hyperglycemia. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.csv), [Excel](StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.xlsx), [Schematron](StructureDefinition-insulin-on-hyperglycemia-medication-administration-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "insulin-on-hyperglycemia-medication-administration-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/insulin-on-hyperglycemia-medication-administration-profile",
  "version" : "1.0.0",
  "name" : "InsulinOnHyperglycemiaMedicationAdministrationProfile",
  "title" : "Insulin on Hyperglycemia MedicationAdministration Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T09:34:13+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "MedicationAdministration profile for insulin administered in response to hyperglycemia.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://tecnomod-um.org/StructureDefinition/stroke-medication-administration-profile",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.extension",
      "path" : "MedicationAdministration.extension",
      "min" : 1
    },
    {
      "id" : "MedicationAdministration.extension:assessmentTiming",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "assessmentTiming",
      "min" : 1
    },
    {
      "id" : "MedicationAdministration.extension:assessmentTiming.value[x]",
      "path" : "MedicationAdministration.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/insulin-on-hyperglycemia-timing-vs"
      }
    },
    {
      "id" : "MedicationAdministration.medication.concept",
      "path" : "MedicationAdministration.medication.concept",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "67866001",
          "display" : "Insulin (substance)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication.reference",
      "path" : "MedicationAdministration.medication.reference",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.reason",
      "path" : "MedicationAdministration.reason",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/highest-hyperglycemia-value-observation-profile",
        "http://tecnomod-um.org/StructureDefinition/hyperglycemia-observation-profile"]
      }]
    },
    {
      "id" : "MedicationAdministration.reason.concept",
      "path" : "MedicationAdministration.reason.concept",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.reason.reference",
      "path" : "MedicationAdministration.reason.reference",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```

# Insulin on Hyperglycemia MedicationAdministration Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Insulin on Hyperglycemia MedicationAdministration Profile 

 
MedicationAdministration profile for insulin administered in response to hyperglycemia. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/insulin-on-hyperglycemia-medicationAdministration-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-insulin-on-hyperglycemia-medicationAdministration-profile.csv), [Excel](../StructureDefinition-insulin-on-hyperglycemia-medicationAdministration-profile.xlsx), [Schematron](../StructureDefinition-insulin-on-hyperglycemia-medicationAdministration-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "insulin-on-hyperglycemia-medicationAdministration-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/insulin-on-hyperglycemia-medicationAdministration-profile",
  "version" : "1.0.0",
  "name" : "InsulinOnHyperglycemiaMedicationAdministrationProfile",
  "title" : "Insulin on Hyperglycemia MedicationAdministration Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T07:59:38+00:00",
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
      "id" : "MedicationAdministration.extension:insulinTiming",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "insulinTiming",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/assessment-timing-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.extension:insulinTiming.value[x]",
      "path" : "MedicationAdministration.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/insulin-on-hyperglycemia-timing-vs"
      }
    },
    {
      "id" : "MedicationAdministration.medication.concept",
      "path" : "MedicationAdministration.medication.concept",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "67866001",
          "display" : "Insulin (substance)"
        }]
      }
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
    }]
  }
}

```

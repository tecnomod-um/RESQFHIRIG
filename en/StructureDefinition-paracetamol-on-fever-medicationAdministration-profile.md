# Paracetamol on Fever MedicationAdministration Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Paracetamol on Fever MedicationAdministration Profile 

 
MedicationAdministration profile for paracetamol administered because of fever. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQ-FHIR-IG|current/StructureDefinition/StructureDefinition-paracetamol-on-fever-medicationAdministration-profile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-paracetamol-on-fever-medicationAdministration-profile.csv), [Excel](../StructureDefinition-paracetamol-on-fever-medicationAdministration-profile.xlsx), [Schematron](../StructureDefinition-paracetamol-on-fever-medicationAdministration-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "paracetamol-on-fever-medicationAdministration-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/paracetamol-on-fever-medicationAdministration-profile",
  "version" : "1.0.0",
  "name" : "ParacetamolOnFeverMedicationAdministrationProfile",
  "title" : "Paracetamol on Fever MedicationAdministration Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T07:55:03+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "MedicationAdministration profile for paracetamol administered because of fever.",
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
      "id" : "MedicationAdministration.extension:assessmentTiming",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "assessmentTiming"
    },
    {
      "id" : "MedicationAdministration.extension:assessmentTiming.value[x]",
      "path" : "MedicationAdministration.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/paracetamol-on-fever-timing-vs"
      }
    },
    {
      "id" : "MedicationAdministration.medication.concept",
      "path" : "MedicationAdministration.medication.concept",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387517004",
          "display" : "Paracetamol (substance)"
        }]
      }
    },
    {
      "id" : "MedicationAdministration.reason",
      "path" : "MedicationAdministration.reason",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/fever-observation-profile"]
      }]
    }]
  }
}

```

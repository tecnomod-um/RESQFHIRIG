# Nimodipine MedicationAdministration Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Nimodipine MedicationAdministration Profile 

 
MedicationAdministration profile for nimodipine in the subarachnoid hemorrhage pathway. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQ-FHIR-IG|current/StructureDefinition/StructureDefinition-nimodipine-medicationAdministration-profile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-nimodipine-medicationAdministration-profile.csv), [Excel](../StructureDefinition-nimodipine-medicationAdministration-profile.xlsx), [Schematron](../StructureDefinition-nimodipine-medicationAdministration-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nimodipine-medicationAdministration-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/nimodipine-medicationAdministration-profile",
  "version" : "1.0.0",
  "name" : "NimodipineMedicationAdministrationProfile",
  "title" : "Nimodipine MedicationAdministration Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T07:47:29+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "MedicationAdministration profile for nimodipine in the subarachnoid hemorrhage pathway.",
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
      "id" : "MedicationAdministration.extension:nimodipineTiming",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "nimodipineTiming",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/assessment-timing-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication.concept",
      "path" : "MedicationAdministration.medication.concept",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387502003",
          "display" : "Nimodipine (substance)"
        }]
      }
    }]
  }
}

```

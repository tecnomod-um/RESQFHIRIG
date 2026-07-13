# Fever Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fever Observation Profile**

## Resource Profile: Fever Observation Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/fever-observation-profile | *Version*:1.0.0 |
| Active as of 2026-07-13 | *Computable Name*:FeverObservationProfile |

 
Observation profile for fever presence or temperature values during the stroke pathway. 

**Usages:**

* Refer to this Profile: [Paracetamol on Fever MedicationAdministration Profile](StructureDefinition-paracetamol-on-fever-medication-administration-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-fever-observation-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fever-observation-profile.csv), [Excel](StructureDefinition-fever-observation-profile.xlsx), [Schematron](StructureDefinition-fever-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fever-observation-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/fever-observation-profile",
  "version" : "1.0.0",
  "name" : "FeverObservationProfile",
  "title" : "Fever Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-13T09:21:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Observation profile for fever presence or temperature values during the stroke pathway.",
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
      "short" : "Fever indicator or temperature measurement",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "boolean"
      }]
    }]
  }
}

```

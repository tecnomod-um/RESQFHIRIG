# Specific Finding Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specific Finding Observation Profile**

## Resource Profile: Specific Finding Observation Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:SpecificFindingObservationProfile |

 
Observation profile for specific stroke-related clinical, imaging and procedural findings including mTICI, bleeding volume, carotid stenosis, artery occlusion, atrial fibrillation/flutter and post-treatment findings. 

**Usages:**

* Refer to this Profile: [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md) and [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-specific-finding-observation-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-specific-finding-observation-profile.csv), [Excel](StructureDefinition-specific-finding-observation-profile.xlsx), [Schematron](StructureDefinition-specific-finding-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "specific-finding-observation-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile",
  "version" : "1.0.0",
  "name" : "SpecificFindingObservationProfile",
  "title" : "Specific Finding Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T10:11:46+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Observation profile for specific stroke-related clinical, imaging and procedural findings including mTICI, bleeding volume, carotid stenosis, artery occlusion, atrial fibrillation/flutter and post-treatment findings.",
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
      "path" : "Observation",
      "constraint" : [{
        "key" : "specific-finding-must-have-result",
        "severity" : "error",
        "human" : "A specific finding observation should have either a value or a dataAbsentReason.",
        "expression" : "value.exists() or dataAbsentReason.exists()",
        "source" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"
      },
      {
        "key" : "mtici-value-must-use-mtici-score-vs",
        "severity" : "error",
        "human" : "If Observation.code is mTICI, valueCodeableConcept must belong to MTiciScoreVS.",
        "expression" : "code.coding.where(system = 'http://qualityregistry.org/CodeSystem/mtici-code-cs' and code = 'mTICI').exists().not() or (value.ofType(CodeableConcept).exists() and value.ofType(CodeableConcept).memberOf('http://qualityregistry.org/ValueSet/mtici-score-vs'))",
        "source" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"
      },
      {
        "key" : "blood-volume-must-be-quantity-ml",
        "severity" : "error",
        "human" : "If Observation.code is blood volume, valueQuantity must be expressed in UCUM milliliters.",
        "expression" : "code.coding.where(system = 'http://snomed.info/sct' and code = '16086006').exists().not() or (value.ofType(Quantity).exists() and value.ofType(Quantity).system = 'https://ucum.org/ucum' and value.ofType(Quantity).code = 'mL')",
        "source" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"
      },
      {
        "key" : "carotid-stenosis-value-rule",
        "severity" : "error",
        "human" : "If Observation.code is carotid stenosis, the value must be either a boolean presence/absence value or a coded carotid stenosis level.",
        "expression" : "code.coding.where(system = 'http://snomed.info/sct' and (code = '64586002' or code = '787044009')).exists().not() or value.ofType(boolean).exists() or value.ofType(CodeableConcept).memberOf('http://qualityregistry.org/ValueSet/carotid-stenosis-level-vs')",
        "source" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"
      },
      {
        "key" : "artery-occlusion-must-have-bodystructure",
        "severity" : "error",
        "human" : "If Observation.code is artery occlusion, valueBoolean must be true and bodyStructure must be present.",
        "expression" : "code.coding.where(system = 'http://snomed.info/sct' and code = '2929001').exists().not() or (value.ofType(boolean) = true and bodyStructure.exists())",
        "source" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"
      },
      {
        "key" : "af-flutter-value-must-use-af-flutter-vs",
        "severity" : "error",
        "human" : "If Observation.code is atrial fibrillation/flutter status, valueCodeableConcept must belong to AtrialFibrillationOrFlutterVS.",
        "expression" : "code.coding.where(system = 'http://qualityregistry.org/CodeSystem/specific-finding-cs' and code = 'atrial-fibrillation-flutter').exists().not() or (value.ofType(CodeableConcept).exists() and value.ofType(CodeableConcept).memberOf('http://qualityregistry.org/ValueSet/atrial-fibrillation-or-flutter-vs'))",
        "source" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"
      },
      {
        "key" : "hemorrhagic-transformation-value-rule",
        "severity" : "error",
        "human" : "If Observation.code is hemorrhagic transformation, the value must be either a boolean presence/absence value or a coded hemorrhagic transformation type.",
        "expression" : "code.coding.where(system = 'http://snomed.info/sct' and code = '230706003').exists().not() or value.ofType(boolean).exists() or value.ofType(CodeableConcept).memberOf('http://qualityregistry.org/ValueSet/hemorrhagic-transformation-type-vs')",
        "source" : "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"
      }]
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
        "profile" : ["http://qualityregistry.org/StructureDefinition/observation-timing-context-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Observation category, such as exam, procedure or laboratory",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Specific stroke-related finding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/specific-finding-vs"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Finding value",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueBoolean",
      "path" : "Observation.value[x]",
      "sliceName" : "valueBoolean",
      "short" : "Presence or absence of the finding",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Coded finding value, such as mTICI score, AF/flutter status, carotid stenosis level or hemorrhagic transformation type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/specific-finding-value-vs"
      }
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Quantitative finding value, such as bleeding volume",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.unit",
      "path" : "Observation.value[x].unit",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.system",
      "path" : "Observation.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.code",
      "path" : "Observation.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "short" : "Anatomical site when a simple coded body site is sufficient",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodyStructure",
      "path" : "Observation.bodyStructure",
      "short" : "Patient-specific anatomical structure associated with the finding",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/resq-body-structure-profile"]
      }],
      "mustSupport" : true
    }]
  }
}

```

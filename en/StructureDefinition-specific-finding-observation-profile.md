# Specific Finding Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Specific Finding Observation Profile 

 
Observation profile for specific clinical, imaging or procedural findings including mTICI, bleeding volume, carotid stenosis, occlusion and atrial fibrillation/flutter. 

**Usages:**

* Refer to this Profile: [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQ-FHIR-IG|current/StructureDefinition/StructureDefinition-specific-finding-observation-profile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-specific-finding-observation-profile.csv), [Excel](../StructureDefinition-specific-finding-observation-profile.xlsx), [Schematron](../StructureDefinition-specific-finding-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "specific-finding-observation-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/specific-finding-observation-profile",
  "version" : "1.0.0",
  "name" : "SpecificFindingObservationProfile",
  "title" : "Specific Finding Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T14:48:08+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Observation profile for specific clinical, imaging or procedural findings including mTICI, bleeding volume, carotid stenosis, occlusion and atrial fibrillation/flutter.",
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
      "path" : "Observation",
      "constraint" : [{
        "key" : "mtici-value-must-use-mtici-score-vs",
        "severity" : "error",
        "human" : "If Observation.code is mTICI, valueCodeableConcept must belong to MTiciScoreVS.",
        "expression" : "code.coding.where(system = 'http://tecnomod-um.org/CodeSystem/specific-finding-cs' and code = 'mtici').exists().not() or value.ofType(CodeableConcept).memberOf('http://tecnomod-um.org/ValueSet/mtici-score-vs')",
        "source" : "http://tecnomod-um.org/StructureDefinition/specific-finding-observation-profile"
      },
      {
        "key" : "af-flutter-value-must-use-af-flutter-vs",
        "severity" : "error",
        "human" : "If Observation.code is atrial fibrillation/flutter, valueCodeableConcept must belong to AtrialFibrillationOrFlutterVS.",
        "expression" : "code.coding.where(system = 'http://tecnomod-um.org/CodeSystem/specific-finding-cs' and code = 'atrial-fibrillation-flutter').exists().not() or value.ofType(CodeableConcept).memberOf('http://tecnomod-um.org/ValueSet/atrial-fibrillation-or-flutter-vs')",
        "source" : "http://tecnomod-um.org/StructureDefinition/specific-finding-observation-profile"
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
        "profile" : ["http://tecnomod-um.org/StructureDefinition/observation-timing-context-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Specific stroke finding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/specific-finding-vs"
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
      },
      {
        "code" : "integer"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Coded finding value, such as mTICI score or atrial fibrillation/flutter status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/specific-finding-value-codeableconcept-vs"
      }
    },
    {
      "id" : "Observation.bodyStructure",
      "path" : "Observation.bodyStructure",
      "short" : "Anatomical structure associated with the finding",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-body-structure-profile"]
      }],
      "mustSupport" : true
    }]
  }
}

```

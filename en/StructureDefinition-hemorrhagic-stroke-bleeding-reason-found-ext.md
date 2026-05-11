# Hemorrhagic stroke bleeding reason found coded state - RESQ Stroke Registry Implementation Guide v1.0.0

## Extension: Hemorrhagic stroke bleeding reason found coded state 

Coded state used when bleeding reason is not found/undetermined in the source model.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/hemorrhagic-stroke-bleeding-reason-found-ext)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-hemorrhagic-stroke-bleeding-reason-found-ext.csv), [Excel](../StructureDefinition-hemorrhagic-stroke-bleeding-reason-found-ext.xlsx), [Schematron](../StructureDefinition-hemorrhagic-stroke-bleeding-reason-found-ext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hemorrhagic-stroke-bleeding-reason-found-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-found-ext",
  "version" : "1.0.0",
  "name" : "HemorrhagicStrokeBleedingReasonFoundExt",
  "title" : "Hemorrhagic stroke bleeding reason found coded state",
  "status" : "draft",
  "date" : "2026-05-11T15:54:34+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Coded state used when bleeding reason is not found/undetermined in the source model.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Hemorrhagic stroke bleeding reason found coded state",
      "definition" : "Coded state used when bleeding reason is not found/undetermined in the source model."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-found-ext"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/bleeding-reason-vs"
      }
    }]
  }
}

```

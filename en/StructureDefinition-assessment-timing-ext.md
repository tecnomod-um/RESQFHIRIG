# Assessment or medication timing - RESQ Stroke Registry Implementation Guide v1.0.0

## Extension: Assessment or medication timing 

Timing category used by medication-administration builders, e.g. insulin within one hour or paracetamol timing. The Python code contains a typo variant tecnomod-um-org; this IG normalizes to tecnomod-um.org.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Nimodipine MedicationAdministration Profile](StructureDefinition-nimodipine-medicationAdministration-profile.md) and [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQ-FHIR-IG|current/StructureDefinition/StructureDefinition-assessment-timing-ext.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-assessment-timing-ext.csv), [Excel](../StructureDefinition-assessment-timing-ext.xlsx), [Schematron](../StructureDefinition-assessment-timing-ext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "assessment-timing-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/assessment-timing-ext",
  "version" : "1.0.0",
  "name" : "AssessmentTimingExt",
  "title" : "Assessment or medication timing",
  "status" : "draft",
  "date" : "2026-06-01T12:57:35+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Timing category used by medication-administration builders, e.g. insulin within one hour or paracetamol timing. The Python code contains a typo variant tecnomod-um-org; this IG normalizes to tecnomod-um.org.",
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
    "expression" : "MedicationAdministration"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Assessment or medication timing",
      "definition" : "Timing category used by medication-administration builders, e.g. insulin within one hour or paracetamol timing. The Python code contains a typo variant tecnomod-um-org; this IG normalizes to tecnomod-um.org."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/assessment-timing-ext"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    }]
  }
}

```

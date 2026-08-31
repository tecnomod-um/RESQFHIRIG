# Wake-up stroke - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Wake-up stroke**

## Extension: Wake-up stroke 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/wakeup-stroke-ext | *Version*:1.0.0 |
| Draft as of 2026-08-31 | *Computable Name*:WakeupStrokeExt |

Boolean flag indicating that the stroke was first noticed after waking; onsetDateTime is then populated using the last-known-well/sleep timestamp in the builder.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)
* Examples for this Extension: [Condition/ExampleStrokeDiagnosis](Condition-ExampleStrokeDiagnosis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-wakeup-stroke-ext.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-wakeup-stroke-ext.csv), [Excel](StructureDefinition-wakeup-stroke-ext.xlsx), [Schematron](StructureDefinition-wakeup-stroke-ext.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "wakeup-stroke-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://qualityregistry.org/StructureDefinition/wakeup-stroke-ext",
  "version" : "1.0.0",
  "name" : "WakeupStrokeExt",
  "title" : "Wake-up stroke",
  "status" : "draft",
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Boolean flag indicating that the stroke was first noticed after waking; onsetDateTime is then populated using the last-known-well/sleep timestamp in the builder.",
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
      "short" : "Wake-up stroke",
      "definition" : "Boolean flag indicating that the stroke was first noticed after waking; onsetDateTime is then populated using the last-known-well/sleep timestamp in the builder."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://qualityregistry.org/StructureDefinition/wakeup-stroke-ext"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    }]
  }
}

```

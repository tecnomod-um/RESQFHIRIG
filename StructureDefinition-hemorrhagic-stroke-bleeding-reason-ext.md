# Hemorrhagic stroke bleeding reason - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hemorrhagic stroke bleeding reason**

## Extension: Hemorrhagic stroke bleeding reason 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:HemorrhagicStrokeBleedingReasonExt |

Reason or underlying cause identified for hemorrhagic stroke, including undetermined when no reason is found.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.csv), [Excel](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.xlsx), [Schematron](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hemorrhagic-stroke-bleeding-reason-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://qualityregistry.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext",
  "version" : "1.0.0",
  "name" : "HemorrhagicStrokeBleedingReasonExt",
  "title" : "Hemorrhagic stroke bleeding reason",
  "status" : "draft",
  "date" : "2026-09-04T09:44:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Reason or underlying cause identified for hemorrhagic stroke, including undetermined when no reason is found.",
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
      "short" : "Hemorrhagic stroke bleeding reason",
      "definition" : "Reason or underlying cause identified for hemorrhagic stroke, including undetermined when no reason is found."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://qualityregistry.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext"
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
        "valueSet" : "http://qualityregistry.org/ValueSet/bleeding-reason-vs"
      }
    }]
  }
}

```

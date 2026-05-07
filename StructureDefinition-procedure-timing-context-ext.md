# Procedure timing context - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure timing context**

## Extension: Procedure timing context 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/procedure-timing-context-ext | *Version*:1.0.0 |
| Draft as of 2026-05-07 | *Computable Name*:ProcedureTimingContextExt |

Timing or phase context for procedure execution, such as acute/post-acute or specific screening window.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md), [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md), [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md) and [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tecnomod.resq.stroke|current/StructureDefinition/procedure-timing-context-ext)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-procedure-timing-context-ext.csv), [Excel](StructureDefinition-procedure-timing-context-ext.xlsx), [Schematron](StructureDefinition-procedure-timing-context-ext.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "procedure-timing-context-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/procedure-timing-context-ext",
  "version" : "1.0.0",
  "name" : "ProcedureTimingContextExt",
  "title" : "Procedure timing context",
  "status" : "draft",
  "date" : "2026-05-07T11:15:53+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Timing or phase context for procedure execution, such as acute/post-acute or specific screening window.",
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
    "expression" : "Procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Procedure timing context",
      "definition" : "Timing or phase context for procedure execution, such as acute/post-acute or specific screening window."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/procedure-timing-context-ext"
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
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/procedure-timing-context-vs"
      }
    }]
  }
}

```

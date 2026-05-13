# Post-acute care required - RESQ Stroke Registry Implementation Guide v1.0.0

## Extension: Post-acute care required 

Boolean indicator used by Procedure builders to mark post-acute-care relevance. Semantically equivalent to required-post-acute-care-ext but kept because both URLs exist in the codebase.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md), [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md), [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md) and [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/post-acute-care-required-ext)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-post-acute-care-required-ext.csv), [Excel](../StructureDefinition-post-acute-care-required-ext.xlsx), [Schematron](../StructureDefinition-post-acute-care-required-ext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "post-acute-care-required-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/post-acute-care-required-ext",
  "version" : "1.0.0",
  "name" : "PostAcuteCareRequiredExt",
  "title" : "Post-acute care required",
  "status" : "draft",
  "date" : "2026-05-13T14:14:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Boolean indicator used by Procedure builders to mark post-acute-care relevance. Semantically equivalent to required-post-acute-care-ext but kept because both URLs exist in the codebase.",
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
      "short" : "Post-acute care required",
      "definition" : "Boolean indicator used by Procedure builders to mark post-acute-care relevance. Semantically equivalent to required-post-acute-care-ext but kept because both URLs exist in the codebase."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/post-acute-care-required-ext"
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

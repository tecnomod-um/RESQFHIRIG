# Initial care intensity - RESQ Stroke Registry Implementation Guide v1.0.0

## Extension: Initial care intensity 

Initial care intensity for hospitalized location, e.g. ICU/stroke unit, monitored bed, or standard bed.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hospitalized Location Profile](StructureDefinition-hospitalized-location-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/initial-care-intensity-ext)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-initial-care-intensity-ext.csv), [Excel](../StructureDefinition-initial-care-intensity-ext.xlsx), [Schematron](../StructureDefinition-initial-care-intensity-ext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "initial-care-intensity-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/initial-care-intensity-ext",
  "version" : "1.0.0",
  "name" : "InitialCareIntensityExt",
  "title" : "Initial care intensity",
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
  "description" : "Initial care intensity for hospitalized location, e.g. ICU/stroke unit, monitored bed, or standard bed.",
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
    "expression" : "Location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Initial care intensity",
      "definition" : "Initial care intensity for hospitalized location, e.g. ICU/stroke unit, monitored bed, or standard bed."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/initial-care-intensity-ext"
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
        "valueSet" : "http://tecnomod-um.org/ValueSet/hospitalized-in-vs"
      }
    }]
  }
}

```

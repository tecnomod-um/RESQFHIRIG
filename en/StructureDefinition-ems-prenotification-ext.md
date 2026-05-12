# EMS prenotification - RESQ Stroke Registry Implementation Guide v1.0.0

## Extension: EMS prenotification 

Indicates whether emergency medical services prenotified the receiving hospital before arrival.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Encounter Profile](StructureDefinition-stroke-encounter-profile.md)
* Examples for this Extension: [Encounter/ExampleStrokeEncounter](Encounter-ExampleStrokeEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/ems-prenotification-ext)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ems-prenotification-ext.csv), [Excel](../StructureDefinition-ems-prenotification-ext.xlsx), [Schematron](../StructureDefinition-ems-prenotification-ext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ems-prenotification-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/ems-prenotification-ext",
  "version" : "1.0.0",
  "name" : "EmsPrenotificationExt",
  "title" : "EMS prenotification",
  "status" : "draft",
  "date" : "2026-05-12T09:41:56+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Indicates whether emergency medical services prenotified the receiving hospital before arrival.",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "EMS prenotification",
      "definition" : "Indicates whether emergency medical services prenotified the receiving hospital before arrival."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/ems-prenotification-ext"
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

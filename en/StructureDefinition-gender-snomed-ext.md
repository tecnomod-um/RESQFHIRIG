# Gender represented with SNOMED CT - RESQ Stroke Registry Implementation Guide v1.0.0

## Extension: Gender represented with SNOMED CT 

Sex/gender value as a SNOMED CT CodeableConcept, matching build_Patient().

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RESQ Patient Profile](StructureDefinition-resq-patient-profile.md)
* Examples for this Extension: [Patient/ExampleRESQPatient](Patient-ExampleRESQPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/gender-snomed-ext)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-gender-snomed-ext.csv), [Excel](../StructureDefinition-gender-snomed-ext.xlsx), [Schematron](../StructureDefinition-gender-snomed-ext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gender-snomed-ext",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://tecnomod-um.org/StructureDefinition/gender-snomed-ext",
  "version" : "1.0.0",
  "name" : "GenderSnomedExt",
  "title" : "Gender represented with SNOMED CT",
  "status" : "draft",
  "date" : "2026-05-12T07:59:38+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Sex/gender value as a SNOMED CT CodeableConcept, matching build_Patient().",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Gender represented with SNOMED CT",
      "definition" : "Sex/gender value as a SNOMED CT CodeableConcept, matching build_Patient()."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://tecnomod-um.org/StructureDefinition/gender-snomed-ext"
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
        "valueSet" : "http://tecnomod-um.org/ValueSet/sex-vs"
      }
    }]
  }
}

```

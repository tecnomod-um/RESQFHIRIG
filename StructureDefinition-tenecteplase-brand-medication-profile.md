# Tenecteplase Brand Medication Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tenecteplase Brand Medication Profile**

## Resource Profile: Tenecteplase Brand Medication Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/tenecteplase-brand-medication-profile | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:TenecteplaseBrandMedicationProfile |

 
Medication profile for tenecteplase with a specific brand name, used in the RES-Q registry to capture the use of tenecteplase in stroke treatment. 

 
Represents tenecteplase medications with specific brand names to capture detailed treatment information for quality reporting and analysis. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-tenecteplase-brand-medication-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tenecteplase-brand-medication-profile.csv), [Excel](StructureDefinition-tenecteplase-brand-medication-profile.xlsx), [Schematron](StructureDefinition-tenecteplase-brand-medication-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tenecteplase-brand-medication-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/tenecteplase-brand-medication-profile",
  "version" : "1.0.0",
  "name" : "TenecteplaseBrandMedicationProfile",
  "title" : "Tenecteplase Brand Medication Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-09T09:09:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Medication profile for tenecteplase with a specific brand name, used in the RES-Q registry to capture the use of tenecteplase in stroke treatment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Represents tenecteplase medications with specific brand names to capture detailed treatment information for quality reporting and analysis.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Tenecteplase medication with specific brand name",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/tenecteplase-brand-vs"
      }
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item",
      "path" : "Medication.ingredient.item",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item.concept",
      "path" : "Medication.ingredient.item.concept",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "127967007",
          "display" : "Product containing tenecteplase (medicinal product)"
        }]
      }
    },
    {
      "id" : "Medication.ingredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "patternBoolean" : true
    }]
  }
}

```

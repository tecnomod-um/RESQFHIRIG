# Glasgow Coma Score Observation Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Glasgow Coma Score Observation Profile**

## Resource Profile: Glasgow Coma Score Observation Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/glasgow-coma-score-observation-profile | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:GlasgowComaScoreObservationProfile |

 
Specialized functional score profile for Glasgow Coma Score values captured by the registry. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-glasgow-coma-score-observation-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-glasgow-coma-score-observation-profile.csv), [Excel](StructureDefinition-glasgow-coma-score-observation-profile.xlsx), [Schematron](StructureDefinition-glasgow-coma-score-observation-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "glasgow-coma-score-observation-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/glasgow-coma-score-observation-profile",
  "version" : "1.0.0",
  "name" : "GlasgowComaScoreObservationProfile",
  "title" : "Glasgow Coma Score Observation Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T09:55:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Specialized functional score profile for Glasgow Coma Score values captured by the registry.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://tecnomod-um.org/StructureDefinition/functional-score-observation-profile",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "248241002",
          "display" : "Glasgow coma score (observable entity)"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```

# Mechanical Thrombectomy DiagnosticReport Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mechanical Thrombectomy DiagnosticReport Profile**

## Resource Profile: Mechanical Thrombectomy DiagnosticReport Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/mechanical-thrombectomy-diagnostic-report-profile | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:MechanicalThrombectomyDiagnosticReportProfile |

 
DiagnosticReport profile for thrombectomy outcome, especially mTICI reperfusion results. 

 
Collects procedure outcome observations after mechanical thrombectomy. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.csv), [Excel](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.xlsx), [Schematron](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mechanical-thrombectomy-diagnostic-report-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/mechanical-thrombectomy-diagnostic-report-profile",
  "version" : "1.0.0",
  "name" : "MechanicalThrombectomyDiagnosticReportProfile",
  "title" : "Mechanical Thrombectomy DiagnosticReport Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T09:17:06+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "DiagnosticReport profile for thrombectomy outcome, especially mTICI reperfusion results.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Collects procedure outcome observations after mechanical thrombectomy.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "short" : "Final diagnostic report",
      "patternCode" : "final",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Report type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/perforation-procedures-vs"
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "short" : "Index stroke encounter",
      "definition" : "Encounter that anchors the clinical fact to the acute stroke episode and hospital pathway.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "short" : "Thrombectomy outcome observation such as mTICI",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile"]
      }],
      "mustSupport" : true
    }]
  }
}

```

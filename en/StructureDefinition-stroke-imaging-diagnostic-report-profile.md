# Stroke Imaging DiagnosticReport Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Stroke Imaging DiagnosticReport Profile 

 
DiagnosticReport profile for brain, carotid and follow-up imaging reports in the stroke pathway. 

**Usages:**

* Refer to this Profile: [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQ-FHIR-IG|current/StructureDefinition/StructureDefinition-stroke-imaging-diagnostic-report-profile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-stroke-imaging-diagnostic-report-profile.csv), [Excel](../StructureDefinition-stroke-imaging-diagnostic-report-profile.xlsx), [Schematron](../StructureDefinition-stroke-imaging-diagnostic-report-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-imaging-diagnostic-report-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/stroke-imaging-diagnostic-report-profile",
  "version" : "1.0.0",
  "name" : "StrokeImagingDiagnosticReportProfile",
  "title" : "Stroke Imaging DiagnosticReport Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T07:47:29+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "DiagnosticReport profile for brain, carotid and follow-up imaging reports in the stroke pathway.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Aggregates imaging observations and coded conclusions so imaging evidence can be referenced from procedures and clinical findings.",
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
        "valueSet" : "http://tecnomod-um.org/ValueSet/imaging-type-vs"
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
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
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
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "short" : "Imaging result observations",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "short" : "Coded imaging conclusion",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/specific-finding-vs"
      }
    }]
  }
}

```

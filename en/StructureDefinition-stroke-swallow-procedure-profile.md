# Stroke Swallowing Screening Procedure Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Stroke Swallowing Screening Procedure Profile 

 
Procedure profile for swallowing screening, including screening type, not-done reason, performer role and timing context. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQ-FHIR-IG|current/StructureDefinition/StructureDefinition-stroke-swallow-procedure-profile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-stroke-swallow-procedure-profile.csv), [Excel](../StructureDefinition-stroke-swallow-procedure-profile.xlsx), [Schematron](../StructureDefinition-stroke-swallow-procedure-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-swallow-procedure-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/stroke-swallow-procedure-profile",
  "version" : "1.0.0",
  "name" : "StrokeSwallowProcedureProfile",
  "title" : "Stroke Swallowing Screening Procedure Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T14:48:08+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Procedure profile for swallowing screening, including screening type, not-done reason, performer role and timing context.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "constraint" : [{
        "key" : "stroke-swallow-completed-requires-post-acute-care",
        "severity" : "error",
        "human" : "If the swallowing screening procedure is completed, post-acute care required extension SHALL be present.",
        "expression" : "status != 'completed' or extension.where(url = 'http://tecnomod-um.org/StructureDefinition/post-acute-care-required-ext').exists()",
        "source" : "http://tecnomod-um.org/StructureDefinition/stroke-swallow-procedure-profile"
      },
      {
        "key" : "stroke-swallow-not-done-requires-status-reason",
        "severity" : "error",
        "human" : "If the swallowing screening procedure was not done, statusReason SHALL be present.",
        "expression" : "status != 'not-done' or statusReason.exists()",
        "source" : "http://tecnomod-um.org/StructureDefinition/stroke-swallow-procedure-profile"
      }]
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.extension:procedureTimingContext",
      "path" : "Procedure.extension",
      "sliceName" : "procedureTimingContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/procedure-timing-context-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:postAcuteCareRequired",
      "path" : "Procedure.extension",
      "sliceName" : "postAcuteCareRequired",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/post-acute-care-required-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Reason screening was not done",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/procedure-not-done-reason-vs"
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Swallowing screening type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/swallowing-screening-type-vs"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
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
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "Screening performer",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-practitioner-role-profile"]
      }]
    }]
  }
}

```

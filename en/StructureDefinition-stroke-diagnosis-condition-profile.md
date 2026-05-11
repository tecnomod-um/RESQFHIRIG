# Stroke Diagnosis Condition Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Stroke Diagnosis Condition Profile 

 
Condition profile for the index stroke diagnosis. It captures stroke type, onset timing, body site, diagnostic evidence and stroke-specific classification extensions such as ischemic etiology, hemorrhagic bleeding reason and wake-up stroke status. 

**Usages:**

* Refer to this Profile: [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md)
* Examples for this Profile: [Condition/ExampleStrokeDiagnosis](Condition-ExampleStrokeDiagnosis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/stroke-diagnosis-condition-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-stroke-diagnosis-condition-profile.csv), [Excel](../StructureDefinition-stroke-diagnosis-condition-profile.xlsx), [Schematron](../StructureDefinition-stroke-diagnosis-condition-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-diagnosis-condition-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/stroke-diagnosis-condition-profile",
  "version" : "1.0.0",
  "name" : "StrokeDiagnosisConditionProfile",
  "title" : "Stroke Diagnosis Condition Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-11T15:54:44+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Condition profile for the index stroke diagnosis. It captures stroke type, onset timing, body site, diagnostic evidence and stroke-specific classification extensions such as ischemic etiology, hemorrhagic bleeding reason and wake-up stroke status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Represents the principal clinical diagnosis around which the registry episode is organized.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.extension:ischemicStrokeEtiology",
      "path" : "Condition.extension",
      "sliceName" : "ischemicStrokeEtiology",
      "short" : "Known ischemic stroke etiology",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/ischemic-stroke-etiology-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:ischemicStrokeEtiologyKnown",
      "path" : "Condition.extension",
      "sliceName" : "ischemicStrokeEtiologyKnown",
      "short" : "Known/unknown state for ischemic etiology",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/ischemic-stroke-etiology-known-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:hemorrhagicStrokeBleedingReason",
      "path" : "Condition.extension",
      "sliceName" : "hemorrhagicStrokeBleedingReason",
      "short" : "Known hemorrhagic bleeding reason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:hemorrhagicStrokeBleedingReasonFound",
      "path" : "Condition.extension",
      "sliceName" : "hemorrhagicStrokeBleedingReasonFound",
      "short" : "Known/unknown state for bleeding reason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-found-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:wakeupStroke",
      "path" : "Condition.extension",
      "sliceName" : "wakeupStroke",
      "short" : "Wake-up stroke indicator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/wakeup-stroke-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Active index diagnosis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Verification state of diagnosis",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Stroke diagnosis type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/stroke-type-vs"
      }
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "short" : "Anatomical site of stroke involvement",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/body-sites-vs"
      }
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
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
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "short" : "Stroke onset or last-known-well date/time",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "short" : "Diagnostic evidence supporting the stroke diagnosis",
      "mustSupport" : true
    }]
  }
}

```

# Stroke Encounter Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Stroke Encounter Profile 

 
Index encounter for an acute stroke episode in the RES-Q registry. It records the patient, completed encounter state, admission and discharge pathway information, hospital locations, first-hospital status, EMS prenotification and post-acute-care applicability. 

**Usages:**

* Refer to this Profile: [Base Stroke Observation Profile](StructureDefinition-base-stroke-observation.md), [Discharge MedicationRequest Profile](StructureDefinition-discharge-medication-request-profile.md), [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md), [Post-Stroke Complication Condition Profile](StructureDefinition-post-stroke-complication-condition-profile.md)... Show 13 more, [Prior MedicationStatement Profile](StructureDefinition-prior-medication-statement-profile.md), [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md), [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md), [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md), [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md), [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md), [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md), [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md), [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md), [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md), [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md), [Stroke VTE Prophylaxis Procedure Profile](StructureDefinition-stroke-vte-procedure-profile.md) and [Three-Month Contact Communication Profile](StructureDefinition-three-month-communication-profile.md)
* Examples for this Profile: [Encounter/ExampleStrokeEncounter](Encounter-ExampleStrokeEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/stroke-encounter-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-stroke-encounter-profile.csv), [Excel](../StructureDefinition-stroke-encounter-profile.xlsx), [Schematron](../StructureDefinition-stroke-encounter-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-encounter-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/stroke-encounter-profile",
  "version" : "1.0.0",
  "name" : "StrokeEncounterProfile",
  "title" : "Stroke Encounter Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-11T15:54:34+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Index encounter for an acute stroke episode in the RES-Q registry. It records the patient, completed encounter state, admission and discharge pathway information, hospital locations, first-hospital status, EMS prenotification and post-acute-care applicability.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Acts as the central clinical context for diagnosis, observations, procedures, medication administrations and follow-up resources created for one stroke episode.",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 3
    },
    {
      "id" : "Encounter.extension:firstHospital",
      "path" : "Encounter.extension",
      "sliceName" : "firstHospital",
      "short" : "Whether this was the first hospital attended",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/first-hospital-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:requiredPostAcuteCare",
      "path" : "Encounter.extension",
      "sliceName" : "requiredPostAcuteCare",
      "short" : "Whether post-acute care was required or applicable",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/required-post-acute-care-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:emsPrenotification",
      "path" : "Encounter.extension",
      "sliceName" : "emsPrenotification",
      "short" : "Whether EMS prenotified the receiving hospital",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/ems-prenotification-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:dischargeDepartmentService",
      "path" : "Encounter.extension",
      "sliceName" : "dischargeDepartmentService",
      "short" : "Discharge department, service or facility type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/discharge-department-service-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "Completed stroke episode encounter",
      "patternCode" : "completed",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Encounter class or care setting",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "Patient with the index stroke episode",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.admission",
      "path" : "Encounter.admission",
      "short" : "Admission and discharge pathway details",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.admission.admitSource",
      "path" : "Encounter.admission.admitSource",
      "short" : "Pathway or source before hospital admission",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/admission-pathway-vs"
      }
    },
    {
      "id" : "Encounter.admission.dischargeDisposition",
      "path" : "Encounter.admission.dischargeDisposition",
      "short" : "Destination or disposition after discharge",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/discharge-destination-vs"
      }
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "short" : "Locations used during the stroke pathway",
      "mustSupport" : true
    }]
  }
}

```

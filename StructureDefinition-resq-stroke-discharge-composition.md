# RESQ Stroke Hospital Discharge Composition - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RESQ Stroke Hospital Discharge Composition**

## Resource Profile: RESQ Stroke Hospital Discharge Composition 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/resq-stroke-discharge-composition | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:RESQStrokeDischargeComposition |

 
FHIR R5 Composition profile for the RESQ Stroke Hospital Discharge Summary document. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-resq-stroke-discharge-composition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-resq-stroke-discharge-composition.csv), [Excel](StructureDefinition-resq-stroke-discharge-composition.xlsx), [Schematron](StructureDefinition-resq-stroke-discharge-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resq-stroke-discharge-composition",
  "url" : "http://tecnomod-um.org/StructureDefinition/resq-stroke-discharge-composition",
  "version" : "1.0.0",
  "name" : "RESQStrokeDischargeComposition",
  "title" : "RESQ Stroke Hospital Discharge Composition",
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
  "description" : "FHIR R5 Composition profile for the RESQ Stroke Hospital Discharge Summary document.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.text",
      "path" : "Composition.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "final",
      "mustSupport" : true
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "34105-7",
          "display" : "Hospital Discharge summary"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/resq-stroke-discharge-document-type-vs"
      }
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "patternString" : "Stroke Hospital Discharge Summary",
      "mustSupport" : true
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://tecnomod-um.org/ValueSet/resq-stroke-discharge-section-code-vs"
      }
    },
    {
      "id" : "Composition.section.text",
      "path" : "Composition.section.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.entry",
      "path" : "Composition.section.entry",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.emptyReason",
      "path" : "Composition.section.emptyReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/list-empty-reason"
      }
    },
    {
      "id" : "Composition.section:admissionEvaluation",
      "path" : "Composition.section",
      "sliceName" : "admissionEvaluation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:admissionEvaluation.title",
      "path" : "Composition.section.title",
      "patternString" : "Admission Evaluation"
    },
    {
      "id" : "Composition.section:admissionEvaluation.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "67851-6",
          "display" : "Admission evaluation note"
        }]
      }
    },
    {
      "id" : "Composition.section:admissionEvaluation.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/Location"]
      }]
    },
    {
      "id" : "Composition.section:patientHistory",
      "path" : "Composition.section",
      "sliceName" : "patientHistory",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:patientHistory.title",
      "path" : "Composition.section.title",
      "patternString" : "Relevant Patient History"
    },
    {
      "id" : "Composition.section:patientHistory.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11329-0",
          "display" : "History of general health Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:patientHistory.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationStatement"]
      }]
    },
    {
      "id" : "Composition.section:problemList",
      "path" : "Composition.section",
      "sliceName" : "problemList",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:problemList.title",
      "path" : "Composition.section.title",
      "patternString" : "Relevant Problems and Risk Factors"
    },
    {
      "id" : "Composition.section:problemList.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11450-4",
          "display" : "Problem list - Reported"
        }]
      }
    },
    {
      "id" : "Composition.section:problemList.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition"]
      }]
    },
    {
      "id" : "Composition.section:hospitalCourse",
      "path" : "Composition.section",
      "sliceName" : "hospitalCourse",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:hospitalCourse.title",
      "path" : "Composition.section.title",
      "patternString" : "Hospital Course"
    },
    {
      "id" : "Composition.section:hospitalCourse.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8648-8",
          "display" : "Hospital course note"
        }]
      }
    },
    {
      "id" : "Composition.section:hospitalCourse.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "Composition.section:diagnosticSummary",
      "path" : "Composition.section",
      "sliceName" : "diagnosticSummary",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:diagnosticSummary.title",
      "path" : "Composition.section.title",
      "patternString" : "Diagnostic Summary"
    },
    {
      "id" : "Composition.section:diagnosticSummary.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11535-2",
          "display" : "Hospital discharge diagnosis Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:diagnosticSummary.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "Composition.section:significantProcedures",
      "path" : "Composition.section",
      "sliceName" : "significantProcedures",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:significantProcedures.title",
      "path" : "Composition.section.title",
      "patternString" : "Significant Procedures"
    },
    {
      "id" : "Composition.section:significantProcedures.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "10185-7",
          "display" : "Hospital discharge procedures"
        }]
      }
    },
    {
      "id" : "Composition.section:significantProcedures.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure"]
      }]
    },
    {
      "id" : "Composition.section:pharmacotherapy",
      "path" : "Composition.section",
      "sliceName" : "pharmacotherapy",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:pharmacotherapy.title",
      "path" : "Composition.section.title",
      "patternString" : "Pharmacotherapy During Hospitalisation"
    },
    {
      "id" : "Composition.section:pharmacotherapy.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "87232-5",
          "display" : "Medication administration brief"
        }]
      }
    },
    {
      "id" : "Composition.section:pharmacotherapy.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
        "http://hl7.org/fhir/StructureDefinition/MedicationStatement"]
      }]
    },
    {
      "id" : "Composition.section:significantResults",
      "path" : "Composition.section",
      "sliceName" : "significantResults",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:significantResults.title",
      "path" : "Composition.section.title",
      "patternString" : "Significant Results"
    },
    {
      "id" : "Composition.section:significantResults.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "30954-2",
          "display" : "Relevant diagnostic tests/laboratory data Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:significantResults.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "Composition.section:vitalSigns",
      "path" : "Composition.section",
      "sliceName" : "vitalSigns",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:vitalSigns.title",
      "path" : "Composition.section.title",
      "patternString" : "Vital Signs at Discharge"
    },
    {
      "id" : "Composition.section:vitalSigns.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8716-3",
          "display" : "Vital signs note"
        }]
      }
    },
    {
      "id" : "Composition.section:vitalSigns.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "Composition.section:functionalStatus",
      "path" : "Composition.section",
      "sliceName" : "functionalStatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:functionalStatus.title",
      "path" : "Composition.section.title",
      "patternString" : "Functional Status at Discharge"
    },
    {
      "id" : "Composition.section:functionalStatus.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "47420-5",
          "display" : "Functional status assessment note"
        }]
      }
    },
    {
      "id" : "Composition.section:functionalStatus.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }]
    },
    {
      "id" : "Composition.section:dischargeDetails",
      "path" : "Composition.section",
      "sliceName" : "dischargeDetails",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:dischargeDetails.title",
      "path" : "Composition.section.title",
      "patternString" : "Discharge Details"
    },
    {
      "id" : "Composition.section:dischargeDetails.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8650-4",
          "display" : "Hospital discharge disposition note"
        }]
      }
    },
    {
      "id" : "Composition.section:dischargeDetails.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Encounter"]
      }]
    },
    {
      "id" : "Composition.section:dischargeMedications",
      "path" : "Composition.section",
      "sliceName" : "dischargeMedications",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:dischargeMedications.title",
      "path" : "Composition.section.title",
      "patternString" : "Discharge Medications"
    },
    {
      "id" : "Composition.section:dischargeMedications.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "75311-1",
          "display" : "Discharge medications Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:dischargeMedications.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/MedicationStatement"]
      }]
    },
    {
      "id" : "Composition.section:planOfCare",
      "path" : "Composition.section",
      "sliceName" : "planOfCare",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:planOfCare.title",
      "path" : "Composition.section.title",
      "patternString" : "Plan of Care and Follow-up"
    },
    {
      "id" : "Composition.section:planOfCare.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18776-5",
          "display" : "Plan of care note"
        }]
      }
    },
    {
      "id" : "Composition.section:planOfCare.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Appointment",
        "http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
        "http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    }]
  }
}

```

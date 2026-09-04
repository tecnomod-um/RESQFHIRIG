# RESQ Stroke Discharge Patient Summary Composition - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RESQ Stroke Discharge Patient Summary Composition**

## Resource Profile: RESQ Stroke Discharge Patient Summary Composition 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/resq-stroke-discharge-composition | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:RESQStrokeDischargeComposition |

 
Composition profile for the RESQ Stroke Discharge Patient Summary document. It assembles the patient, index stroke encounter and clinically relevant registry resources into a navigable FHIR R5 discharge summary. 

 
Provides the clinical document entry point for one RES-Q stroke admission, grouping diagnosis, hospital course, treatments, discharge status, medications and follow-up information while keeping each coded fact available as a discrete FHIR resource. 

**Usages:**

* Examples for this Profile: [Composition/ExampleRESQStrokeDischargeComposition](Composition-ExampleRESQStrokeDischargeComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-resq-stroke-discharge-composition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-resq-stroke-discharge-composition.csv), [Excel](StructureDefinition-resq-stroke-discharge-composition.xlsx), [Schematron](StructureDefinition-resq-stroke-discharge-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resq-stroke-discharge-composition",
  "url" : "http://qualityregistry.org/StructureDefinition/resq-stroke-discharge-composition",
  "version" : "1.0.0",
  "name" : "RESQStrokeDischargeComposition",
  "title" : "RESQ Stroke Discharge Patient Summary Composition",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T10:11:46+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Composition profile for the RESQ Stroke Discharge Patient Summary document. It assembles the patient, index stroke encounter and clinically relevant registry resources into a navigable FHIR R5 discharge summary.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Provides the clinical document entry point for one RES-Q stroke admission, grouping diagnosis, hospital course, treatments, discharge status, medications and follow-up information while keeping each coded fact available as a discrete FHIR resource.",
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
      "path" : "Composition",
      "constraint" : [{
        "key" : "resq-section-entry-or-empty-reason",
        "severity" : "warning",
        "human" : "Every section in the RESQ discharge patient summary should either reference at least one entry or state why no entry is available.",
        "expression" : "section.all(entry.exists() or emptyReason.exists())",
        "source" : "http://qualityregistry.org/StructureDefinition/resq-stroke-discharge-composition"
      }]
    },
    {
      "id" : "Composition.text",
      "path" : "Composition.text",
      "short" : "Narrative rendering of the complete discharge summary",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "short" : "Stable document identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.system",
      "path" : "Composition.identifier.system",
      "min" : 1,
      "fixedUri" : "https://stroke.qualityregistry.org",
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.value",
      "path" : "Composition.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "short" : "Final discharge patient summary",
      "patternCode" : "final",
      "mustSupport" : true
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "short" : "Discharge summary document type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18842-5",
          "display" : "Discharge summary"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://qualityregistry.org/ValueSet/resq-stroke-discharge-document-type-vs"
      }
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "short" : "Patient discharged after the index stroke admission",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "short" : "Index stroke encounter summarized by the document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "short" : "Date/time the discharge summary was finalized",
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "short" : "Authoring organization, clinician, role or system",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-registry-organization-profile",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://qualityregistry.org/StructureDefinition/resq-practitioner-role-profile",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "short" : "Human-readable document title",
      "patternString" : "RESQ Stroke Discharge Patient Summary",
      "mustSupport" : true
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "short" : "Organization responsible for maintaining the document",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-registry-organization-profile"]
      }],
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
      "short" : "Discharge summary sections",
      "definition" : "Sections organize narrative and computable entries for the discharge patient summary. When a section is present without entries, emptyReason explains why no discrete resources are referenced.",
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
        "valueSet" : "http://qualityregistry.org/ValueSet/resq-stroke-discharge-section-code-vs"
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
      "short" : "Initial clinical status, location and assessment at admission",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-diagnosis-condition-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-risk-factor-condition-profile",
        "http://qualityregistry.org/StructureDefinition/functional-score-observation-profile",
        "http://qualityregistry.org/StructureDefinition/vital-sign-observation-profile",
        "http://qualityregistry.org/StructureDefinition/timing-metric-observation-profile",
        "http://qualityregistry.org/StructureDefinition/resq-location-profile",
        "http://qualityregistry.org/StructureDefinition/hospitalized-location-profile"]
      }]
    },
    {
      "id" : "Composition.section:patientHistory",
      "path" : "Composition.section",
      "sliceName" : "patientHistory",
      "short" : "Relevant pre-stroke history and prior medication use",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/prior-medication-statement-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-risk-factor-condition-profile"]
      }]
    },
    {
      "id" : "Composition.section:problemList",
      "path" : "Composition.section",
      "sliceName" : "problemList",
      "short" : "Stroke diagnosis, risk factors and relevant complications",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-diagnosis-condition-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-risk-factor-condition-profile",
        "http://qualityregistry.org/StructureDefinition/post-stroke-complication-condition-profile"]
      }]
    },
    {
      "id" : "Composition.section:hospitalCourse",
      "path" : "Composition.section",
      "sliceName" : "hospitalCourse",
      "short" : "Clinical course and major events during hospitalization",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-diagnosis-condition-profile",
        "http://qualityregistry.org/StructureDefinition/post-stroke-complication-condition-profile",
        "http://qualityregistry.org/StructureDefinition/vital-sign-observation-profile",
        "http://qualityregistry.org/StructureDefinition/functional-score-observation-profile",
        "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile",
        "http://qualityregistry.org/StructureDefinition/timing-metric-observation-profile",
        "http://qualityregistry.org/StructureDefinition/analytics-observation-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-imaging-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-mechanical-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-swallow-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-vte-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-treatment-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/paracetamol-on-fever-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/insulin-on-hyperglycemia-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/nimodipine-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/anticoagulant-reversal-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-imaging-diagnostic-report-profile",
        "http://qualityregistry.org/StructureDefinition/mechanical-thrombectomy-diagnostic-report-profile"]
      }]
    },
    {
      "id" : "Composition.section:diagnosticSummary",
      "path" : "Composition.section",
      "sliceName" : "diagnosticSummary",
      "short" : "Final diagnosis and supporting diagnostic findings",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-diagnosis-condition-profile",
        "http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-imaging-diagnostic-report-profile",
        "http://qualityregistry.org/StructureDefinition/mechanical-thrombectomy-diagnostic-report-profile"]
      }]
    },
    {
      "id" : "Composition.section:significantProcedures",
      "path" : "Composition.section",
      "sliceName" : "significantProcedures",
      "short" : "Clinically significant procedures performed or considered",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-imaging-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-carotid-imaging-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-carotid-endarterectomy-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-mechanical-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-swallow-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-vte-procedure-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-treatment-procedure-profile"]
      }]
    },
    {
      "id" : "Composition.section:pharmacotherapy",
      "path" : "Composition.section",
      "sliceName" : "pharmacotherapy",
      "short" : "Medication administrations during acute or post-acute stroke care",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/paracetamol-on-fever-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/insulin-on-hyperglycemia-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/nimodipine-medication-administration-profile",
        "http://qualityregistry.org/StructureDefinition/anticoagulant-reversal-medication-administration-profile"]
      }]
    },
    {
      "id" : "Composition.section:treatmentTimings",
      "path" : "Composition.section",
      "sliceName" : "treatmentTimings",
      "short" : "Stroke pathway timing metrics such as door-to-needle and onset-to-door",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:treatmentTimings.title",
      "path" : "Composition.section.title",
      "patternString" : "Treatment Timings"
    },
    {
      "id" : "Composition.section:treatmentTimings.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://qualityregistry.org/CodeSystem/stroke-discharge-summary-section-cs",
          "code" : "treatment-timings",
          "display" : "Treatment Timings"
        }]
      }
    },
    {
      "id" : "Composition.section:treatmentTimings.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/timing-metric-observation-profile"]
      }]
    },
    {
      "id" : "Composition.section:significantResults",
      "path" : "Composition.section",
      "sliceName" : "significantResults",
      "short" : "Relevant diagnostic, imaging and laboratory results",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/specific-finding-observation-profile",
        "http://qualityregistry.org/StructureDefinition/analytics-observation-profile",
        "http://qualityregistry.org/StructureDefinition/fever-observation-profile",
        "http://qualityregistry.org/StructureDefinition/hyperglycemia-observation-profile",
        "http://qualityregistry.org/StructureDefinition/glucose-ge10-observation-profile",
        "http://qualityregistry.org/StructureDefinition/highest-hyperglycemia-value-observation-profile",
        "http://qualityregistry.org/StructureDefinition/highest-systolic-blood-pressure-value-observation-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-imaging-diagnostic-report-profile",
        "http://qualityregistry.org/StructureDefinition/mechanical-thrombectomy-diagnostic-report-profile"]
      }]
    },
    {
      "id" : "Composition.section:vitalSigns",
      "path" : "Composition.section",
      "sliceName" : "vitalSigns",
      "short" : "Vital signs relevant to discharge status",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/vital-sign-observation-profile",
        "http://qualityregistry.org/StructureDefinition/highest-systolic-blood-pressure-value-observation-profile"]
      }]
    },
    {
      "id" : "Composition.section:functionalStatus",
      "path" : "Composition.section",
      "sliceName" : "functionalStatus",
      "short" : "Functional and neurological status at discharge",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/functional-score-observation-profile",
        "http://qualityregistry.org/StructureDefinition/glasgow-coma-score-observation-profile",
        "http://qualityregistry.org/StructureDefinition/glasgow-coma-scale-observation-profile",
        "http://qualityregistry.org/StructureDefinition/patient-ventilated-observation-profile",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }]
    },
    {
      "id" : "Composition.section:dischargeDetails",
      "path" : "Composition.section",
      "sliceName" : "dischargeDetails",
      "short" : "Discharge destination, disposition and facility/service details",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-encounter-profile"]
      }]
    },
    {
      "id" : "Composition.section:dischargeMedications",
      "path" : "Composition.section",
      "sliceName" : "dischargeMedications",
      "short" : "Medication orders or omission reasons at discharge",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/discharge-medication-request-profile",
        "http://qualityregistry.org/StructureDefinition/no-anticoagulant-discharge-reason-observation-profile"]
      }]
    },
    {
      "id" : "Composition.section:planOfCare",
      "path" : "Composition.section",
      "sliceName" : "planOfCare",
      "short" : "Follow-up plan, scheduled contact and continuing care recommendations",
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
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/follow-up-appointment-profile",
        "http://qualityregistry.org/StructureDefinition/three-month-communication-profile",
        "http://qualityregistry.org/StructureDefinition/appointment-management-observation-profile",
        "http://qualityregistry.org/StructureDefinition/three-month-contact-mode-observation-profile",
        "http://qualityregistry.org/StructureDefinition/stroke-treatment-procedure-profile",
        "http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    }]
  }
}

```

# StrokeProcNotDoneReasonCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeProcNotDoneReasonCs CodeSystem**

## CodeSystem: StrokeProcNotDoneReasonCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/CodeSystem/stroke-proc-not-done-reason-cs | *Version*:1.0.0 |
| Active as of 2026-07-13 | *Computable Name*:StrokeProcNotDoneReasonCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-proc-not-done-reason-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ProcedureNotDoneReasonVS](ValueSet-procedure-not-done-reason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-proc-not-done-reason-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/stroke-proc-not-done-reason-cs",
  "version" : "1.0.0",
  "name" : "StrokeProcNotDoneReasonCS",
  "title" : "StrokeProcNotDoneReasonCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-13T09:30:27+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/stroke-proc-not-done-reason-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 27,
  "concept" : [{
    "code" : "done-elsewhere",
    "display" : "Performed Elsewhere"
  },
  {
    "code" : "transfer",
    "display" : "Transferred to Another Facility"
  },
  {
    "code" : "time-window",
    "display" : "Outside Therapeutic Window"
  },
  {
    "code" : "mild-deficit",
    "display" : "Mild Deficit"
  },
  {
    "code" : "disability",
    "display" : "Disability"
  },
  {
    "code" : "cost",
    "display" : "Cost / No Insurance"
  },
  {
    "code" : "unavailable",
    "display" : "Not Available"
  },
  {
    "code" : "other",
    "display" : "Other Reason"
  },
  {
    "code" : "no-lvo",
    "display" : "No Large Vessel Occlusion (LVO)"
  },
  {
    "code" : "consent",
    "display" : "Consent Not Obtained"
  },
  {
    "code" : "technically-not-possible",
    "display" : "Technically Not Possible"
  },
  {
    "code" : "no-angiography",
    "display" : "Angiography Not Performed"
  },
  {
    "code" : "only-mt",
    "display" : "Only Mechanical Thrombectomy Considered"
  },
  {
    "code" : "contraindication",
    "display" : "Contraindication Present"
  },
  {
    "code" : "patient-refusal",
    "display" : "Patient/Family Refusal"
  },
  {
    "code" : "unknown",
    "display" : "Unknown Reason"
  },
  {
    "code" : "specialist-unavailable",
    "display" : "Specialist Not Available"
  },
  {
    "code" : "size-hematoma",
    "display" : "Size of Hematoma"
  },
  {
    "code" : "location-hematoma",
    "display" : "Location of Hematoma"
  },
  {
    "code" : "neurosurgery-unavailable",
    "display" : "Neurosurgery Not Available"
  },
  {
    "code" : "not-required",
    "display" : "Not Required"
  },
  {
    "code" : "not-reported",
    "display" : "Reason for not treating not reported"
  },
  {
    "code" : "transfer-ivt",
    "display" : "Transferred elsewhere to perform IVT"
  },
  {
    "code" : "low-aspect-score",
    "display" : "Low ASPECT Score"
  },
  {
    "code" : "lesion-developed",
    "display" : "Lesion Developed"
  },
  {
    "code" : "previous-bleeding",
    "display" : "Previous Bleeding"
  },
  {
    "code" : "anticoagulant-use",
    "display" : "Anticoagulant Use"
  }]
}

```

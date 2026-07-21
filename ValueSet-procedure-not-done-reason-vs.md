# ProcedureNotDoneReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcedureNotDoneReason ValueSet**

## ValueSet: ProcedureNotDoneReason ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/procedure-not-done-reason-vs | *Version*:1.0.0 |
| Active as of 2026-07-21 | *Computable Name*:ProcedureNotDoneReasonVS |

 
Allowed coded values for ProcedureNotDoneReason 

 **References** 

* [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md)
* [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md)
* [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md)
* [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md)
* [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md)
* [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "procedure-not-done-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/procedure-not-done-reason-vs",
  "version" : "1.0.0",
  "name" : "ProcedureNotDoneReasonVS",
  "title" : "ProcedureNotDoneReason ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T08:04:16+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for ProcedureNotDoneReason",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-proc-not-done-reason-cs",
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
        "code" : "low-aspect-score",
        "display" : "Low ASPECTS Score"
      },
      {
        "code" : "transfer-ivt",
        "display" : "Transferred elsewhere to perform IVT"
      },
      {
        "code" : "not-reported",
        "display" : "Reason for not treating not reported"
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
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "385660001",
        "display" : "Not done (qualifier value)"
      },
      {
        "code" : "170969009",
        "display" : "Prognosis bad (finding)"
      },
      {
        "code" : "385432009",
        "display" : "Not applicable (qualifier value)"
      }]
    }]
  }
}

```

# ProcedureNotDoneReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ProcedureNotDoneReason ValueSet 

 
Allowed coded values for ProcedureNotDoneReason, generated from enum_models.py. 

 **References** 

* [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md)
* [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md)
* [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-05-08T09:03:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for ProcedureNotDoneReason, generated from enum_models.py.",
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
      }]
    }]
  }
}

```

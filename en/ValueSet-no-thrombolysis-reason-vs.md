# NoThrombolysisReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: NoThrombolysisReason ValueSet 

 
Allowed coded values for NoThrombolysisReason 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "no-thrombolysis-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/no-thrombolysis-reason-vs",
  "version" : "1.0.0",
  "name" : "NoThrombolysisReasonVS",
  "title" : "NoThrombolysisReason ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T11:55:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for NoThrombolysisReason",
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
        "display" : "Done Elsewhere"
      },
      {
        "code" : "time-window",
        "display" : "Time window"
      },
      {
        "code" : "mild-deficit",
        "display" : "Mild Deficit"
      },
      {
        "code" : "consent",
        "display" : "Patient or family did not consent"
      },
      {
        "code" : "only-mt",
        "display" : "Only Mechanical Thrombectomy Considered"
      },
      {
        "code" : "cost",
        "display" : "Cost / No Insurance"
      },
      {
        "code" : "transfer",
        "display" : "Transferred to Another Facility"
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
        "code" : "lesion-developed",
        "display" : "Lesion Developed"
      },
      {
        "code" : "disability",
        "display" : "Disability"
      },
      {
        "code" : "previous-bleeding",
        "display" : "Previous Bleeding"
      },
      {
        "code" : "anticoagulant-use",
        "display" : "Anticoagulant Use"
      }]
    }]
  }
}

```

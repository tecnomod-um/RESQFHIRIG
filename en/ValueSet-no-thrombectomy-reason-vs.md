# NoThrombectomyReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: NoThrombectomyReason ValueSet 

 
Allowed coded values for NoThrombectomyReason 

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
  "id" : "no-thrombectomy-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/no-thrombectomy-reason-vs",
  "version" : "1.0.0",
  "name" : "NoThrombectomyReasonVS",
  "title" : "NoThrombectomyReason ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T09:35:04+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for NoThrombectomyReason",
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
        "code" : "no-lvo",
        "display" : "No Large Vessel Occlusion (LVO)"
      },
      {
        "code" : "disability",
        "display" : "Disability"
      },
      {
        "code" : "consent",
        "display" : "Patient or family did not consent"
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
        "code" : "technically-not-possible",
        "display" : "Technically Not Possible"
      },
      {
        "code" : "no-angiography",
        "display" : "Angiography Not Performed"
      },
      {
        "code" : "transfer-ivt",
        "display" : "Transferred elsewhere to perform IVT"
      },
      {
        "code" : "other",
        "display" : "Other Reason"
      },
      {
        "code" : "low-aspect-score",
        "display" : "Low ASPECT Score"
      }]
    }]
  }
}

```

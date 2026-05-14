# NoIchTreatmentReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: NoIchTreatmentReason ValueSet 

 
Allowed coded values for NoIchTreatmentReason 

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
  "id" : "no-ich-treatment-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/no-ich-treatment-reason-vs",
  "version" : "1.0.0",
  "name" : "NoIchTreatmentReasonVS",
  "title" : "NoIchTreatmentReason ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T11:02:20+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for NoIchTreatmentReason",
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
        "code" : "size-hematoma",
        "display" : "Contraindication in hematoma size"
      },
      {
        "code" : "location-hematoma",
        "display" : "Contraindication in hematoma location"
      },
      {
        "code" : "consent",
        "display" : "Patient or family did not consent"
      },
      {
        "code" : "cost",
        "display" : "Cost of procedure"
      },
      {
        "code" : "neurosurgery-unavailable",
        "display" : "Neurosurgery facility is not available"
      },
      {
        "code" : "specialist-unavailable",
        "display" : "Specialist Not Available"
      },
      {
        "code" : "other",
        "display" : "Other Reason"
      },
      {
        "code" : "not-reported",
        "display" : "Reason for not treating not reported"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "170969009",
        "display" : "Prognosis bad (finding)"
      }]
    }]
  }
}

```

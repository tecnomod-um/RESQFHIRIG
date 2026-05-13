# NoAnticoagulantReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: NoAnticoagulantReason ValueSet 

 
Allowed coded values for NoAnticoagulantReason 

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
  "id" : "no-anticoagulant-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/no-anticoagulant-reason-vs",
  "version" : "1.0.0",
  "name" : "NoAnticoagulantReasonVS",
  "title" : "NoAnticoagulantReason ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-13T15:23:44+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for NoAnticoagulantReason",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "609328004",
        "display" : "Allergy disposition (finding)"
      },
      {
        "code" : "36456004",
        "display" : "Mental state finding (finding)"
      },
      {
        "code" : "131148009",
        "display" : "Bleeding (finding)"
      },
      {
        "code" : "129839007",
        "display" : "At increased risk for falls (finding)"
      },
      {
        "code" : "401207004",
        "display" : "Medication side effects present (finding)"
      },
      {
        "code" : "300936002",
        "display" : "Terminal illness (finding)"
      },
      {
        "code" : "397943006",
        "display" : "Planned (qualifier value)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/not-medication-reason-cs",
      "concept" : [{
        "code" : "Not-Consent",
        "display" : "Patient or family did not consent"
      }]
    }]
  }
}

```

# AnticoagulantReversal ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: AnticoagulantReversal ValueSet 

 
Allowed coded values for AnticoagulantReversal 

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
  "id" : "anticoagulant-reversal-vs",
  "url" : "http://tecnomod-um.org/ValueSet/anticoagulant-reversal-vs",
  "version" : "1.0.0",
  "name" : "AnticoagulantReversalVS",
  "title" : "AnticoagulantReversal ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T14:50:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for AnticoagulantReversal",
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
        "code" : "783678000",
        "display" : "Andexanet alfa (substance)"
      },
      {
        "code" : "716017002",
        "display" : "Idarucizumab (substance)"
      },
      {
        "code" : "346447007",
        "display" : "Fresh frozen plasma (substance)"
      },
      {
        "code" : "7348004",
        "display" : "Coagulation factor II (substance)"
      },
      {
        "code" : "64520006",
        "display" : "Protamine sulfate (substance)"
      },
      {
        "code" : "386960009",
        "display" : "Tranexamic acid (substance)"
      },
      {
        "code" : "59882007",
        "display" : "Aminocaproic acid (substance)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/medication-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Medication"
      },
      {
        "code" : "none-medication",
        "display" : "No Medication"
      },
      {
        "code" : "Vitamin-K",
        "display" : "Vitamin K"
      },
      {
        "code" : "Ciraparantag",
        "display" : "Ciraparantag"
      }]
    }]
  }
}

```

# StrokeEtiologyOther ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: StrokeEtiologyOther ValueSet 

 
Allowed coded values for StrokeEtiologyOther 

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
  "id" : "stroke-etiology-other-vs",
  "url" : "http://tecnomod-um.org/ValueSet/stroke-etiology-other-vs",
  "version" : "1.0.0",
  "name" : "StrokeEtiologyOtherVS",
  "title" : "StrokeEtiologyOther ValueSet",
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
  "description" : "Allowed coded values for StrokeEtiologyOther",
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
        "code" : "31996006",
        "display" : "Vasculitis (disorder)"
      },
      {
        "code" : "122459003",
        "display" : "Dissection of artery (disorder)"
      },
      {
        "code" : "703218000",
        "display" : "Cerebral vasoconstriction syndrome (disorder)"
      },
      {
        "code" : "69116000",
        "display" : "Moyamoya disease (disorder)"
      },
      {
        "code" : "16652001",
        "display" : "Fabry's disease (disorder)"
      },
      {
        "code" : "414341000",
        "display" : "Giant cell arteritis (disorder)"
      },
      {
        "code" : "26843008",
        "display" : "Antiphospholipid syndrome (disorder)"
      },
      {
        "code" : "127040003",
        "display" : "Sickle cell-hemoglobin SS disease (disorder)"
      },
      {
        "code" : "1263550001",
        "display" : "Infarction of brain due to migraine (disorder)"
      },
      {
        "code" : "192759008",
        "display" : "Cerebral venous sinus thrombosis (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-etiology-other-cs",
      "concept" : [{
        "code" : "coagulation-disorder",
        "display" : "Coagulation system disorder"
      },
      {
        "code" : "hematological-disease",
        "display" : "Hematological disease"
      },
      {
        "code" : "fibromuscular-dysplasia",
        "display" : "Fibromuscular dysplasia"
      },
      {
        "code" : "radiation-induced-vasculopathy",
        "display" : "Radiation-induced vasculopathy"
      },
      {
        "code" : "CADASIL",
        "display" : "CADASIL"
      }]
    }]
  }
}

```

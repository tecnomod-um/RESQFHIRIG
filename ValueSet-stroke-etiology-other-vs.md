# StrokeEtiologyOther ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeEtiologyOther ValueSet**

## ValueSet: StrokeEtiologyOther ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/stroke-etiology-other-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:StrokeEtiologyOtherVS |

 
Allowed coded values for StrokeEtiologyOther 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "stroke-etiology-other-vs",
  "url" : "http://qualityregistry.org/ValueSet/stroke-etiology-other-vs",
  "version" : "1.0.0",
  "name" : "StrokeEtiologyOtherVS",
  "title" : "StrokeEtiologyOther ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
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
        "code" : "710864009",
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
      "system" : "http://qualityregistry.org/CodeSystem/stroke-etiology-other-cs",
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

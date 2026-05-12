# FunctionalScore ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: FunctionalScore ValueSet 

 
Allowed coded values for FunctionalScore 

 **References** 

* [Functional Score Observation Profile](StructureDefinition-functional-score-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "functional-score-vs",
  "url" : "http://tecnomod-um.org/ValueSet/functional-score-vs",
  "version" : "1.0.0",
  "name" : "FunctionalScoreVS",
  "title" : "FunctionalScore ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T07:59:38+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for FunctionalScore",
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
        "code" : "1255866005",
        "display" : "Modified Rankin Scale score (observable entity)"
      },
      {
        "code" : "450743008",
        "display" : "National Institutes of Health stroke scale score (observable entity)"
      },
      {
        "code" : "1290002002",
        "display" : "Alberta Stroke Program Early CT score (assessment scale)"
      },
      {
        "code" : "774086001",
        "display" : "Age, Blood pressure, Clinical features, Duration, Diabetes 2 score (observable entity)"
      },
      {
        "code" : "713678009",
        "display" : "Congestive heart failure, hypertension, age 2, diabetes mellitus, stroke 2, vascular disease, age, sex category stroke risk score (observable entity)"
      },
      {
        "code" : "445518008",
        "display" : "Age at onset of clinical finding (observable entity)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/functional-score-cs",
      "concept" : [{
        "code" : "ICH-score",
        "display" : "Intracerebral Hemorrhage Score"
      },
      {
        "code" : "hunt-hess",
        "display" : "Hunt and Hess Score"
      },
      {
        "code" : "thrive",
        "display" : "Totaled Health Risks in Vascular Events Score"
      }]
    }]
  }
}

```

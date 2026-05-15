# RiskFactor ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: RiskFactor ValueSet 

 
Allowed coded values for RiskFactor 

 **References** 

* [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "risk-factor-vs",
  "url" : "http://tecnomod-um.org/ValueSet/risk-factor-vs",
  "version" : "1.0.0",
  "name" : "RiskFactorVS",
  "title" : "RiskFactor ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-15T10:10:20+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for RiskFactor",
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
        "code" : "49436004",
        "display" : "Atrial fibrillation (disorder)"
      },
      {
        "code" : "84114007",
        "display" : "Heart failure (disorder)"
      },
      {
        "code" : "53741008",
        "display" : "Coronary arteriosclerosis (disorder)"
      },
      {
        "code" : "840539006",
        "display" : "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
      },
      {
        "code" : "73211009",
        "display" : "Diabetes mellitus (disorder)"
      },
      {
        "code" : "165816005",
        "display" : "Human immunodeficiency virus detected (finding)"
      },
      {
        "code" : "55822004",
        "display" : "Hyperlipidemia (disorder)"
      },
      {
        "code" : "38341003",
        "display" : "Hypertensive disorder, systemic arterial (disorder)"
      },
      {
        "code" : "230706003",
        "display" : "Hemorrhagic cerebral infarction (disorder)"
      },
      {
        "code" : "266257000",
        "display" : "Transient ischemic attack (disorder)"
      },
      {
        "code" : "230690007",
        "display" : "Cerebrovascular accident (disorder)"
      },
      {
        "code" : "77176002",
        "display" : "Smoker (finding)"
      },
      {
        "code" : "8392000",
        "display" : "Non-smoker (finding)"
      },
      {
        "code" : "8517006",
        "display" : "Ex-smoker (finding)"
      },
      {
        "code" : "429098002",
        "display" : "Thromboembolism of vein (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/risk-factor-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other"
      }]
    }]
  }
}

```

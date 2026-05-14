# MimicsDiagnosis ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: MimicsDiagnosis ValueSet 

 
Allowed coded values for MimicsDiagnosis 

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
  "id" : "mimics-diagnosis-vs",
  "url" : "http://tecnomod-um.org/ValueSet/mimics-diagnosis-vs",
  "version" : "1.0.0",
  "name" : "MimicsDiagnosisVS",
  "title" : "MimicsDiagnosis ValueSet",
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
  "description" : "Allowed coded values for MimicsDiagnosis",
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
        "code" : "37796009",
        "display" : "Migraine (disorder)"
      },
      {
        "code" : "128613002",
        "display" : "Seizure disorder (disorder)"
      },
      {
        "code" : "2776000",
        "display" : "Delirium (disorder)"
      },
      {
        "code" : "105593004",
        "display" : "Electrolyte imbalance (disorder)"
      },
      {
        "code" : "386585008",
        "display" : "Functional disorder (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-mimics-diagnosis-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Stroke Mimics Diagnosis"
      }]
    }]
  }
}

```

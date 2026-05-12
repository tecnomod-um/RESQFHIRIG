# IvtDrug ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: IvtDrug ValueSet 

 
Allowed coded values for IvtDrug 

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
  "id" : "ivt-drug-vs",
  "url" : "http://tecnomod-um.org/ValueSet/ivt-drug-vs",
  "version" : "1.0.0",
  "name" : "IvtDrugVS",
  "title" : "IvtDrug ValueSet",
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
  "description" : "Allowed coded values for IvtDrug",
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
        "code" : "387152000",
        "display" : "Alteplase (substance)"
      },
      {
        "code" : "387066007",
        "display" : "Tenecteplase (substance)"
      },
      {
        "code" : "395889004",
        "display" : "Streptokinase (substance)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/medication-cs",
      "concept" : [{
        "code" : "staphylokinase",
        "display" : "Staphylokinase"
      }]
    }]
  }
}

```

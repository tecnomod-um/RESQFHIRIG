# Sex ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Sex ValueSet 

 
Allowed coded values for Sex 

 **References** 

* [Gender represented with SNOMED CT](StructureDefinition-gender-snomed-ext.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sex-vs",
  "url" : "http://tecnomod-um.org/ValueSet/sex-vs",
  "version" : "1.0.0",
  "name" : "SexVS",
  "title" : "Sex ValueSet",
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
  "description" : "Allowed coded values for Sex",
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
        "code" : "248153007",
        "display" : "Male (finding)"
      },
      {
        "code" : "248152002",
        "display" : "Female (finding)"
      },
      {
        "code" : "32570681000036106",
        "display" : "Indeterminate sex (finding)"
      }]
    }]
  }
}

```

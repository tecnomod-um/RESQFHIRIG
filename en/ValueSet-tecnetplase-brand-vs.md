# TecnetplaseBrand ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: TecnetplaseBrand ValueSet 

 
Allowed coded values for TecnetplaseBrand 

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
  "id" : "tecnetplase-brand-vs",
  "url" : "http://tecnomod-um.org/ValueSet/tecnetplase-brand-vs",
  "version" : "1.0.0",
  "name" : "TecnetplaseBrandVS",
  "title" : "TecnetplaseBrand ValueSet",
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
  "description" : "Allowed coded values for TecnetplaseBrand",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/tenecteplase-brand-cs",
      "concept" : [{
        "code" : "metalyse",
        "display" : "Metalyse (Boehringer Ingelheim International)"
      },
      {
        "code" : "tenectase",
        "display" : "Tenectase (Gennova Biopharmaceuticals)"
      },
      {
        "code" : "tnkase",
        "display" : "TNKase (Genentech/Roche)"
      },
      {
        "code" : "supralase",
        "display" : "Supraplase (Cadila Pharmaceuticals)"
      },
      {
        "code" : "velix",
        "display" : "Velix (Emcure Pharmaceuticals)"
      },
      {
        "code" : "tenectelex",
        "display" : "Tenectelex (Abbott Healthcare)"
      },
      {
        "code" : "telyse",
        "display" : "Telyse (Cipla)"
      },
      {
        "code" : "tenepact",
        "display" : "Tenepact (Glenmark Pharmaceuticals)"
      },
      {
        "code" : "other",
        "display" : "Other Tenecteplase Brand"
      }]
    }]
  }
}

```

# TenecteplaseBrand ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: TenecteplaseBrand ValueSet 

 
Allowed coded values for TenecteplaseBrand 

 **References** 

* [Tenecteplase Brand Medication Profile](StructureDefinition-tenecteplase-brand-medication-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tenecteplase-brand-vs",
  "url" : "http://tecnomod-um.org/ValueSet/tenecteplase-brand-vs",
  "version" : "1.0.0",
  "name" : "TenecteplaseBrandVS",
  "title" : "TenecteplaseBrand ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T14:48:08+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for TenecteplaseBrand",
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

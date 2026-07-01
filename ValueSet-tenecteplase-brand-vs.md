# TenecteplaseBrand ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TenecteplaseBrand ValueSet**

## ValueSet: TenecteplaseBrand ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/tenecteplase-brand-vs | *Version*:1.0.0 |
| Active as of 2026-07-01 | *Computable Name*:TenecteplaseBrandVS |

 
Allowed coded values for TenecteplaseBrand 

 **References** 

* [Tenecteplase Brand Medication Profile](StructureDefinition-tenecteplase-brand-medication-profile.md)

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
  "id" : "tenecteplase-brand-vs",
  "url" : "http://tecnomod-um.org/ValueSet/tenecteplase-brand-vs",
  "version" : "1.0.0",
  "name" : "TenecteplaseBrandVS",
  "title" : "TenecteplaseBrand ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:43:23+00:00",
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

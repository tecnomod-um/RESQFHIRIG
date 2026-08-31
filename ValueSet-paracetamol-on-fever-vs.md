# ParacetamolOnFever ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParacetamolOnFever ValueSet**

## ValueSet: ParacetamolOnFever ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/paracetamol-on-fever-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:ParacetamolOnFeverVS |

 
Allowed coded values for ParacetamolOnFever 

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
  "id" : "paracetamol-on-fever-vs",
  "url" : "http://qualityregistry.org/ValueSet/paracetamol-on-fever-vs",
  "version" : "1.0.0",
  "name" : "ParacetamolOnFeverVS",
  "title" : "ParacetamolOnFever ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T09:17:06+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for ParacetamolOnFever",
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
        "code" : "385658003",
        "display" : "Done (qualifier value)"
      },
      {
        "code" : "385660001",
        "display" : "Not done (qualifier value)"
      }]
    },
    {
      "system" : "http://qualityregistry.org/CodeSystem/not-medication-reason-cs",
      "concept" : [{
        "code" : "not-required",
        "display" : "Not Required"
      }]
    }]
  }
}

```

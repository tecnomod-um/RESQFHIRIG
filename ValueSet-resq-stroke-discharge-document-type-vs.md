# RESQ Stroke Discharge Document Type ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RESQ Stroke Discharge Document Type ValueSet**

## ValueSet: RESQ Stroke Discharge Document Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/resq-stroke-discharge-document-type-vs | *Version*:1.0.0 |
| Active as of 2026-07-14 | *Computable Name*:RESQStrokeDischargeDocumentTypeVS |

 
Allowed document type code for the RESQ Stroke Hospital Discharge Summary Composition. 

 **References** 

* [RESQ Stroke Hospital Discharge Composition](StructureDefinition-resq-stroke-discharge-composition.md)

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
  "id" : "resq-stroke-discharge-document-type-vs",
  "url" : "http://tecnomod-um.org/ValueSet/resq-stroke-discharge-document-type-vs",
  "version" : "1.0.0",
  "name" : "RESQStrokeDischargeDocumentTypeVS",
  "title" : "RESQ Stroke Discharge Document Type ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-14T07:23:58+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed document type code for the RESQ Stroke Hospital Discharge Summary Composition.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "18842-5",
        "display" : "Discharge summary"
      }]
    }]
  }
}

```

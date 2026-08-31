# VteProcedures ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VteProcedures ValueSet**

## ValueSet: VteProcedures ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/vte-procedures-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:VteProceduresVS |

 
Allowed coded values for VteProcedures 

 **References** 

* [Stroke VTE Prophylaxis Procedure Profile](StructureDefinition-stroke-vte-procedure-profile.md)

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
  "id" : "vte-procedures-vs",
  "url" : "http://qualityregistry.org/ValueSet/vte-procedures-vs",
  "version" : "1.0.0",
  "name" : "VteProceduresVS",
  "title" : "VteProcedures ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for VteProcedures",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://qualityregistry.org/CodeSystem/vte-procedures-cs",
      "concept" : [{
        "code" : "vte-proc",
        "display" : "Thromboembolism intervention"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "225420001",
        "display" : "Application of antithromboembolic stockings (procedure)"
      },
      {
        "code" : "443448006",
        "display" : "Application of intermittent pneumatic compression device (procedure)"
      },
      {
        "code" : "442410008",
        "display" : "Application of venous foot pump (procedure)"
      },
      {
        "code" : "787927008",
        "display" : "Administration of prophylactic coagulation factor Xa inhibitor (procedure)"
      },
      {
        "code" : "699041005",
        "display" : "Administration of prophylactic warfarin (procedure)"
      },
      {
        "code" : "392129008",
        "display" : "Administration of prophylactic low dose heparin (procedure)"
      },
      {
        "code" : "443464003",
        "display" : "Low molecular weight heparin therapy (procedure)"
      },
      {
        "code" : "421728001",
        "display" : "Administration of prophylactic anticoagulant (procedure)"
      }]
    }]
  }
}

```

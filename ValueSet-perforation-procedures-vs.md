# PerforationProcedures ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PerforationProcedures ValueSet**

## ValueSet: PerforationProcedures ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/perforation-procedures-vs | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:PerforationProceduresVS |

 
Allowed coded values for PerforationProcedures 

 **References** 

* [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md)
* [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md)
* [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md)

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
  "id" : "perforation-procedures-vs",
  "url" : "http://qualityregistry.org/ValueSet/perforation-procedures-vs",
  "version" : "1.0.0",
  "name" : "PerforationProceduresVS",
  "title" : "PerforationProcedures ValueSet",
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
  "description" : "Allowed coded values for PerforationProcedures",
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
        "code" : "472191000119101",
        "display" : "Thrombolysis of cerebral artery by intravenous infusion (procedure)"
      },
      {
        "code" : "397046001",
        "display" : "Thrombectomy of artery (procedure)"
      },
      {
        "code" : "67329000",
        "display" : "Administration of antidote (procedure)"
      },
      {
        "code" : "66951008",
        "display" : "Carotid endarterectomy (procedure)"
      }]
    }]
  }
}

```

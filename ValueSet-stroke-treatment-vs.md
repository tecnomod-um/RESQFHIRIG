# StrokeTreatment ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrokeTreatment ValueSet**

## ValueSet: StrokeTreatment ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/stroke-treatment-vs | *Version*:1.0.0 |
| Active as of 2026-07-09 | *Computable Name*:StrokeTreatmentVS |

 
Allowed coded values for StrokeTreatment 

 **References** 

* Included into [StrokeTreatmentProcedureVS](ValueSet-stroke-treatment-procedure-vs.md)

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
  "id" : "stroke-treatment-vs",
  "url" : "http://tecnomod-um.org/ValueSet/stroke-treatment-vs",
  "version" : "1.0.0",
  "name" : "StrokeTreatmentVS",
  "title" : "StrokeTreatment ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-09T09:09:43+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for StrokeTreatment",
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
        "code" : "1288015005",
        "display" : "Decompressive craniectomy (procedure)"
      },
      {
        "code" : "10458001",
        "display" : "Evacuation of intracerebral hematoma (procedure)"
      },
      {
        "code" : "43810009",
        "display" : "Removal of thrombus (procedure)"
      },
      {
        "code" : "36910002",
        "display" : "Excision of bone of cranium (procedure)"
      },
      {
        "code" : "77337009",
        "display" : "Stereotactic biopsy by aspiration of intracranial lesion (procedure)"
      },
      {
        "code" : "230869001",
        "display" : "External drainage procedure from ventricle of brain (procedure)"
      },
      {
        "code" : "21147007",
        "display" : "Closure by clip (procedure)"
      },
      {
        "code" : "1230010003",
        "display" : "Percutaneous transluminal procedure on blood vessel (procedure)"
      },
      {
        "code" : "182764009",
        "display" : "Anticoagulant therapy (procedure)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-treatment-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Treatment"
      },
      {
        "code" : "min-invasive",
        "display" : "Minimally Invasive Procedure"
      }]
    }]
  }
}

```

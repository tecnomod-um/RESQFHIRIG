# BleedingReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BleedingReason ValueSet**

## ValueSet: BleedingReason ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/bleeding-reason-vs | *Version*:1.0.0 |
| Active as of 2026-07-13 | *Computable Name*:BleedingReasonVS |

 
Allowed coded values for BleedingReason 

 **References** 

* [Hemorrhagic stroke bleeding reason](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.md)

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
  "id" : "bleeding-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/bleeding-reason-vs",
  "version" : "1.0.0",
  "name" : "BleedingReasonVS",
  "title" : "BleedingReason ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-13T09:30:27+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for BleedingReason",
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
        "code" : "128609009",
        "display" : "Intracranial aneurysm (disorder)"
      },
      {
        "code" : "703221003",
        "display" : "Congenital intracranial vascular malformation (disorder)"
      },
      {
        "code" : "27550009",
        "display" : "Disorder of blood vessel (disorder)"
      },
      {
        "code" : "182764009",
        "display" : "Anticoagulant therapy (procedure)"
      },
      {
        "code" : "126952004",
        "display" : "Neoplasm of brain (disorder)"
      },
      {
        "code" : "95455008",
        "display" : "Thrombosis of cerebral veins (disorder)"
      },
      {
        "code" : "38341003",
        "display" : "Hypertensive disorder, systemic arterial (disorder)"
      },
      {
        "code" : "24551003",
        "display" : "Arteriovenous malformation (morphologic abnormality)"
      },
      {
        "code" : "373068000",
        "display" : "Undetermined (qualifier value)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/hemorrhagic-stroke-bleeding-reason-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Bleeding Reason Other"
      }]
    }]
  }
}

```

# BodySites ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BodySites ValueSet**

## ValueSet: BodySites ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/ValueSet/body-sites-vs | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:BodySitesVS |

 
Allowed coded values for BodySites 

 **References** 

* [RESQ BodyStructure Profile](StructureDefinition-resq-body-structure-profile.md)
* [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

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
  "id" : "body-sites-vs",
  "url" : "http://qualityregistry.org/ValueSet/body-sites-vs",
  "version" : "1.0.0",
  "name" : "BodySitesVS",
  "title" : "BodySites ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T09:44:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Allowed coded values for BodySites",
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
        "code" : "60176003",
        "display" : "Structure of anterior cerebral artery (body structure)"
      },
      {
        "code" : "86117002",
        "display" : "Internal carotid artery structure (body structure)"
      },
      {
        "code" : "59011009",
        "display" : "Structure of basilar artery (body structure)"
      },
      {
        "code" : "69105007",
        "display" : "Carotid artery structure (body structure)"
      },
      {
        "code" : "85234005",
        "display" : "Structure of vertebral artery (body structure)"
      },
      {
        "code" : "414722000",
        "display" : "Structure of middle cerebral artery M1 segment (body structure)"
      },
      {
        "code" : "414723005",
        "display" : "Structure of middle cerebral artery M2 segment (body structure)"
      },
      {
        "code" : "414724004",
        "display" : "Structure of middle cerebral artery M3 segment (body structure)"
      },
      {
        "code" : "415144009",
        "display" : "Structure of posterior cerebral artery P1 segment (body structure)"
      },
      {
        "code" : "415145005",
        "display" : "Structure of posterior cerebral artery P2 segment (body structure)"
      },
      {
        "code" : "119238007",
        "display" : "Brain stem part (body structure)"
      },
      {
        "code" : "87791003",
        "display" : "Cortex of bone structure (body structure)"
      },
      {
        "code" : "81737006",
        "display" : "Structure of lacunar ligament (body structure)"
      },
      {
        "code" : "21031007",
        "display" : "Infratentorial brain structure (body structure)"
      },
      {
        "code" : "222036002",
        "display" : "Supratentorial brain structure (body structure)"
      },
      {
        "code" : "35951006",
        "display" : "Subarachnoid space structure (body structure)"
      },
      {
        "code" : "180955002",
        "display" : "Structure of intraventricular meninges of brain (body structure)"
      }]
    }]
  }
}

```

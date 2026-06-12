# SpecificFinding ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SpecificFinding ValueSet**

## ValueSet: SpecificFinding ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/specific-finding-vs | *Version*:1.0.0 |
| Active as of 2026-06-12 | *Computable Name*:SpecificFindingVS |

 
Allowed coded values for specific stroke-related findings. 

 **References** 

* [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md)
* [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md)

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
  "id" : "specific-finding-vs",
  "url" : "http://tecnomod-um.org/ValueSet/specific-finding-vs",
  "version" : "1.0.0",
  "name" : "SpecificFindingVS",
  "title" : "SpecificFinding ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T09:34:13+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for specific stroke-related findings.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/mtici-code-cs",
      "concept" : [{
        "code" : "mTICI",
        "display" : "mTICI"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "371863001",
        "display" : "Perfusion finding (finding)"
      },
      {
        "code" : "787044009",
        "display" : "Stenosis of bilateral carotid arteries (disorder)"
      },
      {
        "code" : "16086006",
        "display" : "Blood volume (observable entity)"
      },
      {
        "code" : "64586002",
        "display" : "Stenosis of carotid artery (disorder)"
      },
      {
        "code" : "230745008",
        "display" : "Hydrocephalus (disorder)"
      },
      {
        "code" : "2929001",
        "display" : "Occlusion of artery (disorder)"
      },
      {
        "code" : "1386000",
        "display" : "Intracranial hemorrhage (disorder)"
      },
      {
        "code" : "230690007",
        "display" : "Cerebrovascular accident (disorder)"
      },
      {
        "code" : "230706003",
        "display" : "Hemorrhagic cerebral infarction (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/perfusion-volume-cs",
      "concept" : [{
        "code" : "perf-volume",
        "display" : "Perfusion Volume"
      },
      {
        "code" : "hypo-volume",
        "display" : "Hypoperfusion Volume"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/old-infarct-cs",
      "concept" : [{
        "code" : "old-infarct",
        "display" : "Old Infarct"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/specific-finding-cs",
      "concept" : [{
        "code" : "no-finding",
        "display" : "No Finding"
      },
      {
        "code" : "atrial-fibrillation-flutter",
        "display" : "Atrial fibrillation/flutter"
      }]
    }]
  }
}

```

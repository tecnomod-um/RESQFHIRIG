# ImagingType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ImagingType ValueSet**

## ValueSet: ImagingType ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/imaging-type-vs | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:ImagingTypeVS |

 
Allowed coded values for ImagingType 

 **References** 

* [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md)
* [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md)
* [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md)

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
  "id" : "imaging-type-vs",
  "url" : "http://tecnomod-um.org/ValueSet/imaging-type-vs",
  "version" : "1.0.0",
  "name" : "ImagingTypeVS",
  "title" : "ImagingType ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T11:21:15+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for ImagingType",
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
        "code" : "396205005",
        "display" : "Computed tomography of brain without radiopaque contrast (procedure)"
      },
      {
        "code" : "58920005",
        "display" : "Angiography of carotid artery (procedure)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/brain-imaging-type-cs",
      "concept" : [{
        "code" : "ct-cta",
        "display" : "Computed Tomography (CT) and CT Angiography (CTA)"
      },
      {
        "code" : "ct-cta-perfusion",
        "display" : "CT-CTA and Perfusion"
      },
      {
        "code" : "mr-dwi-flair",
        "display" : "MR"
      },
      {
        "code" : "mr-dwi-flair-mra",
        "display" : "MR MRA"
      },
      {
        "code" : "mr-dwi-flair-mra-perfusion",
        "display" : "MR DWI-FLAIR, MRA, and Perfusion"
      }]
    }]
  }
}

```

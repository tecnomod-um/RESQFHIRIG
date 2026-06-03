# ImagingType ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ImagingType ValueSet 

 
Allowed coded values for ImagingType 

 **References** 

* [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md)
* [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md)
* [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-06-03T14:48:08+00:00",
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

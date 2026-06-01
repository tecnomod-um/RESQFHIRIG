# BrainImagingTypeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: BrainImagingTypeCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/brain-imaging-type-cs. 

This Code system is referenced in the definition of the following value sets:

* [ImagingTypeVS](ValueSet-imaging-type-vs.md)
* [PostNeurosurgeryImagingVS](ValueSet-post-neurosurgery-imaging-vs.md)
* [PostRecanalizationImagingVS](ValueSet-post-recanalization-imaging-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "brain-imaging-type-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/brain-imaging-type-cs",
  "version" : "1.0.0",
  "name" : "BrainImagingTypeCS",
  "title" : "BrainImagingTypeCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T10:24:12+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/brain-imaging-type-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 7,
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
  },
  {
    "code" : "mr",
    "display" : "MR"
  },
  {
    "code" : "no",
    "display" : "No Imaging"
  }]
}

```

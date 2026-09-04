# BrainImagingTypeCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BrainImagingTypeCs CodeSystem**

## CodeSystem: BrainImagingTypeCs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/brain-imaging-type-cs | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:BrainImagingTypeCS |

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/brain-imaging-type-cs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ImagingType ValueSet](ValueSet-imaging-type-vs.md)
* [PostNeurosurgeryImaging ValueSet](ValueSet-post-neurosurgery-imaging-vs.md)
* [PostRecanalizationImaging ValueSet](ValueSet-post-recanalization-imaging-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "brain-imaging-type-cs",
  "url" : "http://qualityregistry.org/CodeSystem/brain-imaging-type-cs",
  "version" : "1.0.0",
  "name" : "BrainImagingTypeCS",
  "title" : "BrainImagingTypeCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://qualityregistry.org/CodeSystem/brain-imaging-type-cs.",
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

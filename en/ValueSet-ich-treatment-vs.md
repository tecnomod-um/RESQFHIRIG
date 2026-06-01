# IchTreatment ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: IchTreatment ValueSet 

 
Allowed coded values for IchTreatment 

 **References** 

* [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ich-treatment-vs",
  "url" : "http://tecnomod-um.org/ValueSet/ich-treatment-vs",
  "version" : "1.0.0",
  "name" : "IchTreatmentVS",
  "title" : "IchTreatment ValueSet",
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
  "description" : "Allowed coded values for IchTreatment",
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
      "system" : "http://tecnomod-um.org/CodeSystem/ich-treatment-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Treatment"
      }]
    }]
  }
}

```

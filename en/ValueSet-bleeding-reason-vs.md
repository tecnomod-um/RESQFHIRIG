# BleedingReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: BleedingReason ValueSet 

 
Allowed coded values for BleedingReason, generated from enum_models.py. 

 **References** 

* [Hemorrhagic stroke bleeding reason](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.md)
* [Hemorrhagic stroke bleeding reason found coded state](StructureDefinition-hemorrhagic-stroke-bleeding-reason-found-ext.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-05-08T10:13:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for BleedingReason, generated from enum_models.py.",
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

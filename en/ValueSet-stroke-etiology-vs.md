# StrokeEtiology ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: StrokeEtiology ValueSet 

 
Allowed coded values for StrokeEtiology, generated from enum_models.py. 

 **References** 

* [Ischemic stroke etiology](StructureDefinition-ischemic-stroke-etiology-ext.md)
* [Ischemic stroke etiology known/unknown coded state](StructureDefinition-ischemic-stroke-etiology-known-ext.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "stroke-etiology-vs",
  "url" : "http://tecnomod-um.org/ValueSet/stroke-etiology-vs",
  "version" : "1.0.0",
  "name" : "StrokeEtiologyVS",
  "title" : "StrokeEtiology ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T09:03:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for StrokeEtiology, generated from enum_models.py.",
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
        "code" : "413758000",
        "display" : "Cardioembolic stroke (disorder)"
      },
      {
        "code" : "230698000",
        "display" : "Lacunar infarction (disorder)"
      },
      {
        "code" : "16891111000119104",
        "display" : "Cryptogenic stroke (disorder)"
      },
      {
        "code" : "122459003",
        "display" : "Dissection of artery (disorder)"
      },
      {
        "code" : "1263550001",
        "display" : "Infarction of brain due to migraine (disorder)"
      },
      {
        "code" : "69116000",
        "display" : "Moyamoya disease (disorder)"
      },
      {
        "code" : "127040003",
        "display" : "Sickle cell-hemoglobin SS disease (disorder)"
      },
      {
        "code" : "373068000",
        "display" : "Undetermined (qualifier value)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-etiology-cs",
      "concept" : [{
        "code" : "atherosclerosis",
        "display" : "Stroke Etiology Atherosclerosis"
      },
      {
        "code" : "other",
        "display" : "Stroke Etiology Other"
      }]
    }]
  }
}

```

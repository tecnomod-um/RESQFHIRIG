# SpecificFinding ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: SpecificFinding ValueSet 

 
Allowed coded values for SpecificFinding 

 **References** 

* [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md)
* [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-05-11T15:54:34+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for SpecificFinding",
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
      }]
    }]
  }
}

```

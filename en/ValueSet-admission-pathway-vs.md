# AdmissionPathway ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: AdmissionPathway ValueSet 

 
Allowed coded values for AdmissionPathway 

 **References** 

* [Stroke Encounter Profile](StructureDefinition-stroke-encounter-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "admission-pathway-vs",
  "url" : "http://tecnomod-um.org/ValueSet/admission-pathway-vs",
  "version" : "1.0.0",
  "name" : "AdmissionPathwayVS",
  "title" : "AdmissionPathway ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T11:55:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for AdmissionPathway",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-arrival-mode-cs",
      "concept" : [{
        "code" : "ems-gp",
        "display" : "EMS from GP"
      },
      {
        "code" : "priv-transport",
        "display" : "Private Transportation"
      },
      {
        "code" : "stroke-center",
        "display" : "Stroke Center"
      },
      {
        "code" : "another-hosp",
        "display" : "Another Hospital"
      },
      {
        "code" : "priv-transport-gp",
        "display" : "Private Transportation from GP"
      },
      {
        "code" : "in-hospital-stroke",
        "display" : "In-Hospital Stroke"
      }]
    }]
  }
}

```

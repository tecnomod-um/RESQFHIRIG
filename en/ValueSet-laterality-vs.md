# Laterality ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Laterality ValueSet 

 
Allowed coded values for Laterality 

 **References** 

* [RESQ BodyStructure Profile](StructureDefinition-resq-body-structure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "laterality-vs",
  "url" : "http://tecnomod-um.org/ValueSet/laterality-vs",
  "version" : "1.0.0",
  "name" : "LateralityVS",
  "title" : "Laterality ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T08:55:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for Laterality",
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
        "code" : "7771000",
        "display" : "Left (qualifier value)"
      },
      {
        "code" : "24028007",
        "display" : "Right (qualifier value)"
      },
      {
        "code" : "51440002",
        "display" : "Bilateral"
      },
      {
        "code" : "46053002",
        "display" : "Distal"
      },
      {
        "code" : "255554000",
        "display" : "Dorsal"
      },
      {
        "code" : "264147007",
        "display" : "Plantar"
      },
      {
        "code" : "261183002",
        "display" : "Upper"
      },
      {
        "code" : "261122009",
        "display" : "Lower"
      },
      {
        "code" : "255561001",
        "display" : "Medial"
      },
      {
        "code" : "49370004",
        "display" : "Lateral"
      },
      {
        "code" : "264217000",
        "display" : "Superior"
      },
      {
        "code" : "261089000",
        "display" : "Inferior"
      },
      {
        "code" : "255551008",
        "display" : "Posterior"
      },
      {
        "code" : "351726001",
        "display" : "Below"
      },
      {
        "code" : "352730000",
        "display" : "Above"
      }]
    }]
  }
}

```

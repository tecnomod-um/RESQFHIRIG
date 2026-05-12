# DischargeDestination ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: DischargeDestination ValueSet 

 
Allowed coded values for DischargeDestination 

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
  "id" : "discharge-destination-vs",
  "url" : "http://tecnomod-um.org/ValueSet/discharge-destination-vs",
  "version" : "1.0.0",
  "name" : "DischargeDestinationVS",
  "title" : "DischargeDestination ValueSet",
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
  "description" : "Allowed coded values for DischargeDestination",
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
        "code" : "306689006",
        "display" : "Discharge to home (procedure)"
      },
      {
        "code" : "19712007",
        "display" : "Patient transfer, to another health care facility (procedure)"
      },
      {
        "code" : "37729005",
        "display" : "Patient transfer, in-hospital (procedure)"
      },
      {
        "code" : "306694006",
        "display" : "Discharge to nursing home (procedure)"
      },
      {
        "code" : "225928004",
        "display" : "Patient self-discharge against medical advice (procedure)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-discharge-destination-cs",
      "concept" : [{
        "code" : "dead",
        "display" : "Patient Deceased"
      }]
    }]
  }
}

```

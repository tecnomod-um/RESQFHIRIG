# PostStrokeComplications ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: PostStrokeComplications ValueSet 

 
Allowed coded values for PostStrokeComplications 

 **References** 

* [Post-Stroke Complication Condition Profile](StructureDefinition-post-stroke-complication-condition-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "post-stroke-complications-vs",
  "url" : "http://tecnomod-um.org/ValueSet/post-stroke-complications-vs",
  "version" : "1.0.0",
  "name" : "PostStrokeComplicationsVS",
  "title" : "PostStrokeComplications ValueSet",
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
  "description" : "Allowed coded values for PostStrokeComplications",
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
        "code" : "233604007",
        "display" : "Pneumonia (disorder)"
      },
      {
        "code" : "91302008",
        "display" : "Sepsis (disorder)"
      },
      {
        "code" : "128053003",
        "display" : "Deep venous thrombosis (disorder)"
      },
      {
        "code" : "398117008",
        "display" : "Falling injury (disorder)"
      },
      {
        "code" : "59282003",
        "display" : "Pulmonary embolism (disorder)"
      },
      {
        "code" : "161917009",
        "display" : "Recurrence of problem (finding)"
      },
      {
        "code" : "68566005",
        "display" : "Urinary tract infectious disease (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/stroke-post-stroke-complication-cs",
      "concept" : [{
        "code" : "Sores",
        "display" : "Sores"
      },
      {
        "code" : "other",
        "display" : "Other Post-Stroke Complication"
      }]
    }]
  }
}

```

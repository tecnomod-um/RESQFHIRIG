# ThrombectomyComplications ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ThrombectomyComplications ValueSet 

 
Allowed coded values for ThrombectomyComplications 

 **References** 

* [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "thrombectomy-complications-vs",
  "url" : "http://tecnomod-um.org/ValueSet/thrombectomy-complications-vs",
  "version" : "1.0.0",
  "name" : "ThrombectomyComplicationsVS",
  "title" : "ThrombectomyComplications ValueSet",
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
  "description" : "Allowed coded values for ThrombectomyComplications",
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
        "code" : "307312008",
        "display" : "Perforation of artery (disorder)"
      },
      {
        "code" : "710864009",
        "display" : "Dissection of artery (disorder)"
      },
      {
        "code" : "385494008",
        "display" : "Hematoma (disorder)"
      },
      {
        "code" : "414086009",
        "display" : "Embolism (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/thrombectomy-complications-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Complication"
      }]
    }]
  }
}

```

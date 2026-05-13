# InHospital ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: InHospital ValueSet 

 
Allowed coded values for InHospital 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "in-hospital-vs",
  "url" : "http://tecnomod-um.org/ValueSet/in-hospital-vs",
  "version" : "1.0.0",
  "name" : "InHospitalVS",
  "title" : "InHospital ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-13T15:23:44+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for InHospital",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/in-hospital",
      "concept" : [{
        "code" : "false",
        "display" : "False"
      },
      {
        "code" : "true",
        "display" : "True"
      },
      {
        "code" : "none",
        "display" : "None"
      }]
    }]
  }
}

```

# FirstContactPlace ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: FirstContactPlace ValueSet 

 
Allowed coded values for FirstContactPlace 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "first-contact-place-vs",
  "url" : "http://tecnomod-um.org/ValueSet/first-contact-place-vs",
  "version" : "1.0.0",
  "name" : "FirstContactPlaceVS",
  "title" : "FirstContactPlace ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T10:42:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for FirstContactPlace",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "concept" : [{
        "code" : "HRAD",
        "display" : "radiology unit"
      },
      {
        "code" : "ER",
        "display" : "Emergency room"
      },
      {
        "code" : "OF",
        "display" : "Outpatient facility"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/location-cs",
      "concept" : [{
        "code" : "other",
        "display" : "Other Location"
      }]
    }]
  }
}

```

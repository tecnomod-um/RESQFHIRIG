# CarotidEndarterectomyTiming ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: CarotidEndarterectomyTiming ValueSet 

 
Allowed coded values for CarotidEndarterectomyTiming 

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
  "id" : "carotid-endarterectomy-timing-vs",
  "url" : "http://tecnomod-um.org/ValueSet/carotid-endarterectomy-timing-vs",
  "version" : "1.0.0",
  "name" : "CarotidEndarterectomyTimingVS",
  "title" : "CarotidEndarterectomyTiming ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T10:24:12+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for CarotidEndarterectomyTiming",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/carotid-endarterectomy-timing-cs",
      "concept" : [{
        "code" : "in-24-hours",
        "display" : "Carotid endarterectomy in 24 hours"
      },
      {
        "code" : "hours-to-weeks",
        "display" : "Carotid endarterectomy 24 hours to 2 weeks"
      },
      {
        "code" : "after-weeks",
        "display" : "Carotid endarterectomy after 2 weeks"
      }]
    }]
  }
}

```

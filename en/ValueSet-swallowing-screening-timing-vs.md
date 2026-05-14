# SwallowingScreeningTiming ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: SwallowingScreeningTiming ValueSet 

 
Allowed coded values for SwallowingScreeningTiming 

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
  "id" : "swallowing-screening-timing-vs",
  "url" : "http://tecnomod-um.org/ValueSet/swallowing-screening-timing-vs",
  "version" : "1.0.0",
  "name" : "SwallowingScreeningTimingVS",
  "title" : "SwallowingScreeningTiming ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T11:02:20+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for SwallowingScreeningTiming",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/swallow-screen-time-cs",
      "concept" : [{
        "code" : "T4H",
        "display" : "Within 4 Hours"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs",
      "concept" : [{
        "code" : "post-acute",
        "display" : "Acute Phase (<24h)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "281381003",
        "display" : "More than 24 hours after admission (qualifier value)"
      }]
    }]
  }
}

```

# MRsScore ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: MRsScore ValueSet 

 
Allowed coded values for MRsScore 

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
  "id" : "mrs-score-vs",
  "url" : "http://tecnomod-um.org/ValueSet/mrs-score-vs",
  "version" : "1.0.0",
  "name" : "MRsScoreVS",
  "title" : "MRsScore ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T14:50:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for MRsScore",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/mrs-score-cs",
      "concept" : [{
        "code" : "0",
        "display" : "No symptoms at all"
      },
      {
        "code" : "1",
        "display" : "No significant disability despite symptoms; able to carry out all usual duties and activities"
      },
      {
        "code" : "2",
        "display" : "Slight disability; unable to carry out all previous activities, but able to look after own affairs without assistance"
      },
      {
        "code" : "3",
        "display" : "Moderate disability; requiring some help, but able to walk without assistance"
      },
      {
        "code" : "4",
        "display" : "Moderately severe disability; unable to walk without assistance and unable to attend to own bodily needs without assistance"
      },
      {
        "code" : "5",
        "display" : "Severe disability; bedridden, incontinent and requiring constant nursing care and attention"
      },
      {
        "code" : "6",
        "display" : "Dead"
      }]
    }]
  }
}

```

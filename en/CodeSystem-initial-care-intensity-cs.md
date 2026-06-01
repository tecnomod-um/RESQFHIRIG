# InitialCareIntensityCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: InitialCareIntensityCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/initial-care-intensity-cs. 

This Code system is referenced in the definition of the following value sets:

* [HospitalizedInVS](ValueSet-hospitalized-in-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "initial-care-intensity-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/initial-care-intensity-cs",
  "version" : "1.0.0",
  "name" : "InitialCareIntensityCS",
  "title" : "InitialCareIntensityCs CodeSystem",
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
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/initial-care-intensity-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "icu-stroke",
    "display" : "ICU / Stroke Unit"
  },
  {
    "code" : "monitored",
    "display" : "Monitored Bed"
  },
  {
    "code" : "standard",
    "display" : "Standard Bed"
  }]
}

```

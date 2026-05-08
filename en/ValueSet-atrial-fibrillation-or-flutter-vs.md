# AtrialFibrillationOrFlutter ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: AtrialFibrillationOrFlutter ValueSet 

 
Allowed coded values for AtrialFibrillationOrFlutter, generated from enum_models.py. 

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
  "id" : "atrial-fibrillation-or-flutter-vs",
  "url" : "http://tecnomod-um.org/ValueSet/atrial-fibrillation-or-flutter-vs",
  "version" : "1.0.0",
  "name" : "AtrialFibrillationOrFlutterVS",
  "title" : "AtrialFibrillationOrFlutter ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T09:31:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for AtrialFibrillationOrFlutter, generated from enum_models.py.",
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
        "code" : "410515003",
        "display" : "Known present (qualifier value)"
      },
      {
        "code" : "410516002",
        "display" : "Known absent (qualifier value)"
      },
      {
        "code" : "261665006",
        "display" : "Unknown (qualifier value)"
      }]
    }]
  }
}

```

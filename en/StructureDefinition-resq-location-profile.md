# RESQ Location Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: RESQ Location Profile 

 
Generic coded location profile used by registry builders when the important information is the type of location or service rather than a fully described physical site. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/resq-location-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-resq-location-profile.csv), [Excel](../StructureDefinition-resq-location-profile.xlsx), [Schematron](../StructureDefinition-resq-location-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resq-location-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/resq-location-profile",
  "version" : "1.0.0",
  "name" : "RESQLocationProfile",
  "title" : "RESQ Location Profile",
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
  "description" : "Generic coded location profile used by registry builders when the important information is the type of location or service rather than a fully described physical site.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Provides a coded location/service container for stroke pathway data elements that are exchanged as Location resources.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "Registry location or service type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/locations-vs"
      }
    }]
  }
}

```

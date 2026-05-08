# Hospitalized Location Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Hospitalized Location Profile 

 
Hospitalized location profile aligned with build_hospitalized_location(): Location.type stores admission department and extension stores care intensity. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/hospitalized-location-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-hospitalized-location-profile.csv), [Excel](../StructureDefinition-hospitalized-location-profile.xlsx), [Schematron](../StructureDefinition-hospitalized-location-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hospitalized-location-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/hospitalized-location-profile",
  "version" : "1.0.0",
  "name" : "HospitalizedLocationProfile",
  "title" : "Hospitalized Location Profile",
  "status" : "active",
  "date" : "2026-05-08T09:03:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Hospitalized location profile aligned with build_hospitalized_location(): Location.type stores admission department and extension stores care intensity.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
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
      "id" : "Location.extension",
      "path" : "Location.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Location.extension:initialCareIntensity",
      "path" : "Location.extension",
      "sliceName" : "initialCareIntensity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/initial-care-intensity-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/admission-department-vs"
      }
    }]
  }
}

```

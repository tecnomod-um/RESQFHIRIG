# Hospitalized Location Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hospitalized Location Profile**

## Resource Profile: Hospitalized Location Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/hospitalized-location-profile | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:HospitalizedLocationProfile |

 
Hospitalized location profile aligned with the admission department and initial care intensity captured by the RES-Q source model. 

 
Represents the inpatient department or unit type where the patient was hospitalized, including initial care intensity. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-hospitalized-location-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hospitalized-location-profile.csv), [Excel](StructureDefinition-hospitalized-location-profile.xlsx), [Schematron](StructureDefinition-hospitalized-location-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hospitalized-location-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/hospitalized-location-profile",
  "version" : "1.0.0",
  "name" : "HospitalizedLocationProfile",
  "title" : "Hospitalized Location Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T09:17:06+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Hospitalized location profile aligned with the admission department and initial care intensity captured by the RES-Q source model.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Represents the inpatient department or unit type where the patient was hospitalized, including initial care intensity.",
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
      "short" : "Initial intensity of hospitalized care",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://qualityregistry.org/StructureDefinition/initial-care-intensity-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "Admission department or hospitalized location type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/admission-department-vs"
      }
    }]
  }
}

```

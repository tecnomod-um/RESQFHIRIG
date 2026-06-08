# Stroke Registry Organization Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Registry Organization Profile**

## Resource Profile: Stroke Registry Organization Profile 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/StructureDefinition/stroke-registry-organization-profile | *Version*:1.0.0 |
| Active as of 2026-06-08 | *Computable Name*:StrokeRegistryOrganizationProfile |

 
Organization profile for hospitals or registry participants contributing RES-Q stroke data. The profile requires an active organization, a display name and a registry-scoped identifier. 

 
Identifies the care organization or hospital associated with registry encounters and submitted data. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-stroke-registry-organization-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-stroke-registry-organization-profile.csv), [Excel](StructureDefinition-stroke-registry-organization-profile.xlsx), [Schematron](StructureDefinition-stroke-registry-organization-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-registry-organization-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/stroke-registry-organization-profile",
  "version" : "1.0.0",
  "name" : "StrokeRegistryOrganizationProfile",
  "title" : "Stroke Registry Organization Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T11:21:15+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Organization profile for hospitals or registry participants contributing RES-Q stroke data. The profile requires an active organization, a display name and a registry-scoped identifier.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Identifies the care organization or hospital associated with registry encounters and submitted data.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
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
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Organization identifiers",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:registry",
      "path" : "Organization.identifier",
      "sliceName" : "registry",
      "short" : "RES-Q registry organization identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:registry.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "https://stroke.qualityregistry.org",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:registry.value",
      "path" : "Organization.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Organization currently active in the registry context",
      "min" : 1,
      "patternBoolean" : true,
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Canonical hospital or registry organization name",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```

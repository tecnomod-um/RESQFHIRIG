# RESQ BodyStructure Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: RESQ BodyStructure Profile 

 
BodyStructure profile for anatomical structures relevant to stroke, such as occluded arteries, stenosis sites and laterality-specific findings. 

**Usages:**

* Refer to this Profile: [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/resq-body-structure-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-resq-body-structure-profile.csv), [Excel](../StructureDefinition-resq-body-structure-profile.xlsx), [Schematron](../StructureDefinition-resq-body-structure-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resq-body-structure-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/resq-body-structure-profile",
  "version" : "1.0.0",
  "name" : "RESQBodyStructureProfile",
  "title" : "RESQ BodyStructure Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T11:55:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "BodyStructure profile for anatomical structures relevant to stroke, such as occluded arteries, stenosis sites and laterality-specific findings.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Allows observations and reports to reference a normalized anatomical site instead of repeating less structured body-site information.",
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
    "identity" : "openehr",
    "uri" : "http://openehr.org",
    "name" : "Open EHR Archetype Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "BodyStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/BodyStructure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "BodyStructure",
      "path" : "BodyStructure"
    },
    {
      "id" : "BodyStructure.includedStructure",
      "path" : "BodyStructure.includedStructure",
      "short" : "Anatomical structure relevant to the stroke episode",
      "mustSupport" : true
    },
    {
      "id" : "BodyStructure.includedStructure.structure",
      "path" : "BodyStructure.includedStructure.structure",
      "short" : "Coded artery or anatomical site",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/body-sites-vs"
      }
    },
    {
      "id" : "BodyStructure.includedStructure.laterality",
      "path" : "BodyStructure.includedStructure.laterality",
      "short" : "Left/right/bilateral laterality where applicable",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/laterality-vs"
      }
    },
    {
      "id" : "BodyStructure.patient",
      "path" : "BodyStructure.patient",
      "short" : "Patient whose anatomical structure is described",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    }]
  }
}

```

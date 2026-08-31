# Stroke Carotid Endarterectomy Procedure Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Carotid Endarterectomy Procedure Profile**

## Resource Profile: Stroke Carotid Endarterectomy Procedure Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/stroke-carotid-endarterectomy-procedure-profile | *Version*:1.0.0 |
| Active as of 2026-08-31 | *Computable Name*:StrokeCarotidEndarterectomyProcedureProfile |

 
Procedure profile for carotid endarterectomy and its timing window in the RES-Q pathway. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.csv), [Excel](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.xlsx), [Schematron](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-carotid-endarterectomy-procedure-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/stroke-carotid-endarterectomy-procedure-profile",
  "version" : "1.0.0",
  "name" : "StrokeCarotidEndarterectomyProcedureProfile",
  "title" : "Stroke Carotid Endarterectomy Procedure Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T10:08:26+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Procedure profile for carotid endarterectomy and its timing window in the RES-Q pathway.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
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
      "id" : "Procedure.extension:postAcuteCareRequired",
      "path" : "Procedure.extension",
      "sliceName" : "postAcuteCareRequired",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://qualityregistry.org/StructureDefinition/post-acute-care-required-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/procedure-not-done-reason-vs"
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Carotid endarterectomy procedure",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://qualityregistry.org/ValueSet/perforation-procedures-vs"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "RES-Q registry patient",
      "definition" : "Patient who experienced the index stroke episode represented in this registry dataset.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "Index stroke encounter",
      "definition" : "Encounter that anchors the clinical fact to the acute stroke episode and hospital pathway.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/stroke-encounter-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "Timing range for procedure",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "mustSupport" : true
    }]
  }
}

```

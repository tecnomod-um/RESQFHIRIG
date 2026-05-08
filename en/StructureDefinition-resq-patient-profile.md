# RESQ Patient Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: RESQ Patient Profile 

 
Patient profile for RES-Q stroke registry submissions. The registry patient is intentionally pseudonymized: the profile requires a stable registry identifier and represents sex/gender using a SNOMED CT coded extension because the source ETL does not populate Patient.gender. Age is represented as an Observation in the registry model rather than as a Patient extension. 

**Usages:**

* Refer to this Profile: [Base Stroke Observation Profile](StructureDefinition-base-stroke-observation.md), [Discharge MedicationRequest Profile](StructureDefinition-discharge-medication-request-profile.md), [Three-Month Follow-up Appointment Profile](StructureDefinition-follow-up-appointment-profile.md), [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md)... Show 16 more, [Post-Stroke Complication Condition Profile](StructureDefinition-post-stroke-complication-condition-profile.md), [Prior MedicationStatement Profile](StructureDefinition-prior-medication-statement-profile.md), [RESQ BodyStructure Profile](StructureDefinition-resq-body-structure-profile.md), [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md), [Stroke Carotid Imaging Procedure Profile](StructureDefinition-stroke-carotid-imaging-procedure-profile.md), [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md), [Stroke Encounter Profile](StructureDefinition-stroke-encounter-profile.md), [Stroke Imaging DiagnosticReport Profile](StructureDefinition-stroke-imaging-diagnostic-report-profile.md), [Stroke Imaging Procedure Profile](StructureDefinition-stroke-imaging-procedure-profile.md), [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md), [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md), [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md), [Stroke Swallowing Screening Procedure Profile](StructureDefinition-stroke-swallow-procedure-profile.md), [Stroke Treatment Procedure Profile](StructureDefinition-stroke-treatment-procedure-profile.md), [Stroke VTE Prophylaxis Procedure Profile](StructureDefinition-stroke-vte-procedure-profile.md) and [Three-Month Contact Communication Profile](StructureDefinition-three-month-communication-profile.md)
* Examples for this Profile: [Patient/ExampleRESQPatient](Patient-ExampleRESQPatient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/resq-patient-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-resq-patient-profile.csv), [Excel](../StructureDefinition-resq-patient-profile.xlsx), [Schematron](../StructureDefinition-resq-patient-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resq-patient-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/resq-patient-profile",
  "version" : "1.0.0",
  "name" : "RESQPatientProfile",
  "title" : "RESQ Patient Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-08T10:13:17+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Patient profile for RES-Q stroke registry submissions. The registry patient is intentionally pseudonymized: the profile requires a stable registry identifier and represents sex/gender using a SNOMED CT coded extension because the source ETL does not populate Patient.gender. Age is represented as an Observation in the registry model rather than as a Patient extension.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Provides a minimal, privacy-preserving patient anchor for all RES-Q stroke resources while retaining a coded sex/gender data element required for registry analytics.",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:genderSnomed",
      "path" : "Patient.extension",
      "sliceName" : "genderSnomed",
      "short" : "SNOMED CT sex/gender concept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://tecnomod-um.org/StructureDefinition/gender-snomed-ext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "Stable registry patient identifier",
      "definition" : "Identifier used to link all resources belonging to the same registry subject. Implementers SHOULD avoid directly identifying national or local identifiers unless they are permitted for the exchange context.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Not used by this registry profile",
      "definition" : "The source model records sex/gender as a coded SNOMED CT concept. Patient.gender is prohibited to prevent divergent representations.",
      "max" : "0"
    }]
  }
}

```

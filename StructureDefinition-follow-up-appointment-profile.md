# Three-Month Follow-up Appointment Profile - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Three-Month Follow-up Appointment Profile**

## Resource Profile: Three-Month Follow-up Appointment Profile 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/StructureDefinition/follow-up-appointment-profile | *Version*:1.0.0 |
| Active as of 2026-09-04 | *Computable Name*:FollowUpAppointmentProfile |

 
Appointment profile for planned or recorded three-month neurology follow-up after the index stroke episode. 

 
Documents whether a structured three-month follow-up appointment is part of the stroke pathway and can be referenced from the discharge patient summary plan of care. 

**Usages:**

* Refer to this Profile: [RESQ Stroke Discharge Patient Summary Composition](StructureDefinition-resq-stroke-discharge-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/RESQFHIRIG|current/StructureDefinition/StructureDefinition-follow-up-appointment-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-follow-up-appointment-profile.csv), [Excel](StructureDefinition-follow-up-appointment-profile.xlsx), [Schematron](StructureDefinition-follow-up-appointment-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "follow-up-appointment-profile",
  "url" : "http://qualityregistry.org/StructureDefinition/follow-up-appointment-profile",
  "version" : "1.0.0",
  "name" : "FollowUpAppointmentProfile",
  "title" : "Three-Month Follow-up Appointment Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T10:11:46+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://qualityregistry.org"
    }]
  }],
  "description" : "Appointment profile for planned or recorded three-month neurology follow-up after the index stroke episode.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Documents whether a structured three-month follow-up appointment is part of the stroke pathway and can be referenced from the discharge patient summary plan of care.",
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
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "short" : "Appointment status",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.specialty",
      "path" : "Appointment.specialty",
      "short" : "Follow-up specialty or service",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
      }
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "short" : "Appointment participants",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "short" : "Patient, clinician role, practitioner, healthcare service or location participant",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://qualityregistry.org/StructureDefinition/resq-patient-profile",
        "http://qualityregistry.org/StructureDefinition/resq-practitioner-role-profile",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/HealthcareService",
        "http://hl7.org/fhir/StructureDefinition/Location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "short" : "Participant response status",
      "mustSupport" : true
    }]
  }
}

```

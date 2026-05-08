# Three-Month Follow-up Appointment Profile - RESQ Stroke Registry Implementation Guide v1.0.0

## Resource Profile: Three-Month Follow-up Appointment Profile 

 
Appointment profile for planned or recorded three-month neurology follow-up after the index stroke episode. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/RESQ-FHIR-IG|current/StructureDefinition/follow-up-appointment-profile)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-follow-up-appointment-profile.csv), [Excel](../StructureDefinition-follow-up-appointment-profile.xlsx), [Schematron](../StructureDefinition-follow-up-appointment-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "follow-up-appointment-profile",
  "url" : "http://tecnomod-um.org/StructureDefinition/follow-up-appointment-profile",
  "version" : "1.0.0",
  "name" : "FollowUpAppointmentProfile",
  "title" : "Three-Month Follow-up Appointment Profile",
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
  "description" : "Appointment profile for planned or recorded three-month neurology follow-up after the index stroke episode.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "purpose" : "Documents whether a structured three-month follow-up appointment is part of the stroke pathway.",
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
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://tecnomod-um.org/ValueSet/locations-vs"
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
      "short" : "Patient participant",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "short" : "Patient participation status",
      "mustSupport" : true
    }]
  }
}

```

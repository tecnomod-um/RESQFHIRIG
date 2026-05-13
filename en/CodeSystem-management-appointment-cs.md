# ManagementAppointmentCs CodeSystem - RESQ Stroke Registry Implementation Guide v1.0.0

## CodeSystem: ManagementAppointmentCs CodeSystem 

 
Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/management-appointment-cs. 

This Code system is referenced in the definition of the following value sets:

* [ManagementAppointmentVS](ValueSet-management-appointment-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "management-appointment-cs",
  "url" : "http://tecnomod-um.org/CodeSystem/management-appointment-cs",
  "version" : "1.0.0",
  "name" : "ManagementAppointmentCS",
  "title" : "ManagementAppointmentCs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-13T15:23:44+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Local RESQ stroke registry CodeSystem generated from enum_models.py for system http://tecnomod-um.org/CodeSystem/management-appointment-cs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "appointment",
    "display" : "Follow-up Appointment Status"
  },
  {
    "code" : "scheduled",
    "display" : "Scheduled"
  },
  {
    "code" : "not-recommended",
    "display" : "Not Recommended"
  },
  {
    "code" : "not-scheduled",
    "display" : "Not Scheduled"
  }]
}

```

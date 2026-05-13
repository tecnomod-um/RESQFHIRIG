# ManagementAppointment ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ManagementAppointment ValueSet 

 
Allowed coded values for ManagementAppointment 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "management-appointment-vs",
  "url" : "http://tecnomod-um.org/ValueSet/management-appointment-vs",
  "version" : "1.0.0",
  "name" : "ManagementAppointmentVS",
  "title" : "ManagementAppointment ValueSet",
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
  "description" : "Allowed coded values for ManagementAppointment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/management-appointment-cs",
      "concept" : [{
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
      },
      {
        "code" : "appointment",
        "display" : "Follow-up Appointment Status"
      }]
    }]
  }
}

```

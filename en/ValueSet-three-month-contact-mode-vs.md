# ThreeMonthContactMode ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: ThreeMonthContactMode ValueSet 

 
Allowed coded values for ThreeMonthContactMode 

 **References** 

* [Appointment Management Observation Profile](StructureDefinition-appointment-management-observation-profile.md)
* [Three-Month Contact Communication Profile](StructureDefinition-three-month-communication-profile.md)
* [Three-Month Contact Mode Observation Profile](StructureDefinition-three-month-contact-mode-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "three-month-contact-mode-vs",
  "url" : "http://tecnomod-um.org/ValueSet/three-month-contact-mode-vs",
  "version" : "1.0.0",
  "name" : "ThreeMonthContactModeVS",
  "title" : "ThreeMonthContactMode ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T07:59:38+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for ThreeMonthContactMode",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "466583009",
        "display" : "Video conferencing telemedicine system (physical object)"
      },
      {
        "code" : "706690007",
        "display" : "Web-based application software (physical object)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/three-month-contact-mode-cs",
      "concept" : [{
        "code" : "visit-clinic",
        "display" : "Visit to Clinic"
      },
      {
        "code" : "mobile-app",
        "display" : "Mobile application software"
      },
      {
        "code" : "no-response",
        "display" : "No Response"
      },
      {
        "code" : "not-contacted",
        "display" : "Not Contacted"
      }]
    }]
  }
}

```

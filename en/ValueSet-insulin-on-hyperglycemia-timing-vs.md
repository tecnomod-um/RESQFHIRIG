# InsulinOnHyperglycemiaTiming ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: InsulinOnHyperglycemiaTiming ValueSet 

 
Allowed coded values for InsulinOnHyperglycemiaTiming 

 **References** 

* [Insulin on Hyperglycemia MedicationAdministration Profile](StructureDefinition-insulin-on-hyperglycemia-medicationAdministration-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "insulin-on-hyperglycemia-timing-vs",
  "url" : "http://tecnomod-um.org/ValueSet/insulin-on-hyperglycemia-timing-vs",
  "version" : "1.0.0",
  "name" : "InsulinOnHyperglycemiaTimingVS",
  "title" : "InsulinOnHyperglycemiaTiming ValueSet",
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
  "description" : "Allowed coded values for InsulinOnHyperglycemiaTiming",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/insulin-hyperglycemia-time-cs",
      "concept" : [{
        "code" : "T1H",
        "display" : "Within 1 Hour"
      },
      {
        "code" : "after-1h",
        "display" : "After 1 Hour"
      }]
    }]
  }
}

```

# Procedure Timing Context ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Procedure Timing Context ValueSet 

 
Allowed values for the Procedure timing context extension. 

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
  "id" : "procedure-timing-context-vs",
  "url" : "http://tecnomod-um.org/ValueSet/procedure-timing-context-vs",
  "version" : "1.0.0",
  "name" : "ProcedureTimingContextVS",
  "title" : "Procedure Timing Context ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-12T09:41:56+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed values for the Procedure timing context extension.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/procedure-timing-context-cs"
    }]
  }
}

```

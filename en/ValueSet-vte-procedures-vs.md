# VteProcedures ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: VteProcedures ValueSet 

 
Allowed coded values for VteProcedures, generated from enum_models.py. 

 **References** 

* [Stroke VTE Prophylaxis Procedure Profile](StructureDefinition-stroke-vte-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vte-procedures-vs",
  "url" : "http://tecnomod-um.org/ValueSet/vte-procedures-vs",
  "version" : "1.0.0",
  "name" : "VteProceduresVS",
  "title" : "VteProcedures ValueSet",
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
  "description" : "Allowed coded values for VteProcedures, generated from enum_models.py.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/vte-procedures-cs",
      "concept" : [{
        "code" : "vte-proc",
        "display" : "Thromboembolism intervention"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "225420001",
        "display" : "Application of antithromboembolic stockings (procedure)"
      },
      {
        "code" : "443448006",
        "display" : "Application of intermittent pneumatic compression device (procedure)"
      },
      {
        "code" : "442410008",
        "display" : "Application of venous foot pump (procedure)"
      },
      {
        "code" : "787927008",
        "display" : "Administration of prophylactic coagulation factor Xa inhibitor (procedure)"
      },
      {
        "code" : "699041005",
        "display" : "Administration of prophylactic warfarin (procedure)"
      },
      {
        "code" : "392129008",
        "display" : "Administration of prophylactic low dose heparin (procedure)"
      },
      {
        "code" : "443464003",
        "display" : "Low molecular weight heparin therapy (procedure)"
      },
      {
        "code" : "421728001",
        "display" : "Administration of prophylactic anticoagulant (procedure)"
      }]
    }]
  }
}

```

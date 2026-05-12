# PerforationProcedures ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: PerforationProcedures ValueSet 

 
Allowed coded values for PerforationProcedures 

 **References** 

* [Mechanical Thrombectomy DiagnosticReport Profile](StructureDefinition-mechanical-thrombectomy-diagnostic-report-profile.md)
* [Stroke Carotid Endarterectomy Procedure Profile](StructureDefinition-stroke-carotid-endarterectomy-procedure-profile.md)
* [Stroke Reperfusion Procedure Profile](StructureDefinition-stroke-mechanical-procedure-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "perforation-procedures-vs",
  "url" : "http://tecnomod-um.org/ValueSet/perforation-procedures-vs",
  "version" : "1.0.0",
  "name" : "PerforationProceduresVS",
  "title" : "PerforationProcedures ValueSet",
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
  "description" : "Allowed coded values for PerforationProcedures",
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
        "code" : "472191000119101",
        "display" : "Thrombolysis of cerebral artery by intravenous infusion (procedure)"
      },
      {
        "code" : "397046001",
        "display" : "Thrombectomy of artery (procedure)"
      },
      {
        "code" : "67329000",
        "display" : "Administration of antidote (procedure)"
      },
      {
        "code" : "66951008",
        "display" : "Carotid endarterectomy (procedure)"
      }]
    }]
  }
}

```

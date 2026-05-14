# Medications ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Medications ValueSet 

 
Allowed coded values for Medications 

 **References** 

* [Prior MedicationStatement Profile](StructureDefinition-prior-medication-statement-profile.md)
* [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "medications-vs",
  "url" : "http://tecnomod-um.org/ValueSet/medications-vs",
  "version" : "1.0.0",
  "name" : "MedicationsVS",
  "title" : "Medications ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-14T08:55:50+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for Medications",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/medication-cs",
      "concept" : [{
        "code" : "antidiabetic",
        "display" : "Any Antidiabetic"
      },
      {
        "code" : "antiplatelet",
        "display" : "Any Antiplatelet"
      },
      {
        "code" : "other-anticoagulant",
        "display" : "Other Anticoagulant"
      },
      {
        "code" : "other-antiplatelet",
        "display" : "Other Antiplatelet"
      },
      {
        "code" : "none-medication",
        "display" : "No Medication"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "372586001",
        "display" : "Hypotensive agent (substance)"
      },
      {
        "code" : "372862008",
        "display" : "Anticoagulant (substance)"
      },
      {
        "code" : "698090000",
        "display" : "Apixaban (substance)"
      },
      {
        "code" : "387458008",
        "display" : "Aspirin (substance)"
      },
      {
        "code" : "116087001",
        "display" : "Cilostazol (substance)"
      },
      {
        "code" : "386952008",
        "display" : "Clopidogrel (substance)"
      },
      {
        "code" : "312263009",
        "display" : "Sex hormone (substance)"
      },
      {
        "code" : "698871007",
        "display" : "Dabigatran (substance)"
      },
      {
        "code" : "387371005",
        "display" : "Dipyridamole (substance)"
      },
      {
        "code" : "712778008",
        "display" : "Edoxaban (substance)"
      },
      {
        "code" : "372877000",
        "display" : "Heparin (substance)"
      },
      {
        "code" : "443129001",
        "display" : "Prasugrel (substance)"
      },
      {
        "code" : "442031002",
        "display" : "Rivaroxaban (substance)"
      },
      {
        "code" : "698805004",
        "display" : "Ticagrelor (substance)"
      },
      {
        "code" : "386950000",
        "display" : "Ticlopidine (substance)"
      },
      {
        "code" : "372756006",
        "display" : "Warfarin (substance)"
      },
      {
        "code" : "387152000",
        "display" : "Alteplase (substance)"
      },
      {
        "code" : "387066007",
        "display" : "Tenecteplase (substance)"
      },
      {
        "code" : "395889004",
        "display" : "Streptokinase (substance)"
      },
      {
        "code" : "387517004",
        "display" : "Paracetamol (substance)"
      },
      {
        "code" : "419927001",
        "display" : "Anticoagulant antagonist (substance)"
      },
      {
        "code" : "67866001",
        "display" : "Insulin (substance)"
      },
      {
        "code" : "387502003",
        "display" : "Nimodipine (substance)"
      }]
    }]
  }
}

```

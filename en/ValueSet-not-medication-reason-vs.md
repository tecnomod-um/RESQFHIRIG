# NotMedicationReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: NotMedicationReason ValueSet 

 
Allowed coded values for NotMedicationReason, generated from enum_models.py. 

 **References** 

* [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "not-medication-reason-vs",
  "url" : "http://tecnomod-um.org/ValueSet/not-medication-reason-vs",
  "version" : "1.0.0",
  "name" : "NotMedicationReasonVS",
  "title" : "NotMedicationReason ValueSet",
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
  "description" : "Allowed coded values for NotMedicationReason, generated from enum_models.py.",
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
        "code" : "609328004",
        "display" : "Allergy disposition (finding)"
      },
      {
        "code" : "36456004",
        "display" : "Mental state finding (finding)"
      },
      {
        "code" : "443390004",
        "display" : "Declined (qualifier value)"
      },
      {
        "code" : "129839007",
        "display" : "At increased risk for falls (finding)"
      },
      {
        "code" : "131148009",
        "display" : "Bleeding (finding)"
      },
      {
        "code" : "401207004",
        "display" : "Medication side effects present (finding)"
      },
      {
        "code" : "397943006",
        "display" : "Planned (qualifier value)"
      },
      {
        "code" : "300936002",
        "display" : "Terminal illness (finding)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/not-medication-reason-cs",
      "concept" : [{
        "code" : "Not-Consent",
        "display" : "Patient or family did not consent"
      },
      {
        "code" : "Cost of drug",
        "display" : "Cost of drug"
      },
      {
        "code" : "Not-Available",
        "display" : "Medication not available"
      },
      {
        "code" : "Not-Licensed",
        "display" : "Medication not licensed"
      },
      {
        "code" : "Not-Criteria",
        "display" : "Patient does not meet criteria for medication"
      },
      {
        "code" : "Forgot",
        "display" : "Patient forgot to take medication"
      }]
    }]
  }
}

```

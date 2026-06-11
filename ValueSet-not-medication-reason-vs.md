# NotMedicationReason ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NotMedicationReason ValueSet**

## ValueSet: NotMedicationReason ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://tecnomod-um.org/ValueSet/not-medication-reason-vs | *Version*:1.0.0 |
| Active as of 2026-06-11 | *Computable Name*:NotMedicationReasonVS |

 
Allowed coded values for NotMedicationReason 

 **References** 

* [No Anticoagulant Discharge Reason Observation Profile](StructureDefinition-no-anticoagulant-discharge-reason-observation-profile.md)
* [Stroke MedicationAdministration Profile](StructureDefinition-stroke-medication-administration-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



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
  "date" : "2026-06-11T14:44:28+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for NotMedicationReason",
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
      },
      {
        "code" : "413560001",
        "display" : "Anticoagulation not indicated (situation)"
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

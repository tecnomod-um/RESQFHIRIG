# No smoking reported within the last 10 years - RESQ Stroke Registry Implementation Guide v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **No smoking reported within the last 10 years**

## Example Condition: No smoking reported within the last 10 years

Perfil: [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md)

**clinicalStatus**: Inactive

**code**: Smoking within the last 10 years

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( patient-001)](Patient-ExampleRESQPatient.md)

**encounter**: [Encounter: extension = ->Example Healthcare Organization (https://stroke.qualityregistry.org#organization-001),false,true; status = completed](Encounter-ExampleStrokeEncounter.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ExampleSmokingLast10YearsFalse",
  "meta" : {
    "profile" : ["http://qualityregistry.org/StructureDefinition/stroke-risk-factor-condition-profile"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "inactive",
      "display" : "Inactive"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://qualityregistry.org/CodeSystem/risk-factor-cs",
      "code" : "smoking-last-10-years",
      "display" : "Smoking within the last 10 years"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleRESQPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleStrokeEncounter"
  }
}

```

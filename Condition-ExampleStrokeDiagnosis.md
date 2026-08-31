# ExampleStrokeDiagnosis - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleStrokeDiagnosis**

## Example Condition: ExampleStrokeDiagnosis

Profile: [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

**Wake-up stroke**: false

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Ischemic stroke (disorder)

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( patient-001)](Patient-ExampleRESQPatient.md)

**encounter**: [Encounter: extension = ->Organization Example Healthcare Organization,false,true; status = completed](Encounter-ExampleStrokeEncounter.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ExampleStrokeDiagnosis",
  "meta" : {
    "profile" : ["http://qualityregistry.org/StructureDefinition/stroke-diagnosis-condition-profile"]
  },
  "extension" : [{
    "url" : "http://qualityregistry.org/StructureDefinition/wakeup-stroke-ext",
    "valueBoolean" : false
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "422504002",
      "display" : "Ischemic stroke (disorder)"
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

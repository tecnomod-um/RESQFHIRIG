# ExampleStrokeDiagnosis - RESQ Stroke Registry Implementation Guide v1.0.0

## Example Condition: ExampleStrokeDiagnosis

Profile: [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

**Wake-up stroke**: false

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Ischemic stroke (disorder)

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( patient-001)](Patient-ExampleRESQPatient.md)

**encounter**: [Encounter: extension = true,false,true; status = completed](Encounter-ExampleStrokeEncounter.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ExampleStrokeDiagnosis",
  "meta" : {
    "profile" : ["http://tecnomod-um.org/StructureDefinition/stroke-diagnosis-condition-profile"]
  },
  "extension" : [{
    "url" : "http://tecnomod-um.org/StructureDefinition/wakeup-stroke-ext",
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

# ExampleDoorToNeedle - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleDoorToNeedle**

## Example Observation: ExampleDoorToNeedle

Profile: [Timing Metric Observation Profile](StructureDefinition-timing-metric-observation-profile.md)

**status**: Final

**code**: Door to Needle

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( patient-001)](Patient-ExampleRESQPatient.md)

**encounter**: [Encounter: extension = true,false,true; status = completed](Encounter-ExampleStrokeEncounter.md)

**value**: 38 minute (Details: ucum codemin = 'min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleDoorToNeedle",
  "meta" : {
    "profile" : ["http://tecnomod-um.org/StructureDefinition/timing-metric-observation-profile"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://tecnomod-um.org/CodeSystem/timing-metric-codes-cs",
      "code" : "D2N",
      "display" : "Door to Needle"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleRESQPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleStrokeEncounter"
  },
  "valueQuantity" : {
    "value" : 38,
    "unit" : "minute",
    "system" : "https://ucum.org/ucum",
    "code" : "min"
  }
}

```

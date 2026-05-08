# ExampleRESQPatient - RESQ Stroke Registry Implementation Guide v1.0.0

## Example Patient: ExampleRESQPatient

Profile: [RESQ Patient Profile](StructureDefinition-resq-patient-profile.md)

Anonymous Patient (no stated gender), DoB Unknown ( patient-001)

-------

| | |
| :--- | :--- |
| [Gender represented with SNOMED CT](StructureDefinition-gender-snomed-ext.md) | Male (finding) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleRESQPatient",
  "meta" : {
    "profile" : ["http://tecnomod-um.org/StructureDefinition/resq-patient-profile"]
  },
  "extension" : [{
    "url" : "http://tecnomod-um.org/StructureDefinition/gender-snomed-ext",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "248153007",
        "display" : "Male (finding)"
      }]
    }
  }],
  "identifier" : [{
    "value" : "patient-001"
  }]
}

```

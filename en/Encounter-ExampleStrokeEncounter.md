# ExampleStrokeEncounter - RESQ Stroke Registry Implementation Guide v1.0.0

## Example Encounter: ExampleStrokeEncounter

Profile: [Stroke Encounter Profile](StructureDefinition-stroke-encounter-profile.md)

**First hospital for the stroke episode**: [Organization Example Healthcare Organization](Organization-OrganizationExample.md)

**Required post-acute care**: false

**EMS prenotification**: true

**status**: Completed

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( patient-001)](Patient-ExampleRESQPatient.md)

### Admissions

| | | |
| :--- | :--- | :--- |
| - | **AdmitSource** | **DischargeDisposition** |
| * | EMS from GP | Discharge to home (procedure) |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ExampleStrokeEncounter",
  "meta" : {
    "profile" : ["http://tecnomod-um.org/StructureDefinition/stroke-encounter-profile"]
  },
  "extension" : [{
    "url" : "http://tecnomod-um.org/StructureDefinition/first-hospital-ext",
    "valueReference" : {
      "reference" : "Organization/OrganizationExample"
    }
  },
  {
    "url" : "http://tecnomod-um.org/StructureDefinition/required-post-acute-care-ext",
    "valueBoolean" : false
  },
  {
    "url" : "http://tecnomod-um.org/StructureDefinition/ems-prenotification-ext",
    "valueBoolean" : true
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/ExampleRESQPatient"
  },
  "admission" : {
    "admitSource" : {
      "coding" : [{
        "system" : "http://tecnomod-um.org/CodeSystem/stroke-arrival-mode-cs",
        "code" : "ems-gp",
        "display" : "EMS from GP"
      }]
    },
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "306689006",
        "display" : "Discharge to home (procedure)"
      }]
    }
  }
}

```

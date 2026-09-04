// -----------------------------------------------------------------------------
// Minimal example instances useful for smoke testing the profiles
// -----------------------------------------------------------------------------

Instance: ExampleRESQPatient
InstanceOf: RESQPatientProfile
Usage: #example
* identifier.value = "patient-001"
* extension[genderSnomed].valueCodeableConcept = SCT#248153007 "Male (finding)"

Instance: OrganizationExample
InstanceOf: StrokeRegistryOrganizationProfile
Usage: #example
* active = true
* identifier[registry].system = StrokeRegistryIdSystem
* identifier[registry].value = "organization-001"
* name = "Example Healthcare Organization"

Instance: ExampleStrokeEncounter
InstanceOf: StrokeEncounterProfile
Usage: #example
* status = #completed
* subject = Reference(ExampleRESQPatient)
* extension[firstHospital].valueReference = Reference(OrganizationExample)
* extension[requiredPostAcuteCare].valueBoolean = false
* extension[emsPrenotification].valueBoolean = true
* admission.admitSource = StrokeArrivalModeCS#ems-gp "EMS from GP"
* admission.dischargeDisposition = SCT#306689006 "Discharge to home (procedure)"

Instance: ExampleStrokeDiagnosis
InstanceOf: StrokeDiagnosisConditionProfile
Usage: #example
* subject = Reference(ExampleRESQPatient)
* encounter = Reference(ExampleStrokeEncounter)
* clinicalStatus = ConditionClinicalCS#active "Active"
* verificationStatus = ConditionVerificationCS#confirmed "Confirmed"
* code = SCT#422504002 "Ischemic stroke (disorder)"
* extension[wakeupStroke].valueBoolean = false
* category = ConditionCategoryCS#encounter-diagnosis "Encounter Diagnosis"

Instance: ExampleDoorToNeedle
InstanceOf: TimingMetricObservationProfile
Usage: #example
* status = #final
* subject = Reference(ExampleRESQPatient)
* encounter = Reference(ExampleStrokeEncounter)
* code = TimingMetricCodesCS#D2N "Door to Needle"
* valueQuantity.value = 38
* valueQuantity.system = "https://ucum.org/ucum"
* valueQuantity.code = #min
* valueQuantity.unit = "minute"

Instance: ExampleRESQStrokeDischargeComposition
InstanceOf: RESQStrokeDischargeComposition
Usage: #example
* status = #final
* type = LOINC#18842-5 "Discharge summary"
* identifier.system = StrokeRegistryIdSystem
* identifier.value = "discharge-summary-001"
* subject = Reference(ExampleRESQPatient)
* encounter = Reference(ExampleStrokeEncounter)
* date = "2026-09-04T10:00:00+02:00"
* author[0] = Reference(OrganizationExample)
* custodian = Reference(OrganizationExample)
* title = "RESQ Stroke Discharge Patient Summary"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">RESQ stroke discharge patient summary for the example stroke encounter.</div>"
* section[hospitalCourse].title = "Hospital Course"
* section[hospitalCourse].code = LOINC#8648-8 "Hospital course note"
* section[hospitalCourse].text.status = #generated
* section[hospitalCourse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The hospital course references the confirmed stroke diagnosis and the door-to-needle timing metric.</div>"
* section[hospitalCourse].entry[0] = Reference(ExampleStrokeDiagnosis)
* section[hospitalCourse].entry[1] = Reference(ExampleDoorToNeedle)

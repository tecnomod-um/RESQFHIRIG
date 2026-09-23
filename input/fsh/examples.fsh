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
* identifier.system = "https://stroke.qualityregistry.org/"
* identifier.value = "discharge-summary-001"
* subject = Reference(ExampleRESQPatient)
* encounter = Reference(ExampleStrokeEncounter)
* date = "2026-09-04T10:00:00+02:00"
* author[0] = Reference(OrganizationExample)
* custodian = Reference(OrganizationExample)
* title = "Stroke Hospital Discharge Summary"
* language = #en
* version = "1"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">RESQ stroke discharge patient summary for the example stroke encounter.</div>"
* section[alerts].title = "Medical Alerts"
* section[alerts].code = LOINC#75310-3 "Health concerns document"
* section[alerts].text.status = #generated
* section[alerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medical alerts were not collected in this registry case.</div>"
* section[alerts].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#notasked "Not Asked"
* section[allergiesIntolerances].title = "Allergies and Intolerances"
* section[allergiesIntolerances].code = LOINC#48765-2 "Allergies and adverse reactions document"
* section[allergiesIntolerances].text.status = #generated
* section[allergiesIntolerances].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and intolerances were not collected in this registry case.</div>"
* section[allergiesIntolerances].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#notasked "Not Asked"
* section[encounterInformation].title = "Encounter Information"
* section[encounterInformation].code = LOINC#46240-8 "History of hospitalization and outpatient visits"
* section[encounterInformation].text.status = #generated
* section[encounterInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The document summarizes the example stroke encounter.</div>"
* section[encounterInformation].entry[0] = Reference(ExampleStrokeEncounter)
* section[hospitalCourse].title = "Hospital Course"
* section[hospitalCourse].code = LOINC#8648-8 "Hospital course note"
* section[hospitalCourse].text.status = #generated
* section[hospitalCourse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hospital course sections include diagnosis, procedures, devices and significant results.</div>"
* section[hospitalCourse].section[diagnosticSummary].title = "Diagnostic Summary"
* section[hospitalCourse].section[diagnosticSummary].code = LOINC#11535-2 "Hospital discharge diagnosis note"
* section[hospitalCourse].section[diagnosticSummary].text.status = #generated
* section[hospitalCourse].section[diagnosticSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The example case includes an ischemic stroke diagnosis.</div>"
* section[hospitalCourse].section[diagnosticSummary].entry[0] = Reference(ExampleStrokeDiagnosis)
* section[hospitalCourse].section[significantProcedures].title = "Significant Procedures"
* section[hospitalCourse].section[significantProcedures].code = LOINC#10185-7 "Hospital discharge procedure note"
* section[hospitalCourse].section[significantProcedures].text.status = #generated
* section[hospitalCourse].section[significantProcedures].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No significant procedures are represented in this minimal example.</div>"
* section[hospitalCourse].section[significantProcedures].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable "Unavailable"
* section[hospitalCourse].section[treatmentTimings].title = "Treatment Timings"
* section[hospitalCourse].section[treatmentTimings].code = StrokeDischargeSummarySectionCS#treatment-timings "Treatment Timings"
* section[hospitalCourse].section[treatmentTimings].text.status = #generated
* section[hospitalCourse].section[treatmentTimings].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Door-to-needle time was 38 minutes.</div>"
* section[hospitalCourse].section[treatmentTimings].entry[0] = Reference(ExampleDoorToNeedle)
* section[hospitalCourse].section[medicalDevices].title = "Medical Devices and Implants"
* section[hospitalCourse].section[medicalDevices].code = SCT#1184586001 "Medical device document section"
* section[hospitalCourse].section[medicalDevices].text.status = #generated
* section[hospitalCourse].section[medicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medical devices and implants were not collected in this registry case.</div>"
* section[hospitalCourse].section[medicalDevices].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#notasked "Not Asked"
* section[hospitalCourse].section[significantResults].title = "Significant Test Results"
* section[hospitalCourse].section[significantResults].code = LOINC#30954-2 "Relevant diagnostic tests and laboratory data note"
* section[hospitalCourse].section[significantResults].text.status = #generated
* section[hospitalCourse].section[significantResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No significant test results are represented in this minimal example.</div>"
* section[hospitalCourse].section[significantResults].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable "Unavailable"
* section[dischargeDetails].title = "Discharge Details"
* section[dischargeDetails].code = LOINC#8650-4 "Hospital discharge disposition note"
* section[dischargeDetails].text.status = #generated
* section[dischargeDetails].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Discharge details reference the example stroke encounter.</div>"
* section[dischargeDetails].entry[0] = Reference(ExampleStrokeEncounter)
* section[dischargeDetails].section[vitalSigns].title = "Vital Signs at Discharge"
* section[dischargeDetails].section[vitalSigns].code = LOINC#8716-3 "Vital signs note"
* section[dischargeDetails].section[vitalSigns].text.status = #generated
* section[dischargeDetails].section[vitalSigns].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No discharge vital signs are represented in this minimal example.</div>"
* section[dischargeDetails].section[vitalSigns].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable "Unavailable"
* section[dischargeDetails].section[anthropometry].title = "Anthropometric Measurements"
* section[dischargeDetails].section[anthropometry].code = SCT#248326004 "Anthropometric measure"
* section[dischargeDetails].section[anthropometry].text.status = #generated
* section[dischargeDetails].section[anthropometry].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Anthropometric measurements were not collected in this registry case.</div>"
* section[dischargeDetails].section[anthropometry].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#notasked "Not Asked"
* section[dischargeDetails].section[physicalExamination].title = "Physical Examination at Discharge"
* section[dischargeDetails].section[physicalExamination].code = LOINC#29545-1 "Physical findings"
* section[dischargeDetails].section[physicalExamination].text.status = #generated
* section[dischargeDetails].section[physicalExamination].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Physical examination findings were not collected in this registry case.</div>"
* section[dischargeDetails].section[physicalExamination].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#notasked "Not Asked"
* section[dischargeDetails].section[functionalStatus].title = "Functional Status at Discharge"
* section[dischargeDetails].section[functionalStatus].code = LOINC#47420-5 "Functional status assessment note"
* section[dischargeDetails].section[functionalStatus].text.status = #generated
* section[dischargeDetails].section[functionalStatus].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No discharge functional status entries are represented in this minimal example.</div>"
* section[dischargeDetails].section[functionalStatus].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable "Unavailable"
* section[medicationSummary].title = "Medication Summary at Discharge"
* section[medicationSummary].code = LOINC#75311-1 "Discharge medications note"
* section[medicationSummary].text.status = #generated
* section[medicationSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No discharge medications are represented in this minimal example.</div>"
* section[medicationSummary].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable "Unavailable"
* section[planOfCare].title = "Plan of Care and Follow-up"
* section[planOfCare].code = LOINC#18776-5 "Plan of care note"
* section[planOfCare].text.status = #generated
* section[planOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No follow-up plan entries are represented in this minimal example.</div>"
* section[planOfCare].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable "Unavailable"

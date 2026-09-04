// -----------------------------------------------------------------------------
// Composition profile
// -----------------------------------------------------------------------------

Profile: RESQStrokeDischargeComposition
Parent: Composition
Id: resq-stroke-discharge-composition
Title: "RESQ Stroke Discharge Patient Summary Composition"
Description: "Composition profile for the RESQ Stroke Discharge Patient Summary document. It assembles the patient, index stroke encounter and clinically relevant registry resources into a navigable FHIR R5 discharge summary."
* ^url = "http://qualityregistry.org/StructureDefinition/resq-stroke-discharge-composition"
* ^name = "RESQStrokeDischargeComposition"
* insert RESQProfileMetadata
* ^fhirVersion = #5.0.0
* ^purpose = "Provides the clinical document entry point for one RES-Q stroke admission, grouping diagnosis, hospital course, treatments, discharge status, medications and follow-up information while keeping each coded fact available as a discrete FHIR resource."
* obeys resq-section-entry-or-empty-reason

// Document header
* status 1..1 MS
* status = #final
* status ^short = "Final discharge patient summary"

* type 1..1 MS
* type from RESQStrokeDischargeDocumentTypeVS (required)
* type = LOINC#18842-5 "Discharge summary"
* type ^short = "Discharge summary document type"

* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = StrokeRegistryIdSystem (exactly)
* identifier.value 1..1 MS
* identifier ^short = "Stable document identifier"

* subject 1..1 MS
* subject only Reference(RESQPatientProfile)
* subject ^short = "Patient discharged after the index stroke admission"

* encounter 0..1 MS
* encounter only Reference(StrokeEncounterProfile)
* encounter ^short = "Index stroke encounter summarized by the document"

* date 1..1 MS
* date ^short = "Date/time the discharge summary was finalized"

* author 1..* MS
* author only Reference(StrokeRegistryOrganizationProfile or Practitioner or RESQPractitionerRoleProfile or Device)
* author ^short = "Authoring organization, clinician, role or system"

* custodian 1..1 MS
* custodian only Reference(StrokeRegistryOrganizationProfile)
* custodian ^short = "Organization responsible for maintaining the document"

* title 1..1 MS
* title = "RESQ Stroke Discharge Patient Summary"
* title ^short = "Human-readable document title"

* text 1..1 MS
* text ^short = "Narrative rendering of the complete discharge summary"

// Section base rules
* section 1..* MS
* section.code 1..1 MS
* section.code from RESQStrokeDischargeSectionCodeVS (required)
* section.title 1..1 MS
* section.text 1..1 MS
* section.entry MS
* section.emptyReason from http://hl7.org/fhir/ValueSet/list-empty-reason (required)
* section ^short = "Discharge summary sections"
* section ^definition = "Sections organize narrative and computable entries for the discharge patient summary. When a section is present without entries, emptyReason explains why no discrete resources are referenced."


// -------------------------------------------------------
// Section slicing by section code
// -------------------------------------------------------

* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false

* section contains
    admissionEvaluation 0..1 MS and
    patientHistory 0..1 MS and
    problemList 0..1 MS and
    hospitalCourse 1..1 MS and
    diagnosticSummary 0..1 MS and
    significantProcedures 0..1 MS and
    pharmacotherapy 0..1 MS and
    treatmentTimings 0..1 MS and
    significantResults 0..1 MS and
    vitalSigns 0..1 MS and
    functionalStatus 0..1 MS and
    dischargeDetails 0..1 MS and
    dischargeMedications 0..1 MS and
    planOfCare 0..1 MS


// -------------------------------------------------------
// Admission Evaluation
// -------------------------------------------------------

* section[admissionEvaluation].title = "Admission Evaluation"
* section[admissionEvaluation].code = LOINC#67851-6 "Admission evaluation note"
* section[admissionEvaluation].entry only Reference(StrokeDiagnosisConditionProfile or StrokeRiskFactorConditionProfile or FunctionalScoreObservationProfile or VitalSignObservationProfile or TimingMetricObservationProfile or RESQLocationProfile or HospitalizedLocationProfile)
* section[admissionEvaluation] ^short = "Initial clinical status, location and assessment at admission"


// -------------------------------------------------------
// Relevant Patient History
// -------------------------------------------------------

* section[patientHistory].title = "Relevant Patient History"
* section[patientHistory].code = LOINC#11329-0 "History of general health Narrative"
* section[patientHistory].entry only Reference(PriorMedicationStatementProfile or StrokeRiskFactorConditionProfile)
* section[patientHistory] ^short = "Relevant pre-stroke history and prior medication use"


// -------------------------------------------------------
// Relevant Problems and Risk Factors
// -------------------------------------------------------

* section[problemList].title = "Relevant Problems and Risk Factors"
* section[problemList].code = LOINC#11450-4 "Problem list - Reported"
* section[problemList].entry only Reference(StrokeDiagnosisConditionProfile or StrokeRiskFactorConditionProfile or PostStrokeComplicationConditionProfile)
* section[problemList] ^short = "Stroke diagnosis, risk factors and relevant complications"


// -------------------------------------------------------
// Hospital Course
// Required section
// -------------------------------------------------------

* section[hospitalCourse].title = "Hospital Course"
* section[hospitalCourse].code = LOINC#8648-8 "Hospital course note"
* section[hospitalCourse].entry only Reference(StrokeDiagnosisConditionProfile or PostStrokeComplicationConditionProfile or VitalSignObservationProfile or FunctionalScoreObservationProfile or SpecificFindingObservationProfile or TimingMetricObservationProfile or AnaliticsObservationProfile or StrokeImagingProcedureProfile or StrokeMechanicalProcedureProfile or StrokeSwallowProcedureProfile or StrokeVTEProcedureProfile or StrokeTreatmentProcedureProfile or StrokeMedicationAdministrationProfile or ParacetamolOnFeverMedicationAdministrationProfile or InsulinOnHyperglycemiaMedicationAdministrationProfile or NimodipineMedicationAdministrationProfile or AnticoagulantReversalMedicationAdministrationProfile or StrokeImagingDiagnosticReportProfile or MechanicalThrombectomyDiagnosticReportProfile)
* section[hospitalCourse] ^short = "Clinical course and major events during hospitalization"


// -------------------------------------------------------
// Diagnostic Summary
// -------------------------------------------------------

* section[diagnosticSummary].title = "Diagnostic Summary"
* section[diagnosticSummary].code = LOINC#11535-2 "Hospital discharge diagnosis Narrative"
* section[diagnosticSummary].entry only Reference(StrokeDiagnosisConditionProfile or SpecificFindingObservationProfile or StrokeImagingDiagnosticReportProfile or MechanicalThrombectomyDiagnosticReportProfile)
* section[diagnosticSummary] ^short = "Final diagnosis and supporting diagnostic findings"


// -------------------------------------------------------
// Significant Procedures
// -------------------------------------------------------

* section[significantProcedures].title = "Significant Procedures"
* section[significantProcedures].code = LOINC#10185-7 "Hospital discharge procedures"
* section[significantProcedures].entry only Reference(StrokeImagingProcedureProfile or StrokeCarotidImagingProcedureProfile or StrokeCarotidEndarterectomyProcedureProfile or StrokeMechanicalProcedureProfile or StrokeSwallowProcedureProfile or StrokeVTEProcedureProfile or StrokeTreatmentProcedureProfile)
* section[significantProcedures] ^short = "Clinically significant procedures performed or considered"


// -------------------------------------------------------
// Pharmacotherapy During Hospitalisation
// -------------------------------------------------------

* section[pharmacotherapy].title = "Pharmacotherapy During Hospitalisation"
* section[pharmacotherapy].code = LOINC#87232-5 "Medication administration brief"
* section[pharmacotherapy].entry only Reference(StrokeMedicationAdministrationProfile or ParacetamolOnFeverMedicationAdministrationProfile or InsulinOnHyperglycemiaMedicationAdministrationProfile or NimodipineMedicationAdministrationProfile or AnticoagulantReversalMedicationAdministrationProfile)
* section[pharmacotherapy] ^short = "Medication administrations during acute or post-acute stroke care"


// -------------------------------------------------------
// Treatment Timings
// -------------------------------------------------------

* section[treatmentTimings].title = "Treatment Timings"
* section[treatmentTimings].code = StrokeDischargeSummarySectionCS#treatment-timings "Treatment Timings"
* section[treatmentTimings].entry only Reference(TimingMetricObservationProfile)
* section[treatmentTimings] ^short = "Stroke pathway timing metrics such as door-to-needle and onset-to-door"


// -------------------------------------------------------
// Significant Results
// -------------------------------------------------------

* section[significantResults].title = "Significant Results"
* section[significantResults].code = LOINC#30954-2 "Relevant diagnostic tests/laboratory data Narrative" 
* section[significantResults].entry only Reference(SpecificFindingObservationProfile or AnaliticsObservationProfile or FeverObservationProfile or HyperglycemiaObservationProfile or GlucoseGE10ObservationProfile or HighestHyperglycemiaValueObservationProfile or SystolicBloodPressureHighestValueObservationProfile or StrokeImagingDiagnosticReportProfile or MechanicalThrombectomyDiagnosticReportProfile)
* section[significantResults] ^short = "Relevant diagnostic, imaging and laboratory results"


// -------------------------------------------------------
// Vital Signs at Discharge
// -------------------------------------------------------

* section[vitalSigns].title = "Vital Signs at Discharge"
* section[vitalSigns].code = LOINC#8716-3 "Vital signs note"
* section[vitalSigns].entry only Reference(VitalSignObservationProfile or SystolicBloodPressureHighestValueObservationProfile)
* section[vitalSigns] ^short = "Vital signs relevant to discharge status"


// -------------------------------------------------------
// Functional Status at Discharge
// -------------------------------------------------------

* section[functionalStatus].title = "Functional Status at Discharge"
* section[functionalStatus].code = LOINC#47420-5 "Functional status assessment note"
* section[functionalStatus].entry only Reference(FunctionalScoreObservationProfile or GlasgowComaScoreObservationProfile or GlasgowComaScaleObservationProfile or PatientVentilatedObservationProfile or QuestionnaireResponse)
* section[functionalStatus] ^short = "Functional and neurological status at discharge"


// -------------------------------------------------------
// Discharge Details
// -------------------------------------------------------

* section[dischargeDetails].title = "Discharge Details"
* section[dischargeDetails].code = LOINC#8650-4 "Hospital discharge disposition note"
* section[dischargeDetails].entry only Reference(StrokeEncounterProfile)
* section[dischargeDetails] ^short = "Discharge destination, disposition and facility/service details"


// -------------------------------------------------------
// Discharge Medications
// -------------------------------------------------------

* section[dischargeMedications].title = "Discharge Medications"
* section[dischargeMedications].code = LOINC#75311-1 "Discharge medications Narrative"
* section[dischargeMedications].entry only Reference(DischargeMedicationRequestProfile or NoAnticoagulantDischargeReasonObservationProfile)
* section[dischargeMedications] ^short = "Medication orders or omission reasons at discharge"


// -------------------------------------------------------
// Plan of Care and Follow-up
// -------------------------------------------------------

* section[planOfCare].title = "Plan of Care and Follow-up"
* section[planOfCare].code = LOINC#18776-5 "Plan of care note"
* section[planOfCare].entry only Reference(FollowUpAppointmentProfile or ThreeMonthCommunicationProfile or AppointmentManagementObservationProfile or ThreeMonthContactModeObservationProfile or StrokeTreatmentProcedureProfile or CarePlan or ServiceRequest)
* section[planOfCare] ^short = "Follow-up plan, scheduled contact and continuing care recommendations"

Invariant: resq-section-entry-or-empty-reason
Description: "Every section in the RESQ discharge patient summary should either reference at least one entry or state why no entry is available."
Severity: #warning
Expression: "section.all(entry.exists() or emptyReason.exists())"

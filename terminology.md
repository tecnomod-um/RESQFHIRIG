# Terminology - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Terminology**

## Terminology

# Terminology

The IG exposes registry enumerations as computable FHIR terminology. Local CodeSystems preserve the values generated from `enum_models.py`; ValueSets provide the bindings used by profiles and extensions.

## Main Terminology Groups

| | |
| :--- | :--- |
| Stroke pathway and admission | [AdmissionPathway ValueSet](ValueSet-admission-pathway-vs.md),[FirstContactPlace ValueSet](ValueSet-first-contact-place-vs.md),[DischargeDestination ValueSet](ValueSet-discharge-destination-vs.md) |
| Diagnosis and etiology | [StrokeType ValueSet](ValueSet-stroke-type-vs.md),[StrokeEtiology ValueSet](ValueSet-stroke-etiology-vs.md),[BleedingReason ValueSet](ValueSet-bleeding-reason-vs.md) |
| Observations and scores | [FunctionalScore ValueSet](ValueSet-functional-score-vs.md),[MRsScore ValueSet](ValueSet-mrs-score-vs.md),[GlasgowComaScale ValueSet](ValueSet-glasgow-coma-scale-vs.md),[TimingMetricCodes ValueSet](ValueSet-timing-metric-codes-vs.md) |
| Procedures | [PerforationProcedures ValueSet](ValueSet-perforation-procedures-vs.md),[VteProcedures ValueSet](ValueSet-vte-procedures-vs.md),[ProcedureNotDoneReason ValueSet](ValueSet-procedure-not-done-reason-vs.md) |
| Medication | [Medications ValueSet](ValueSet-medications-vs.md),[DischargeMedication ValueSet](ValueSet-discharge-medication-vs.md),[NotMedicationReason ValueSet](ValueSet-not-medication-reason-vs.md),[AdherenceCodes ValueSet](ValueSet-adherence-codes-vs.md) |
| Anatomy and measurements | [BodySites ValueSet](ValueSet-body-sites-vs.md),[Laterality ValueSet](ValueSet-laterality-vs.md),[UnitofMeasurement ValueSet](ValueSet-unitof-measurement-vs.md) |

## Binding Approach

Required bindings are used where the registry transformation expects a controlled and closed set of codes for correct interpretation. Extensible bindings are used where the registry list is preferred but interoperable implementations may need additional external codes.

External standards are reused when they fit the data element:

* SNOMED CT for clinical disorders, findings, procedures and substances.
* LOINC for observation concepts where applicable.
* UCUM for units such as minutes, millimeters of mercury and mmol/L.
* HL7 terminology CodeSystems for base FHIR status and category concepts.

See [Artifacts](artifacts.md) for the full generated list of CodeSystems and ValueSets.


The IG exposes registry enumerations as computable FHIR terminology. Local CodeSystems preserve the values generated from `enum_models.py`; ValueSets provide the bindings used by profiles and extensions.

## Main Terminology Groups

| Group | Examples |
| --- | --- |
| Discharge summary document | [RESQ Stroke Discharge Document Type ValueSet](ValueSet-resq-stroke-discharge-document-type-vs.html), [RESQ Stroke Discharge Section Code ValueSet](ValueSet-resq-stroke-discharge-section-code-vs.html) |
| Stroke pathway and admission | [AdmissionPathway ValueSet](ValueSet-admission-pathway-vs.html), [FirstContactPlace ValueSet](ValueSet-first-contact-place-vs.html), [DischargeDestination ValueSet](ValueSet-discharge-destination-vs.html) |
| Diagnosis and etiology | [StrokeType ValueSet](ValueSet-stroke-type-vs.html), [StrokeEtiology ValueSet](ValueSet-stroke-etiology-vs.html), [BleedingReason ValueSet](ValueSet-bleeding-reason-vs.html) |
| Observations and scores | [FunctionalScore ValueSet](ValueSet-functional-score-vs.html), [MRsScore ValueSet](ValueSet-mrs-score-vs.html), [GlasgowComaScale ValueSet](ValueSet-glasgow-coma-scale-vs.html), [TimingMetricCodes ValueSet](ValueSet-timing-metric-codes-vs.html) |
| Procedures | [PerforationProcedures ValueSet](ValueSet-perforation-procedures-vs.html), [VteProcedures ValueSet](ValueSet-vte-procedures-vs.html), [ProcedureNotDoneReason ValueSet](ValueSet-procedure-not-done-reason-vs.html) |
| Medication | [Medications ValueSet](ValueSet-medications-vs.html), [DischargeMedication ValueSet](ValueSet-discharge-medication-vs.html), [NotMedicationReason ValueSet](ValueSet-not-medication-reason-vs.html), [AdherenceCodes ValueSet](ValueSet-adherence-codes-vs.html) |
| Anatomy and measurements | [BodySites ValueSet](ValueSet-body-sites-vs.html), [Laterality ValueSet](ValueSet-laterality-vs.html), [UnitofMeasurement ValueSet](ValueSet-unitof-measurement-vs.html) |

## Binding Approach

Required bindings are used where the registry transformation expects a controlled and closed set of codes for correct interpretation. Extensible bindings are used where the registry list is preferred but interoperable implementations may need additional external codes.

External standards are reused when they fit the data element:

- SNOMED CT for clinical disorders, findings, procedures and substances.
- LOINC for observation concepts where applicable.
- UCUM for units such as minutes, millimeters of mercury and mmol/L.
- HL7 terminology CodeSystems for base FHIR status and category concepts.

## Smoking Within the Last 10 Years

`RISK_SMOKER_LAST_10_YEARS` records whether the patient smoked at any time during the
10 years before the index stroke episode. Use the local RES-Q concept
`http://qualityregistry.org/CodeSystem/risk-factor-cs#smoking-last-10-years`
("Smoking within the last 10 years"), included in
[RiskFactorVS](ValueSet-risk-factor-vs.html), with the
[StrokeRiskFactorConditionProfile](StructureDefinition-stroke-risk-factor-condition-profile.html).

This concept does not classify the patient specifically as a current smoker,
former smoker or non-smoker. SNOMED CT `77176002 |Smoker|` remains in the ValueSet
for existing uses, but does not represent this registry variable.

Both boolean values use the same Condition code. The registry value is represented
by `clinicalStatus` from `http://terminology.hl7.org/CodeSystem/condition-clinical`:

| Registry value | Condition clinicalStatus | Example |
| --- | --- | --- |
| `true` | `active` | [Smoking reported within the last 10 years](Condition-ExampleSmokingLast10YearsTrue.html) |
| `false` | `inactive` | [No smoking reported within the last 10 years](Condition-ExampleSmokingLast10YearsFalse.html) |

The FSH terminology was originally imported from `enum_models.py`. This repository
does not contain that source or a terminology generator; its build compiles
`input/fsh/terminology_generated.fsh` directly with SUSHI. Any future import from
the external enumeration source must preserve this concept and its ValueSet inclusion.

See [Artifacts](artifacts.html) for the full generated list of CodeSystems and ValueSets.

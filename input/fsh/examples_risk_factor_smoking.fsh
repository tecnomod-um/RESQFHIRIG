Instance: ExampleSmokingLast10YearsTrue
InstanceOf: StrokeRiskFactorConditionProfile
Title: "Smoking reported within the last 10 years"
Description: "RISK_SMOKER_LAST_10_YEARS = true: the patient smoked at some time during the 10 years before the index stroke episode. This does not specify current or former smoking status."
Usage: #example
* subject = Reference(ExampleRESQPatient)
* encounter = Reference(ExampleStrokeEncounter)
* clinicalStatus = ConditionClinicalCS#active "Active"
* code = RiskFactorCS#smoking-last-10-years "Smoking within the last 10 years"

Instance: ExampleSmokingLast10YearsFalse
InstanceOf: StrokeRiskFactorConditionProfile
Title: "No smoking reported within the last 10 years"
Description: "RISK_SMOKER_LAST_10_YEARS = false: no smoking during the 10 years before the index stroke episode, represented by the same risk factor code with inactive clinicalStatus. This does not classify lifetime smoking status."
Usage: #example
* subject = Reference(ExampleRESQPatient)
* encounter = Reference(ExampleStrokeEncounter)
* clinicalStatus = ConditionClinicalCS#inactive "Inactive"
* code = RiskFactorCS#smoking-last-10-years "Smoking within the last 10 years"

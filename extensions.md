# Extensions - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

# Extensions

Extensions carry registry-specific semantics that do not fit cleanly into a standard FHIR R5 element or that are already emitted by the source builders.

| | | |
| :--- | :--- | :--- |
| [Gender represented with SNOMED CT](StructureDefinition-gender-snomed-ext.md) | `Patient` | Represents sex/gender as a SNOMED CT CodeableConcept. |
| [First hospital for the stroke episode](StructureDefinition-first-hospital-ext.md) | `Encounter` | Indicates whether the encounter corresponds to the first hospital attended. |
| [EMS prenotification](StructureDefinition-ems-prenotification-ext.md) | `Encounter` | Records whether EMS prenotified the receiving hospital. |
| [Required post-acute care](StructureDefinition-required-post-acute-care-ext.md) | `Encounter`,`Observation`,`MedicationAdministration` | Marks post-acute-care relevance or requirement. |
| [Post-acute care required](StructureDefinition-post-acute-care-required-ext.md) | `Procedure` | Procedure-specific post-acute-care flag preserved from the source builders. |
| [Discharge department or service](StructureDefinition-discharge-department-service-ext.md) | `Encounter` | Captures discharge department/service or facility type. |
| [Discharge facility type](StructureDefinition-discharge-facility-type-ext.md) | `Encounter` | Captures the facility or transfer destination type after discharge. |
| [Initial care intensity](StructureDefinition-initial-care-intensity-ext.md) | `Location` | Captures ICU/stroke unit, monitored bed or standard bed context. |
| [Observation timing context](StructureDefinition-observation-timing-context-ext.md) | `Observation` | Adds timing context such as admission, discharge, prestroke or follow-up. |
| [Procedure timing context](StructureDefinition-procedure-timing-context-ext.md) | `Procedure` | Adds acute/post-acute or screening-window context. |
| [Assessment or medication timing](StructureDefinition-assessment-timing-ext.md) | `MedicationAdministration` | Records timing categories for medication-related assessments. |
| [Ischemic stroke etiology](StructureDefinition-ischemic-stroke-etiology-ext.md) | `Condition` | Captures known ischemic stroke etiology. |
| [Hemorrhagic stroke bleeding reason](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.md) | `Condition` | Captures known bleeding reason. |
| [Wake-up stroke](StructureDefinition-wakeup-stroke-ext.md) | `Condition` | Indicates stroke first noticed after waking. |


# AnaliticsCodes ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: AnaliticsCodes ValueSet 

 
Allowed coded values for AnaliticsCodes 

 **References** 

* [Analytics Observation Profile](StructureDefinition-analitics-observation-profile.md)
* [Fever Observation Profile](StructureDefinition-fever-observation-profile.md)
* [Glucose >= 10 Observation Profile](StructureDefinition-glucose-ge10-observation-profile.md)
* [Highest Hyperglycemia Value Observation Profile](StructureDefinition-highest-hyperglycemia-value-observation-profile.md)
* [Hyperglycemia Observation Profile](StructureDefinition-hyperglycemia-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "analitics-codes-vs",
  "url" : "http://tecnomod-um.org/ValueSet/analitics-codes-vs",
  "version" : "1.0.0",
  "name" : "AnaliticsCodesVS",
  "title" : "AnaliticsCodes ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-01T10:24:12+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for AnaliticsCodes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "33747003",
        "display" : "Glucose measurement, blood (procedure)"
      },
      {
        "code" : "372361000119104",
        "display" : "Low density lipoprotein cholesterol by direct assay (observable entity)"
      },
      {
        "code" : "165581004",
        "display" : "International normalized ratio (observable entity)"
      },
      {
        "code" : "386661006",
        "display" : "Fever (finding)"
      },
      {
        "code" : "80394007",
        "display" : "Hyperglycemia (disorder)"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/analytics-codes-cs",
      "concept" : [{
        "code" : "ge10",
        "display" : "Glucose > 10 mmol/L"
      },
      {
        "code" : "highest-hyperglycemia-value",
        "display" : "Highest Hyperglycemia Value"
      }]
    },
    {
      "system" : "http://tecnomod-um.org/CodeSystem/timing-metric-codes-cs",
      "concept" : [{
        "code" : "hyperglycemia-day-1",
        "display" : "Hyperglycemia Checks Day 1"
      },
      {
        "code" : "hyperglycemia-day-2",
        "display" : "Hyperglycemia Checks Day 2"
      },
      {
        "code" : "hyperglycemia-day-3",
        "display" : "Hyperglycemia Checks Day 3"
      },
      {
        "code" : "temperature-checks-day-1",
        "display" : "Temperature Checks Day 1"
      },
      {
        "code" : "temperature-checks-day-2",
        "display" : "Temperature Checks Day 2"
      },
      {
        "code" : "temperature-checks-day-3",
        "display" : "Temperature Checks Day 3"
      }]
    }]
  }
}

```

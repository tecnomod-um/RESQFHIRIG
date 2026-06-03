# Specific Finding Value CodeableConcept ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: Specific Finding Value CodeableConcept ValueSet 

 
Allowed coded values for specific finding observations. 

 **References** 

* [Specific Finding Observation Profile](StructureDefinition-specific-finding-observation-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "specific-finding-value-codeableconcept-vs",
  "url" : "http://tecnomod-um.org/ValueSet/specific-finding-value-codeableconcept-vs",
  "version" : "1.0.0",
  "name" : "SpecificFindingValueCodeableConceptVS",
  "title" : "Specific Finding Value CodeableConcept ValueSet",
  "status" : "active",
  "date" : "2026-06-03T14:48:08+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for specific finding observations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://tecnomod-um.org/ValueSet/mtici-score-vs"]
    },
    {
      "valueSet" : ["http://tecnomod-um.org/ValueSet/atrial-fibrillation-or-flutter-vs"]
    }]
  }
}

```

# BodySites ValueSet - RESQ Stroke Registry Implementation Guide v1.0.0

## ValueSet: BodySites ValueSet 

 
Allowed coded values for BodySites 

 **References** 

* [RESQ BodyStructure Profile](StructureDefinition-resq-body-structure-profile.md)
* [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "body-sites-vs",
  "url" : "http://tecnomod-um.org/ValueSet/body-sites-vs",
  "version" : "1.0.0",
  "name" : "BodySitesVS",
  "title" : "BodySites ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T14:50:23+00:00",
  "publisher" : "Tecnomod / Universidad de Murcia",
  "contact" : [{
    "name" : "Tecnomod / Universidad de Murcia",
    "telecom" : [{
      "system" : "url",
      "value" : "http://tecnomod-um.org"
    }]
  }],
  "description" : "Allowed coded values for BodySites",
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
        "code" : "60176003",
        "display" : "Structure of anterior cerebral artery (body structure)"
      },
      {
        "code" : "86117002",
        "display" : "Internal carotid artery structure (body structure)"
      },
      {
        "code" : "59011009",
        "display" : "Structure of basilar artery (body structure)"
      },
      {
        "code" : "69105007",
        "display" : "Carotid artery structure (body structure)"
      },
      {
        "code" : "85234005",
        "display" : "Structure of vertebral artery (body structure)"
      },
      {
        "code" : "414722000",
        "display" : "Structure of middle cerebral artery M1 segment (body structure)"
      },
      {
        "code" : "414723005",
        "display" : "Structure of middle cerebral artery M2 segment (body structure)"
      },
      {
        "code" : "414724004",
        "display" : "Structure of middle cerebral artery M3 segment (body structure)"
      },
      {
        "code" : "415144009",
        "display" : "Structure of posterior cerebral artery P1 segment (body structure)"
      },
      {
        "code" : "415145005",
        "display" : "Structure of posterior cerebral artery P2 segment (body structure)"
      },
      {
        "code" : "119238007",
        "display" : "Brain stem part (body structure)"
      },
      {
        "code" : "87791003",
        "display" : "Cortex of bone structure (body structure)"
      },
      {
        "code" : "81737006",
        "display" : "Structure of lacunar ligament (body structure)"
      },
      {
        "code" : "21031007",
        "display" : "Infratentorial brain structure (body structure)"
      },
      {
        "code" : "222036002",
        "display" : "Supratentorial brain structure (body structure)"
      },
      {
        "code" : "35951006",
        "display" : "Subarachnoid space structure (body structure)"
      },
      {
        "code" : "180955002",
        "display" : "Structure of intraventricular meninges of brain (body structure)"
      }]
    }]
  }
}

```

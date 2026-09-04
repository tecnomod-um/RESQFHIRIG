# OrganizationExample - RESQ Stroke Registry Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationExample**

## Example Organization: OrganizationExample

Profile: [Stroke Registry Organization Profile](StructureDefinition-stroke-registry-organization-profile.md)

**identifier**: `https://stroke.qualityregistry.org`/organization-001

**active**: true

**name**: Example Healthcare Organization



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationExample",
  "meta" : {
    "profile" : ["http://qualityregistry.org/StructureDefinition/stroke-registry-organization-profile"]
  },
  "identifier" : [{
    "system" : "https://stroke.qualityregistry.org",
    "value" : "organization-001"
  }],
  "active" : true,
  "name" : "Example Healthcare Organization"
}

```

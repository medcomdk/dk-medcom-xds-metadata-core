# Metadata for CDA Document

This implementation guide includes a core profile of the DocumentReference resource. The intension of this IG is to gather all general constraints in regards to CDA-metadata. Therefore several

## Maping from XDS metadata to FHIR Document Reference resource

The following mapping origins from [HL7's mapping between XDS metadata to FHIR DocumentReference resource](https://www.hl7.org/fhir/documentreference-mappings.html#xds). The list of ValueSets is added. These restrictions are also defined in the profile, which can be found under the tab 'Artifacts'. 

HomeCommunityId is not included in the mapping, why the [extension MedCom XDS HomeCommunityID](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata-core/StructureDefinition-medcom-xds-homecommunityid-extension.html). The extension can be found under the tab 'Artifacts' and is included in the profile CoreDocumentReference

| **DocumentReference element** | **XDS-Metadata** | **ValueSet** |
|---|---|---|
|masterIdentifier | DocumentEntry.uniqueId |  |
|identifier | DocumentEntry.entryUUID |  |
|status | DocumentEntry.availabilityStatus |  |
|docStatus |  |  |
|type | DocumentEntry.type | [TypeCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-core-typecode-VS.html) |
|category | DocumentEntry.class | [ClassCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/CodeSystem-MedCom-ihe-classcode-CS.html) |
|subject | DocumentEntry.patientId |  |
|date |  |  |
|author | DocumentEntry.author |  |
|authenticator | DocumentEntry.legalAuthenticator |  |
|custodian |  |  |
|relatesTo | DocumentEntry Associations |  |
|- code | DocumentEntry Associations type |  |
|- target | DocumentEntry Associations reference |  |
|description | DocumentEntry.comments |  |
|securityLabel | DocumentEntry.confidentialityCode |  |
|content |  |  |
|- attachment.contentType | DocumentEntry.mimeType | [ContentType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/CodeSystem-MedCom-ihe-mimeType-CS.html) |
|- attachment.language | DocumentEntry.languageCode | [Language](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/CodeSystem-MedCom-ihe-LanguageCode-CS.html) |
|- attachment.url | DocumentEntry.URI |  |
|- attachment.size | DocumentEntry.size |  |
|- attachment.hash | DocumentEntry.hash |  |
|- attachment.title | DocumentEntry.title |  |
|- attachment.creation | DocumentEntry.creationTime |  |
|- format | DocumentEntry.formatCode | [FormatCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/CodeSystem-MedCom-ihe-formatcode-CS.html) |
|context |  |  |
|- encounter |  |  |
|- event | DocumentEntry.eventCodeList | [EventCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-core-eventcodelist-VS.html) |
|- period | DocumentEntry.serviceStartTime, DocumentEntry.serviceStopTime |  |
|- facilityType | DocumentEntry.healthcareFacilityTypeCode | [FacilityType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-core-HealthcareFacilityTypeCode-VS.html) |
|- practiceSetting | DocumentEntry.practiceSettingCode | [PracticeSetting](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-core-PracticeSettingCode-VS.html) |
|- sourcePatientInfo | DocumentEntry.sourcePatientInfo, DocumentEntry.sourcePatientId |  |
|- related | DocumentEntry.referenceIdList |  |
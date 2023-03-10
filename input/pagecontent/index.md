# Metadata for CDA Appointment Document (APD-DK)

This implementation guide includes...

## Maping from XDS metadata to FHIR Document Reference resource

The following mapping origins from [HL7's mapping between XDS metadata to FHIR DocumentReference resource](https://www.hl7.org/fhir/documentreference-mappings.html#xds). The list of ValueSets is added. These restrictions are also defined in the profile, which can be found under the tab 'Artifacts'.

| **DocumentReference element** | **XDS-Metadata** | **ValueSet** |
|---|---|---|
|masterIdentifier | DocumentEntry.uniqueId |  |
|identifier | DocumentEntry.entryUUID |  |
|status | DocumentEntry.availabilityStatus |  |
|docStatus |  |  |
|type | DocumentEntry.type | [TypeCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-apd-dk-ihe-typecode-vs.html) |
|category | DocumentEntry.class | [ClassCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-classcode-VS.html) |
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
|- attachment.contentType | DocumentEntry.mimeType | [ContentType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-languagecode-VS.html) |
|- attachment.language | DocumentEntry.languageCode | [MimeType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-mimetype-VS.html) |
|- attachment.url | DocumentEntry.URI |  |
|- attachment.size | DocumentEntry.size |  |
|- attachment.hash | DocumentEntry.hash |  |
|- attachment.title | DocumentEntry.title |  |
|- attachment.creation | DocumentEntry.creationTime |  |
|- format | DocumentEntry.formatCode | [FormatCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-formatcode-VS.html) |
|context |  |  |
|- encounter |  |  |
|- event | DocumentEntry.eventCodeList | [EventCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-apd-dk-ihe-eventcodelist-vs.html) |
|- period | DocumentEntry.serviceStartTime, DocumentEntry.serviceStopTime |  |
|- facilityType | DocumentEntry.healthcareFacilityTypeCode | [FacilityType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-HealthcareFacilityTypeCode-VS.html) |
|- practiceSetting | DocumentEntry.practiceSettingCode | [PracticeSetting](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-PracticeSettingCode-VS.html) |
|- sourcePatientInfo | DocumentEntry.sourcePatientInfo, DocumentEntry.sourcePatientId |  |
|- related | DocumentEntry.referenceIdList |  |
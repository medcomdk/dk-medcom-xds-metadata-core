Profile: APDDKDocumentReference
Parent: DocumentReference
Id: apd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Appointment (APD-DK) document."
* status MS
// TypeCode
* type 1.. MS
* type ^short = "TypeCode for APD-DK..."
* type.coding.system 1.. MS
* type.coding.system from $TypeCode (required) 
* type.coding.code 1.. MS
// ClassCode
* category 1..1 MS
* category.coding.system from $ClassCode (required)
* category.coding.code 1.. MS
* category.coding.system 1.. MS
//* category.coding.display 1.. MS - 
* category ^short = "..."
//* category ^definition = "HVIS DEFINITION ØNSKES, er dette syntaksen."
* content MS
* content.attachment.contentType 1.. MS
* content.attachment.contentType from $ContentType (required)
* content.attachment.language 1.. MS
* content.attachment.language from $Language (required)
* content.format 1.. MS
* content.format from $FormatCode (required)
* context 1.. MS
* context.event 1..1 MS 
* context.event.coding.code 1.. MS
* context.event.coding.system 1.. MS
* context.event.coding.system from $EventCode (required)
* context.facilityType 1.. MS
* context.facilityType.coding.code 1.. MS
* context.facilityType.coding.system 1.. MS
* context.facilityType.coding.system from $FacilityType (required)
* context.practiceSetting 1.. MS
* context.practiceSetting.coding.code 1.. MS
* context.practiceSetting.coding.system 1.. MS
* context.practiceSetting.coding.system from $FacilityType (required)


/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/
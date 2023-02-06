Profile: APDDKDocumentReference
Parent: DocumentReference
Id: apd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Appointment (APD-DK) document."
* type.coding ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #closed
* type.coding contains
  TypeCode 1..1 and 
  FormatCode 1..1
* type.coding[TypeCode]
  * ^short = "TypeCode for APD-DK"
  * system 1..
  * system from APD-DK-IHE-TypeCode-DE-VS (required) // Virker ikke, da der skal oprettes henvisninger til det pågældende ValueSet. Fx: * priority from $RequestPriority fra Alias.fsh.
  * code 1..
* type.coding[FormatCode] 
  * ^short = "FormatCode for APD-DK"
  * system 1..
  * system from APD_DK_IHE_FormatCode_VS (required)
  * code 1..
  * obeys apd-dk-rule-1
* category 1..1 
* category ^short = "Describing the class of the "
* category.coding.code 1..
* category.coding.system 1..
* category.coding.system from DK_IHE_ClassCode_VS (required)
* context 1..
* context.event 1..1
* context.event.coding.code 1..
* context.event.coding.system 1..
* context.event.coding.system from APD_DK_IHE_EventCodeLists_VS (required)
* context.facilityType 1..
* context.facilityType.coding.code 1..
* context.facilityType.coding.system 1..
* context.facilityType.coding.system from APD_DK_IHE_HealthcareFacilityTypeCode_VS (required)

Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"

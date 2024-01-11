Profile: XDSPatient
Parent: Patient
Id: xds-patient
Description: "A profile including a patient identifier"
* identifier 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains 
    cpr 0..1 and 
    ecpr 0..1
* identifier[cpr] only DkCoreCprIdentifier
  * ^short = "[DA] cpr-nummer, som det fremgår af CPR registeret"
* identifier[ecpr] only MedComCoreECprIdentifier
* identifier[ecpr] ^short = "Replacement person identifier (E-CPR). This identifier must only be used in cases where a person does not have an official CPR-number."
* identifier[ecpr] MS

Profile: MedComCoreECprIdentifier
Parent: Identifier
Id: medcom-core-ecpr-identifier
Title: "Danish Replacement Person Identifier (E-CPR)"
Description: "A Danish replacement person identifier. This shall only be used when a patient or citizen does not have an official CPR-number."
* use = #temp (exactly)
* system 1..
* system from $MedComCoreECPRValues
* value 1..
* value ^maxLength = 10

Alias: $MedComCoreECPRValues = http://medcomfhir.dk/ig/terminology/ValueSet/medcom-core-ecpr-values


Profile: DkCoreCprIdentifier
Parent: Identifier
Id: dk-core-cpr-identifier
Title: "Danish Central Person Register (CPR) Identifier"
Description: "This structure holds the danish [CPR](https://cpr.dk/) identifier"
* use = #official (exactly)
* system 1..
* system = "urn:oid:1.2.208.176.1.2" (exactly)
* value 1..
  * obeys cpr
  * ^maxLength = 10
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
  * ^constraint.source = "https://cpr.dk/cpr-systemet/opbygning-af-cpr-nummeret/#:~:text=5%20%2D%206%20position%20angiver%20personens,i%20personnummeret%20angiver%20personens%20k%C3%B8n."
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
  * ^constraint.requirements = "Requirement of danish civil registration numbers"
  * ^mustSupport = false

Invariant: cpr
Description: "Requirement of danish civil registration numbers"
Severity: #error
Expression: "value.matches('^((((0[1-9]|1[0-9]|2[0-9]|3[0-1])(01|03|05|07|08|10|12))|((0[1-9]|1[0-9]|2[0-9]|30)(04|06|09|11))|((0[1-9]|1[0-9]|2[0-9])(02)))[0-9]{6})$')"


Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: XDSPatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
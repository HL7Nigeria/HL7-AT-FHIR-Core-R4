// This is a custom profile for the Nigerian Patient, requiring the National Identification Number (NIN).
Profile: NigeriaPatient
Parent: Patient
Description: "A custom profile of the Patient resource for Nigeria, requiring National Identification Number (NIN)."
* name 1..* MS
* identifier 1..* MS // At least one identifier must be present
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #NIN // 'NIN' is a code, so it should be prefixed with #
* identifier.system = "urn:oid:2.16.840.1.113883.4.1" // OID for the Nigerian NIN system
* identifier.value MS // NIN value is mandatory

Instance: NigeriaPatientExample
InstanceOf: NigeriaPatient
Description: "An example of a Nigerian patient with a National Identification Number (NIN)."
* name
  * given[0] = "James"
  * family = "Pond"
* identifier
  * use = #official
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #NIN
    * display = "National Identification Number"
  * system = "urn:oid:2.16.840.1.113883.4.1"
  * value = "1234567890" // Example NIN

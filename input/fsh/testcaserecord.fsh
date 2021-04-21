Instance: test-hiv-patient
InstanceOf: HIVPatient
//Usage: #inline
//* extension[GenderIdentity].valueCodeableConcept = 	http://openhie.org/fhir/CodeSystem/cs-patient-gender-identity#male

* identifier[art].system = "https://basespecs.vn/NamingSystem/ARTIdentifiers"
* identifier[art].value = "00001"
* name[+].text = "John Johnson"

* identifier[art].value = "ARV001"
* identifier[passport].value = "P000001"
* identifier[insurance].value = "NI000001"
* address[Temporary].line = "31 Tôn Thất Thiệp, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 70000"
* address[Permanent].line = "3c Ly Thuong Kiet Street, Phu Thanh Block, Tan Phu Ward"
* extension[Ethnicity].valueCodeableConcept = #2037-0
* birthDate = "1970"


Instance: test-hiv-condition
InstanceOf: HIVCondition
Usage: #inline
* recordedDate = "2020-11-12"
* subject = Reference (test-hiv-patient)


/*
Instance: test-hiv-condition
InstanceOf: CD4Observation
Usage: #inline

Instance: test-hiv-condition
InstanceOf: ViralLoad
Usage: #inline

Instance: test-hiv-condition
InstanceOf: PregnancyStatus
Usage: #inline

*/




Instance: examplebundle
InstanceOf: Bundle
Usage: #example

* type = #collection
//* entry[+].resource = test-hiv-patient
* entry[+].resource = test-hiv-condition

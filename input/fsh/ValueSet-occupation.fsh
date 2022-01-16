/*Alias: SCT = http://snomed.info/sct

Instance: vs-hiv-occupation
InstanceOf: ValueSet
Description: "Occupation Value Set"
Title: "Occupation Value Set"
Usage: #example
* name = "HIVOccupationCodes"
* status = #draft
* url = "http://openhie.org/fhir/openhie.vn.case-reporting.hiv/ValueSet/vs-hiv-occupation"



* insert VSCodeDef(SCT,310892005,Army personnel,Cán bộ - chiến sỹ thuộc lực lượng vũ trang nhân dân)
// Add Government employee
* insert VSCodeDef(SCT,413327003,Student full time education,Học sinh-sinh viên)
// Add worker
// Add Pupil/student
// Add Freelance
* insert VSCodeDef(SCT,73438004,Out of work,Thất nghiệp)
// Add child
// add Prisoner
* insert VSCodeDef(SCT,106388008,Farmer,Người làm nông nghiệp)

// remove the following?
* insert VSCodeDef(SCT,106538001,Car driver,Lái xe)
* insert VSCodeDef(SCT,106400003,Fishermen,Ngư dân)
* insert VSCodeDef(SCT,106541005,Social worker general,Công nhân)
* insert VSCodeDef(SCT,184119001,Patient occupation unknown,Nghề khác)
* insert VSCodeDef(SCT,449344001,Sex worker,Nghề bán dâm)
* insert VSCodeDef(SCT,159799000,Female prostitute,Nữ bán dâm)
* insert VSCodeDef(SCT,159800001,Male prostitute,Nam bán dâm)
*/

CodeSystem: CSOccupation
Id: cs-hiv-occupation
Title: "CodeSystem Occupation"
Description:  "CodeSystem - Occupation"

* #sex_business "Persons work in services that are susceptible for sex work"
* #driver "Driver"
* #fishman "Fisherman"
* #army "Army personnel"
* #gov_empl "Government employee"
* #worker "Worker"
* #student "Pupil/Student"
* #free_lancer "Free lancer"
* #unemployment "Unemployment"
* #child "Children"
* #prisoner "Prisoner"
* #famer "Farmer"
* #other "Other"

ValueSet: VSOccupation
Id: vs-hiv-occupation
Title: "Occupation Value Set "
Description:  "ValueSet - Occupation"
* include codes from system CSOccupation
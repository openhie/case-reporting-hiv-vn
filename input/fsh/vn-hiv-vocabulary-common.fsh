Alias: CommonLanguage = urn:ietf:bcp:47

Instance: cs-hiv-common
InstanceOf: CodeSystem
Title: "Common code for CS HIV"
Usage: #example
Description:  "CodeSystem - Common code for CS HIV"
* name = "Common code for CS HIV"
* status = #draft
* content = #complete

* insert Code(birthDateOfChild, the child birth day, Ngày sinh của con)

CodeSystem: CSHIVCommon
Id: cs-hiv-common
Title: "Common code for CS HIV"
* #birthDateOfChild "the child birth day" "Ngày sinh của con"

ValueSet: VSCommonDate
Id: vs-common-date
Description: "Define common event date"
* SCT#399445004

ValueSet: VSDiagnosisResults
Title: "Diagnosis Results"
Description: "Diagnosis Results codes"
* ^status = #draft
* SCT#165816005 "HIV Positive"
* SCT#165815009 "HIV Negative"
* SCT#10828004 "Positive"
* SCT#260385009 "Negative"

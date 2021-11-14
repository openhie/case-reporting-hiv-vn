Alias: CommonLanguage = urn:ietf:bcp:47

Instance: cs-hiv-common
InstanceOf: CodeSystem
Title: "Common code for CS HIV"
Usage: #example
Description:  "CodeSystem - Common code for CS HIV"
* name = "Common code for CS HIV"
* title = "Common code for CS HIV"
* status = #draft
* content = #complete

* insert Code(birthDateOfChild, the child birth day, Ngày sinh của con)

CodeSystem: CSHIVCommon
Id: cs-hiv-common
Title: "Common code for CS HIV"
* #birthDateOfChild "the child birth day" "Ngày sinh của con"

ValueSet: VSCommonDate
Id: vs-common-date
Title: "Common event date"
Description: "Define common event date"
* SCT#399445004

// todo: Translation
Instance: vs-diagnosis-results
InstanceOf: ValueSet
Title: "Diagnosis Results"
Usage: #definition
Description:  "ValueSet - Diagnosis Results"
* name = "VSDiagnosisResults"
* title = "VSDiagnosisResults"
* status = #active
* insert VSCodeDef(SCT, 165816005, HIV Positive, Dương tính HIV)
* insert VSCodeDef(SCT, 165815009, HIV Negative, Âm tính HIV)
* insert VSCodeDef(SCT, 10828004, Positive, Dương tính)
* insert VSCodeDef(SCT, 260385009, Negative, Âm tính)





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

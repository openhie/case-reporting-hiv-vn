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


CodeSystem: CustomLanguage
Id: cd-custom-language
Title: "Custom language"
Description: "Additional language for urn:ietf:bcp:47"
* #vi-VN "VietNam" "VietNam"


ValueSet: VSLanguage
Title: "Language"
Description:  "Define valueset to add Vietnamese"
* include codes from system CommonLanguage
* CustomLanguage#vi-VN

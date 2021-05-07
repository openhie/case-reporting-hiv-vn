
Instance: pregnancy-status
InstanceOf: CodeSystem
Title: "HIV Pregnancy Status"
Usage: #example
Description:  "CodeSystem - HIV Pregnancy Status"
* name = "VN Snomed CT"
* status = #draft
* content = #complete
* insert Code(1, Unborn, Chưa sinh)
* insert Code(2, Born, Đã sinh)
* insert Code(3, Miscarried, Bị xảy thai)
* insert Code(4, Abortion, Đã phá thai)
* insert Code(5, Unknown, Không rõ)

CodeSystem:  HIVPregnancyStatus
Id: pregnancy-status
Title: "HIV Pregnancy Status"
Description: "CodeSystem - Pregnancy Status"
* #1 "Unborn" "Unborn"
* #2 "Born" "Born"
* #3 "Miscarried" "Miscarried"
* #4 "Abortion" "Abortion"
* #5 "Unknown" "Unknown"


ValueSet: HIVPregnancyStatus
Id: vs-hiv-pregnancy-status
Title: "HIV Pregnancy Status"
Description:  "Valueset - Pregnancy Status"
* include codes from system HIVPregnancyStatus

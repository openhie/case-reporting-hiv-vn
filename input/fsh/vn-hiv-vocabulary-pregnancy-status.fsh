
Instance: cs-pregnancy-status
InstanceOf: CodeSystem
Title: "HIV Pregnancy Status"
Usage: #example
Description:  "CodeSystem - HIV Pregnancy Status"
* name = "HIV Pregnancy Status"
* status = #draft
* content = #complete
* insert Code(unborn, Unborn, Chưa sinh)
* insert Code(born, Born, Đã sinh)
* insert Code(miscarried, Miscarried, Bị xảy thai)
* insert Code(abortion, Abortion, Đã phá thai)
* insert Code(unknown, Unknown, Không rõ)

CodeSystem:  CSHIVPregnancyStatus
Id: cs-pregnancy-status
Title: "HIV Pregnancy Status"
Description: "CodeSystem - Pregnancy Status"
* #1 "Unborn" "Unborn"
* #2 "Born" "Born"
* #3 "Miscarried" "Miscarried"
* #4 "Abortion" "Abortion"
* #5 "Unknown" "Unknown"


ValueSet: VSHIVPregnancyStatus
Id: vs-hiv-pregnancy-status
Title: "HIV Pregnancy Status"
Description:  "Valueset - Pregnancy Status"
* include codes from system CSHIVPregnancyStatus

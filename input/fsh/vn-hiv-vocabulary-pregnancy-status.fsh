// todo: Translation
Instance: cs-pregnancy-outcome
InstanceOf: CodeSystem
Title: "HIV Pregnancy Outcome"
Usage: #example
Description:  "CodeSystem - HIV Pregnancy Outcome"
* name = "HIVPregnancyOutcome"
* title = "HIV Pregnancy Outcome"
* status = #draft
* content = #complete
* insert Code(unborn, Unborn, Chưa sinh)
* insert Code(born, Born, Đã sinh)
* insert Code(miscarried, Miscarried, Bị xảy thai)
* insert Code(abortion, Abortion, Đã phá thai)
* insert Code(unknown, Unknown, Không rõ)

CodeSystem:  CSHIVPregnancyOutcome
Id: cs-pregnancy-outcome
Title: "HIV Pregnancy Outcome"
Description: "CodeSystem - Pregnancy Outcome"
* #1 "unborn" "Unborn"
* #2 "born" "Born"
* #3 "miscarried" "Miscarried"
* #4 "abortion" "Abortion"
* #5 "unknown" "Unknown"


ValueSet: VSHIVPregnancyOutcome
Id: vs-hiv-pregnancy-outcome
Title: "HIV Pregnancy outcome"
Description:  "Valueset - Pregnancy Outcome"
* include codes from system CSHIVPregnancyOutcome

Instance: cs-arv-treatment-status
InstanceOf: CodeSystem
Title: "ARV Treatment Status"
Usage: #example
Description:  "CodeSystem - ARV Treatment Status"
* name = "ARV Treatment Status"
* title = "ARV Treatment Status"
* status = #draft
* content = #complete

* insert Code(yes, Yes, Có)
* insert Code(no, No, Không)
* insert Code(unknown, Unknown, Không rõ)

CodeSystem: CSARVTreatmentStatus
Id: cs-arv-treatment-status
Title: "ARV Treatment Status"
* #yes "Yes" "Yes"
* #no "No" "No"
* #unknown "Unknown" "Unknown"

ValueSet: ARVTreatmentStatus
Id: vs-arv-treatment-status
Title: "Arv treatment Status"
Description:  "Valueset - ARV treatment Status"
* include codes from system CSARVTreatmentStatus


ValueSet: VSDateComponent
Title: "Date component of pregnancy"
Description:  "Date component of pregnancy associated with HIV case"
* SCT#248957007 "Kỳ kinh nguyệt cuối"
* SCT#31676001 "Ngày xét nghiệm HIV của con"
* CSHIVCommon#birthDateOfChild "Ngày sinh của con"


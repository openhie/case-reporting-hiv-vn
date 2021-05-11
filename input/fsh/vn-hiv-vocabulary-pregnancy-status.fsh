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

Instance: cs-arv-treatment-status
InstanceOf: CodeSystem
Title: "ARV Treatment Status"
Usage: #example
Description:  "CodeSystem - ARV Treatment Status"
* name = "ARV Treatment Status"
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


CodeSystem:  CSChiDinh
Id: cs-viralload-chidinh
Title: "Chi dinh"
Description: "CodeSystem - Chi dinh"
* #1 "tại thời điểm 6 tháng sau ARV" "At 6 months after ARV"
* #2 "tại thời điểm 12 tháng sau ARV" "At 12 months months after ARV"
* #3 "định kỳ 12 tháng" "Every 12 "
* #4 "nghi ngờ thất bại điều trị" "Suspect treatment failure"
* #5 "phụ nữ mang thai/cho con bú" "pregnant / lactating women"

ValueSet: VSChiDinh
Id: vs-viralload-chidinh
Title: "Chi dinh"
Description:  "Valueset - cs-viralload-chidinh"
* include codes from system CSChiDinh


CodeSystem: CSViralLoadGroup
Id: cs-viralload-group
Title: "Viral Load group"
Description: "Codesystem - Viral Load group"
* #1 "0-200" "From 0 to 200"
* #2 "20-350" "From 200 to 350"
* #3 "350-500" "From 350 to 500"
* #4 "500-1000" "From 500 to 1000"
* #5 "1000-" "Large than 100"

ValueSet: VSViralLoadGroup
Id: vs-viralload-group
Title: "Viral Load group"
Description:  "Valueset - Viral Load group"
* include codes from system CSViralLoadGroup
CodeSystem:  CSIndications
Id: cs-viralload-indications
Title: "Viralload Indications"
Description: "CodeSystem - Indications"
* #1  "At 6 months after ARV" "At 6 months after ARV"
* #2  "At 12 months months after ARV"  "At 12 months months after ARV"
* #3  "Every 12 "  "Every 12 "
* #4  "Suspect treatment failure"  "Suspect treatment failure"
* #5  "pregnant / lactating women" "pregnant / lactating women"

/* todo: Translation
* #1 "tại thời điểm 6 tháng sau ARV" "At 6 months after ARV"
* #2 "tại thời điểm 12 tháng sau ARV" "At 12 months months after ARV"
* #3 "định kỳ 12 tháng" "Every 12 "
* #4 "nghi ngờ thất bại điều trị" "Suspect treatment failure"
* #5 "phụ nữ mang thai/cho con bú" "pregnant / lactating women"
*/

ValueSet: VSIndications
Id: cs-viralload-indications
Title: "Viralload Indications"
Description:  "Valueset - cs-viralload-indications"
* include codes from system CSIndications

CodeSystem: CSViralLoadGroup
Id: cs-viralload-group
Title: "Viral Load group"
Description: "Codesystem - Viral Load group"
* #1 "0-200" "From 0 to 200"
* #2 "200-1000" "From 200 to 1000"
* #3 "1000-" "Large than 100"

ValueSet: VSViralLoadGroup
Id: vs-viralload-group
Title: "Viral Load group"
Description:  "Valueset - Viral Load group"
* include codes from system CSViralLoadGroup
// todo: Translation
Instance: CSRecencyResult
InstanceOf: CodeSystem
Title: "Recency result"
Usage: #example
Description:  "CodeSystem - Recency result"
* name = "RecencyRITAresult"
* title = "Recency RITA result"
* status = #draft
* content = #complete
* insert Code(newInfection, New Infection, Mới nhiễm )
* insert Code(infection, Infection, Nhiễm lâu)
* insert Code(no, Not infection, Không nhiễm )

/*
CodeSystem: cs-recency-result
Title: "Recency RITA result"
Description: "CodeSystem - Recency result"
* #1 "newInfection" "New Infection"
* #2 "infection" "Infection"
* #3 "noInfection" "Not Infection"
*/

ValueSet: VSRecencyRITAResult
Id: vs-recency-rita
Title: "Recency RITA result"
Description:  "Valueset - Recency RITA result"
* CSRecencyResult#newInfection
* CSRecencyResult#infection

ValueSet: VSRecencyRTRIResult
Id: vs-recency-rtri
Title: "Recency RITA result"
Description:  "Valueset - Recency RITI result"
* include codes from system CSRecencyResult
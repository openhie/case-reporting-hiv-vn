// todo: Translation
Instance: cs-recency-result
InstanceOf: CodeSystem
Title: "Recency result"
Usage: #example
Description:  "CodeSystem - Recency result"
* name = "Recency RITA result"
* status = #draft
* content = #complete
* insert Code(newInfection, New Infection, Mới nhiễm )
* insert Code(infection, Infection, Nhiễm lâu)
* insert Code(no, Not infection, Không nhiễm )

CodeSystem: CSRecencyResult
Id: cs-recency-result
Title: "Recency RITA result"
Description: "CodeSystem - Pregnancy Status"
* #newInfection "newInfection" "New Infection"
* #infection "infection" "Infection"
* #noinfection "notInfection" "Not Infection"


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
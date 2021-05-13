Alias: SCT = http://snomed.info/sct


RuleSet: Code(code,display,vn)
* concept[+].code = #{code}
* concept[=].display = "{display}"
* concept[=].designation[+].language = #vi-VN
* concept[=].designation[=].value = "{vn}"

RuleSet: CodeDef(code,display,definition,vn)
* concept[+].code = #{code}
* concept[=].display = "{display}"
* concept[=].definition = "{definition}"
* concept[=].designation[+].language = #vi-VN
* concept[=].designation[=].value = "{vn}"



Instance: PregnancyOutcomeCodes
InstanceOf: ValueSet
Description: "Pregnancy Outcome Codes"
Title: "Pregnancy Outcome Codes"
Usage: #inline
* name = "PregnancyOutcomeCodes"
* status = #draft


Instance: BirthDefects
InstanceOf: ValueSet
Description: "Birth Defects"
Title: "Pregnancy Outcome Codes"
Usage: #inline
* name = "BirthDefects"
* status = #draft


Instance: ChildHIVStatus
InstanceOf: ValueSet
Description: "Child HIV Status"
Title: "Child HIV Status"
Usage: #inline
* name = "ChildHIVStatus"
* status = #draft



// Add content from here on

Instance: cs-occupation
InstanceOf: CodeSystem
Title: "Occupation"
Usage: #example
Description:  "CodeSystem - occupations"
* name = "Occupations"
* status = #draft
* content = #complete
* insert Code(10,Service workers exploited for sex work,Nhân viên cơ sở kinh doanh dịch vụ dễ bị lợi dụng để hoạt động mại dâm)
* insert Code(4,Drivers,Lái xe)
* insert Code(14,Fishermen,Ngư dân)
* insert Code(13,Agricultural workers,Người làm nông nghiệp)
* insert Code(6,Intellectual,Trí thức)
* insert Code(2,Workers,Công nhân)
* insert Code(3,Officers and soldiers,Cán bộ\, chiến sỹ thuộc lực lượng vũ trang nhân dân)
* insert Code(5,Public servants or workers with labor contracts,Công chức\, viên chức\, người lao động có hợp đồng lao động theo quy định của pháp luật)
* insert Code(9,Other occupation,Nghề khác)
* insert Code(7,Students,Học sinh\, sinh viên)
* insert Code(12,Children,Trẻ em)
* insert Code(11,Children under 5,Trẻ em dưới 5 tuổi)
* insert Code(16,Workers without labor contract,Lao động tự do)
* insert Code(8,Out of work,Thất nghiệp)
* insert Code(15,Prisoners,Phạm nhân)
* insert Code(17,Free,Tự do)


Instance: cs-gender
InstanceOf: CodeSystem
Title: "Gender"
Usage: #example
Description:  "CodeSystem - gender"
* name = "Gender"
* status = #draft
* content = #complete
* insert CodeDef(male,Male,Client identifies as male,Nam)
* insert CodeDef(female,Female,Client identifies as female,Nữ)
* insert CodeDef(other,other,Client has another gender identity,Khác)
* insert CodeDef(unknown,unknown,Gender is unknown,Không rõ)



ValueSet: VSSymptoms
Title: "Symptoms"
Description:  "Symptoms associated with HIV case"
* SCT#248427009 "Sốt kéo dài"


CodeSystem:  CSPatientGender
Id: cs-patient-gender
Title: "Patient Gender"
Description: "The genders for patients"
* #male "Male" "Client identifies as female"
* #female "Female" "Client identifies as male"
* #transgender "Transgender" "Client identifies as transgender"
* #non-binary "Non-binary" "Client identifies in a non-binary way"

ValueSet: PatientGender
Id: vs-patient-gender
Title: "Patient Gender"
Description:  "Valueset - patient genders"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSPatientGender 


CodeSystem:  CSPatientGenderIdentity
Id: cs-patient-gender-identity
Title: "Patient Gender Identity"
Description: "A list of genders that the patient may identify with"
* #transgender-to-female "Transgender female" "Client identifies as transgender male-to-female"
* #transgender-to-male "Transgender male" "Client identifies as transgender female-to-male"
* #non-binary "Non-binary" "Client identifies with neither/both female and male"
* #male "Male" "Client identifies as male"
* #female "Female" "Client identifies as female"
* #other "Other" "Other gender identity"
* #not-disclosed "Does not wish to disclose" "Client does not wish to disclose gender identity"


ValueSet: PatientGenderIdentity
Id: vs-patient-gender-identity
Title: "Patient Gender Identity"
Description:  "Valueset - patient gender identities"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSPatientGenderIdentity



CodeSystem:  CSPatientCommunicationPreferences
Id: cs-patient-communication-preferences
Title: "Patient Communication Preferences"
Description: "The way the patient prefers to be contacted"
* #text-message "SMS or  Text message" "The client would like to receive communications via Text Message/SMS"
* #voice-call "Voice Call" "Client would like to receive communications via Voice Calls"


ValueSet: PatientCommunicationPreferences
Id: vs-patient-communication-preferences
Title: "Patient Communication Preferences"
Description:  "Valueset - Patient Communication Preferences"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSPatientCommunicationPreferences


CodeSystem: CSTypeOfContact
Id: type-of-contact
Title: "Type of contact or relationship"
Description: "Type of contact or relationship"
* #child "Biological child" "Client is the biological child of the person that referred the client for family services"
* #drug-injecting-partner "Drug injecting partner" "Client is a drug injecting partner of the person that referred the client for partner services"
* #sexual-partner "Sexual partner" "Client is a sexual partner of the person that referred the client for partner services"
* #social-contact "Social contact" "Client is a social contact of the person that referred the client for social-network services"

ValueSet: TypeOfContact
Id: vs-type-of-contact
Title: "Type of contact or relationship"
Description:  "Type of contact or relationship"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSTypeOfContact

// *************


ValueSet: HIVRapidTestResults
Title: "HIVRapidTestResults"
Description: "HIV rapid test result codes"
* ^status = #draft
* $LOINC#LA11882-0 "Detected"
* $LOINC#LA11883-8 "Not detected"
* $LOINC#LA11885-3 "Equivocal"
* $LOINC#LA9663-1 "Inconclusive"

// *************


CodeSystem:  CSHIVOccupations
Id: cs-hiv-occupations
Title: "Occupations relevant for HIV"
Description: "CodeSystem Occupations for HIV"
* #1 "Sex workers" "Employees of facilities providing services that are vulnerable to be abused to engage in prostitution"
* #2 "Drivers" "Drivers"
* #3 "Fishermen" "Fishermen"
* #4 "Agricultural workers" "Agricultural workers"
* #5 "Workers" "Workers"
* #6 "Officers and soldiers" "Officers and soldiers"
* #7 "Public servants or workers with labor contracts" "Public servants, officers, or workers with labor contracts under labor laws"
* #8 "Students" "Pupils, students"
* #9 "Children" "Children"
* #10 "Workers without labor contract" "Workers without labor contract"
* #11 "Out of work" "Out of work"
* #12 "Prisoners" "Prisoners"


ValueSet: HIVOccupations
Id: vs-hiv-occupations
Title: "Occupations relevant for HIV"
Description:  "Valueset - Occupations relevant for HIV"
* include codes from system CSHIVOccupations 

// *************


CodeSystem:  CSHIVPopulation
Id: cs-hiv-population
Title: "Population groups"
Description: "CodeSystem - Population groups - Subjects to be tested for HIV"
* #1 "Injection drug users" "Injecting drug users" 
* #2 "FSW" "Female sex workers" 
* #3 "Pregnant women" "Pregnant women" 
* #4 "Blood donors" "Blood donors" 
* #5 "TB patients" "TB patients" 
* #6 "People with STDs" "People with sexually transmitted diseases" 
* #7 "Young recruits" "Young recruits for military service" 
* #8 "MSM" "Men who have sex with men" 
* #9 "Others" "Others" 


ValueSet: VSHIVPopulation
Id: vs-hiv-population
Title: "Occupations relevant for HIV"
Description:  "Valueset - Occupations relevant for HIV"
* include codes from system CSHIVPopulation

// *************


CodeSystem:  CSHIVRiskBehavior
Id: cs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "CodeSystem - Behavior associated with risk of HIV transmission"
* #1 "Drug injection" "Drug injection"
* #2 "Sex workers" "Sexual relationship with sex workers or with sex buyers/clients (for money or drug)"
* #3 "MSM" "Men who have sex with men" 
* #4 "Multiple Sex Partners" "Multiple Sex Partners (NOT for money or drugs)"
* #5 "Others" "Other risks to oneself" 

ValueSet: VSHIVRiskBehavior
Id: vs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "ValueSet - Behavior associated with risk of HIV transmission"
* include codes from system CSHIVRiskBehavior

// *************


CodeSystem:  CSHIVTransmissionRoute
Id: cs-hiv-transmission-route
Title: "HIV Transmission Route"
Description: "CodeSystem - Route of HIV transmission"
* #1 "Blood born" "Blood born"
* #2 "Sexual Relationship" "Sexual Relationship"
* #3 "Mother to child" "Mother to child"
* #4 "Unidentified" "Unidentified"


ValueSet: VSHIVTransmissionRoute
Id: vs-hiv-transmission-route
Title: "HIV Transmission Route"
Description:  "Valueset - Route of HIV transmission"
* include codes from system CSHIVTransmissionRoute






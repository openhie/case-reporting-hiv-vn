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
Id: vs-hiv-rapidtestresults
Title: "HIVRapidTestResults"
Description: "HIV rapid test result codes"
* ^status = #draft

* $LOINC#LA15255-5 "Có phản ứng"
* $LOINC#LA15256-3 "Khong phản ứng"
* $LOINC#LA11884-6 "Chưa xác định"
* $LOINC#LA15841-2 "Không hợp lệ"

// *************

CodeSystem:  CSHIVRiskPopulation
Id: cs-hiv-population
Title: "Population groups"
Description: "CodeSystem - Population groups - Subjects to be tested for HIV"
* #1 "Người tiêm chích ma túy" "Injecting drug users"
* #2 "Nữ bán dâm" "Female sex workers"
* #3 "Mang thai" "Pregnant women"
* #4 "Người hiến máu tình nguyện" "Blood donors"
* #5 "Bệnh nhân lao" "TB patients"
* #6 "Người mắc nhiễm trùng lây qua đường tình dục" "People with sexually transmitted diseases"
* #7 "Thanh niên khám tuyển nghĩa vụ quân sự" "Young recruits for military service"
* #8 "Quan hệ tình dục đồng giới nam" "Men who have sex with men"
* #9 "Không rõ" "Unidentified"


ValueSet: HIVRiskPopulation
Id: vs-hiv-population
Title: "Risk Population relevant for HIV"
Description:  "Valueset - Risk population relevant for HIV"
* include codes from system CSHIVRiskPopulation

// *************

CodeSystem:  CSHIVRiskBehavior
Id: cs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "CodeSystem - Behavior associated with risk of HIV transmission"
* #1 "Tiêm chích ma túy" "Drug injection"
* #2 "Quan hệ tình dục với người bán dâm hoặc mua dâm " "Sexual relationship with sex workers or with sex buyers/clients (for money or drug)"
* #3 "Quan hệ tình dục đồng giới nam" "Men who have sex with men"
* #4 "Quan hệ với vợ/chồng/bạn tình là người nhiễm HIV" "Having sex with spouse/partners who are HIV infected"
* #5 "Quan hệ tình dục với nhiều người (không vì tiền hay ma túy)" "Having sex with multiple partners (not for money or drug)"
* #6 "Lây nhiễm từ mẹ sang con" "Mother to child transmission"
* #7 "Nguy cơ khác của bản thân" "Other risk behaviors"
* #8 "Không rõ" "Unidentified"


ValueSet: HIVRiskBehavior
Id: vs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "ValueSet - Behavior associated with risk of HIV transmission"
* include codes from system CSHIVRiskBehavior

// *************


CodeSystem:  CSHIVTransmissionRoute
Id: cs-hiv-transmission-route
Title: "HIV Transmission Route"
Description: "CodeSystem - Route of HIV transmission"

* #312425004 "Lây qua đường máu"
* #226034001 "Lây qua đường tiêm chích ma túy" "Drug injection"
* #250373003 "Truyền máu" "Blood transfusion finding"
* #53348004 "Tai nạn nghề nghiệp" "Accidental "
* #417564009 "Lây qua đường tình dục" "Sexual Transmission"
* #38628009 "Tình dục đồng giới" "Homosexual (finding)"
* #20430005 "Tình dục khác giới" "Heterosexual (finding)"
* #438998000 "Mẹ truyền sang con" "Mother to Child Transmission"
* #69910005 "Không rõ" "Unidentified"

ValueSet: HIVTransmissionRoute
Id: vs-hiv-transmission-route
Title: "HIV Transmission Route"
Description:  "Valueset - Route of HIV transmission"
* include codes from system CSHIVTransmissionRoute






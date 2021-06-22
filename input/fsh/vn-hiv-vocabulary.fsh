Instance: NationalPatientIdentifier9Digit
InstanceOf: NamingSystem
// * url = 
* status = #active
* kind = #identifier
* name = "NationalPatientIdentifier9Digit"
* date = "2021-01-01"
* type = http://terminology.hl7.org/CodeSystem/v2-0203#NI
* jurisdiction = urn:iso:std:iso:3166#VN
* uniqueId[+].type = #uri
* uniqueId[=].value = "https://basespecs.vn/NamingSystem/NationalID9"
* uniqueId[=].preferred = true



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


Instance: vs-hiv-sympthoms
InstanceOf: ValueSet
Description: "Symptoms Value Set"
Title: "Symptoms Value Set"
Usage: #example
* name = "HIVSymptomsCode"
* status = #draft
* url = "http://openhie.org/fhir/openhie.vn.case-reporting.hiv/ValueSet/vs-hiv-symptoms"

* insert VSCodeDef(SCT,248427009,Fever symptoms,Sốt)


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

* #pwid "Người tiêm chích ma túy" "Injecting drug users"
* #msm "Quan hệ tình dục đồng giới nam" "Men who have sex with men"
* #sw "" "Sex workers"
* #tg_women "" "Transgender women"
* #partner_plhiv "" "Sexual partner of PLHIV"
* #tg_men "" "Transgender men"
* #child_woman_hiv "" "Child of mother who is infected with HIV"
* #client_sexw "Nữ bán dâm" "Client of sex workers"
* #blood-donor "Người hiến máu tình nguyện" "Blood donors"
* #suspect_hiv "" "People suspected for AIDs"
* #tb_patient "Bệnh nhân lao" "TB patients"
* #std_patient "Người mắc nhiễm trùng lây qua đường tình dục" "People with sexually transmitted diseases"
* #prisoner "" "Prisoner"
* #pregnant "Mang thai" "Pregnant women"
* #military_recruits "Thanh niên khám tuyển nghĩa vụ quân sự" "Young recruits for military service"
//* #other "Không rõ" "Unidentified"


ValueSet: VSHIVRiskPopulation
Id: vs-hiv-population
Title: "Risk Population relevant for HIV"
Description:  "Valueset - Risk population relevant for HIV"
* include codes from system CSHIVRiskPopulation

// *************

CodeSystem:  CSHIVRiskBehavior
Id: cs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "CodeSystem - Behavior associated with risk of HIV transmission"
* #inject_drugs "Tiêm chích ma túy" "Drug injection"
* #sex_client "Quan hệ tình dục với người bán dâm hoặc mua dâm " "Sexual relationship with sex workers or with sex buyers/clients (for money or drug)"
* #msm "Quan hệ tình dục đồng giới nam" "Men who have sex with men"
* #smp "Quan hệ tình dục với nhiều người (không vì tiền hay ma túy)" "Having sex with multiple partners (not for money or drug)"
* #partner_hiv "Quan hệ với vợ/chồng/bạn tình là người nhiễm HIV" "Having sex with spouse/partners who are HIV infected"
//* #other "Không rõ" "Unidentified"


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

* #312425004 "Lây qua đường máu" "Blood"
* #226034001 "Lây qua đường tiêm chích ma túy" "Drug injection"
* #250373003 "Truyền máu" "Blood transfusion finding"
* #53348004 "Tai nạn nghề nghiệp" "Accidental "
* #417564009 "Lây qua đường tình dục" "Sexual Transmission"
* #38628009 "Tình dục đồng giới" "Homosexual (finding)"
* #20430005 "Tình dục khác giới" "Heterosexual (finding)"
* #438998000 "Mẹ truyền sang con" "Mother to Child Transmission"
* #69910005 "Không rõ" "Unidentified"

ValueSet: VSHIVTransmissionRoute
Id: vs-hiv-transmission-route
Title: "HIV Transmission Route"
Description:  "Valueset - Route of HIV transmission"
* include codes from system CSHIVTransmissionRoute







CodeSystem:  CSCauseOfDeath
Id: cs-cause-of-death
Title: "Cause of death"
Description: "Cause of death"
* #aids "Last stage of AIDS"
* #other-diseases "Caused by other diseases"
* #suicide "Suicide"
* #overdose "Drug overdose"
* #accident "Accident"
* #unknown "Unknown"


ValueSet: CauseOfDeath
Id: vs-cause-of-death
Title: "Cause of death"
Description: "Cause of death"
* include codes from system CSCauseOfDeath




CodeSystem:  CSRegimenChangeReason
Id: cs-regimen-change-reason
Title: "Reason for regimen change"
Description: "Reason for regimen change"
* #drug-unavailable "Drug unavailable"
* #drug-sideeffects "Side effects"
* #treatment-failure "Treatment failure"
* #drug-interaction "Drug interaction"
* #new-guidance "New regimen as national guidance"


ValueSet: RegimenChangeReason
Id: vs-regimen-change-reason
Title: "Reason for regimen change"
Description: "Reason for regimen change"
* include codes from system CSRegimenChangeReason


CodeSystem: CSWhoStage
Id: cs-vn-whostage
Title: "CodeSystem WHO stage "
Description:  "CodeSystem - WHO Stage"

* #stage1 "WHO Stage 1"
* #stage2 "WHO Stage 2"
* #stage3 "WHO Stage 3"
* #stage4 "WHO Stage 4"

ValueSet: VSWhoStage
Id: vs-vn-whostage
Title: "ValueSet WHO Stage "
Description:  "ValueSet - WHO Stage"
* include codes from system CSWhoStage
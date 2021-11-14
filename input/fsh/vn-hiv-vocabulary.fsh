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


//********************
CodeSystem:  CSBirthDefects
Id: cs-hiv-birthdefects
Title: "Codesystem Birth Defects"
Description: "CodeSystem - Birth Defects"

* #positive "Positive"
* #negative "Negative"
* #unidentified "Unidentified"
* #unknown "Unknown"

ValueSet: VSCBirthDefects
Id: vs-hiv-birthdefects
Title: "Valueset Birth Defects"
Description:  "Valueset - Birth Defects"
* include codes from system CSBirthDefects
/*
Instance: BirthDefects
InstanceOf: ValueSet
Description: "Birth Defects"
Title: "Pregnancy Outcome Codes"
Usage: #inline
* name = "BirthDefects"
* status = #draft
*/
/*
Instance: ChildHIVStatus
InstanceOf: ValueSet
Description: "Child HIV Status"
Title: "Child HIV Status"
Usage: #inline
* name = "ChildHIVStatus"
* status = #draft
*/


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


Instance: vs-hiv-symptoms
InstanceOf: ValueSet
Description: "Symptoms Value Set"
Title: "Symptoms Value Set"
Usage: #example
* title = "HIV Symptoms"
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
* #unidentified "Unidentified"

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

/*
ValueSet: HIVRapidTestResults
Id: vs-hiv-rapidtestresults
Title: "HIVRapidTestResults"
Description: "HIV rapid test result codes"
* ^status = #draft

* $LOINC#LA15255-5 "Có phản ứng"
* $LOINC#LA15256-3 "Khong phản ứng"
* $LOINC#LA11884-6 "Chưa xác định"
* $LOINC#LA15841-2 "Không hợp lệ"
*/
// *************
CodeSystem:  CSHIVRapidTestResults
Id: cs-hiv-rapidtestresults
Title: "Codesystem Rapid test results"
Description: "CodeSystem - Recency rapid test results for HIV  "

* #recent "Recent"
* #long_term "Long term"
* #negative "Negative"
* #inconclusive "Inconclusive"

ValueSet: VSHIVRapidTestResults
Id: vs-hiv-rapidtestresults
Title: "Valueset Rapid test results"
Description:  "Valueset - Recency rapid test results "
* include codes from system CSHIVRapidTestResults
//*******************
CodeSystem:  CSHIVReasonCD4Test
Id: cs-hiv-reasoncd4test
Title: "Codesystem Reason for CD4 test"
Description: "CodeSystem - Reason for CD4 test"

* #before_art "Before ART"
* #routine_test "Routine test"
* #other "Other "

ValueSet: VSHIVReasonCD4Test
Id: vs-hiv-reasoncd4test
Title: "Valueset Reason for CD4 test"
Description:  "Valueset - Reason for CD4 test"
* include codes from system CSHIVReasonCD4Test

//*******************

CodeSystem:  CSHIVRiskPopulation
Id: cs-hiv-population
Title: "Population groups"
Description: "CodeSystem - Population groups - Subjects to be tested for HIV"

* #pwid "Injecting drug users"
* #msm "Men who have sex with men"
* #sw "Sex workers"
* #client_sw "Clients of sex worker "
* #partner_plhiv "Sexual partner of PLHIV"
* #tg_women "Transgender women"
* #tg_men "Transgender men"
* #child_woman_hiv "Child of mother who is infected with HIV"
* #blood-donor "Blood seller / blood donor"
* #suspect_hiv "People suspected for AIDs"
* #tb_patient "Tuberculosis patient"
* #std_person "Persons with STD"
* #prisoner "Prisoner"
* #pregnant "Pregnant women"
* #military_recruits "Young recruits for military service"
* #partner_high_risk "Sexual partner of high risk group"
* #other "Other"
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
* #pwid "PWID"
* #sex_partner "Having sex with sex worker or sex buyer"
* #msm  "Men who have sex with men"
* #smp  "Having sex with multiple partners (not for money or drug)"
* #partner_hiv "Having sex with spouse/partners who are HIV infected"
* #other "Other"


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

* #312425004 "Blood"
* #226034001 "Drug injection"
* #250373003 "Blood transfusion"
* #53348004 "Occupational accident "
* #417564009 "Sexual Transmission"
* #38628009 "Homosexual"
* #20430005 "Heterosexual"
* #438998000 "Mother to Child Transmission"
* #69910005 "Unidentified"

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
* #overdose "Drug overdose shock"
* #accident "Accident"
* #unknown "Unknown"
* #other "Other"


ValueSet: CauseOfDeath
Id: vs-cause-of-death
Title: "Cause of death"
Description: "Cause of death"
* include codes from system CSCauseOfDeath


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

//********************
CodeSystem:  CSReasonVLTest
Id: cs-hiv-reasonvltest
Title: "Codesystem Reason for VL test"
Description: "CodeSystem - Reason for VL test"

* #routine-6 "6 months after ART initiation"
* #routine-12 "12 month routine"
* #treatment-fail "Suspected treatment failure (clinical, immunological)"
* #3month-after-high "3 month after high viral load"
* #pregnant "Pregnant/Lactating woman"
* #other "Other"

ValueSet: VSCSReasonVLTest
Id: vs-hiv-reasonvltest
Title: "Valueset Reason for VL test"
Description:  "Valueset - Reason for VL test"
* include codes from system CSReasonVLTest

//********************
CodeSystem: CSRecentInfectionConclusion
Id: cs-hiv-recentinfection
Title: "Codesystem Recent infection conclusion"
Description: "CodeSystem - RRecent infection conclusion"

* #recent "Recent infection"
* #long-term "Long term infection"

ValueSet: VSRecentInfectionConclusion
Id: vs-hiv-recentinfection
Title: "Valueset Recent infection conclusion"
Description:  "Valueset - Recent infection conclusion"
* include codes from system CSRecentInfectionConclusion

//********************
CodeSystem: CSTreatmentStopReason
Id: cs-hiv-treatmentstopreason
Title: "Codesystem Reason to stop treatment at facility"
Description: "CodeSystem - 	Reason to stop treatment at facility"

* #transfer-out "Transfer out"
* #drop-out "Drop out or LTFU"
* #death "Death"

ValueSet: VSTreatmentStopReason
Id: vs-hiv-treatmentstopreason
Title: "Valueset Reason to stop treatment at facility"
Description:  "Valueset - Reason to stop treatment at facility"
* include codes from system CSTreatmentStopReason


//********************
CodeSystem: CSResidenceStatus
Id: cs-hiv-residence-status
Title: "Codesystem ResidenceStatus"
Description: "CodeSystem - 	ResidenceStatus"

* #ltfu "LTFU"
* #live-local "Currently live in locality"
* #not-reality "Not in reality"
* #in-rpison "In prison"
* #within-provice "Move within province"
* #other-place "Move to other places/provinces"
* #far-from-home "Work far away from home"
* #unknow "Unknown"

ValueSet: VSCSResidenceStatus
Id: vs-hiv-residence-status
Title: "Valueset ResidenceStatus"
Description:  "Valueset - ResidenceStatus"
* include codes from system CSResidenceStatus

//***********
CodeSystem: CSMediatorSystem
Id: cs-hiv-mediatorsys
Title: "CodeSystem Mediator System"
Description:  "CodeSystem - Mediator System"

* #hivinfo "HIV Info"
* #pdma "PDMA"
* #opcassist "OPC Assist Online"
* #htcelog "HTC e-Log"
* #eclinica "eClinica"
* #hivims "HIV IMS"
* #vtshis "Viettel HIS"
* #hmed "HMED"
* #dieutriarv "DieutriARV"
* #mpi "MPI"

ValueSet: VSMediatorSystem
Id: vs-hiv-mediatorsys
Title: "MediatorSystem Value Set "
Description:  "ValueSet - Mediator System"
* include codes from system CSMediatorSystem

CodeSystem: CSViralLoadOther
Id: cs-viralload-result-other
Title: "CodeSystem Viral Load Other Result"
Description: "Codesystem - Viral Load Other Result"
* #vl_undetectable "Undetectable"
* #vl_200 "Below 200 copies/mL" 
* #vl_2_1000 "From 200 to 1,000 copies/mL"
* #vl_1000 "Above 1,000 copies/mL"
* #vl_no "Not taken"

ValueSet: VSViralLoadOther
Id: vs-viralload-result-other
Title: "ValueSet Viral Load Other Result"
Description:  "Valueset - Viral Load Other Result"
* include codes from system CSViralLoadOther

//***************************************
CodeSystem: CSARVEnrollmentType
Id: cs-arv-enrollment-type
Title: "CodeSystem ARV Enrollment Type"
Description: "Codesystem - ARV Enrollment Type"

* #new "ARV newly registered"
* #transfer-in "ARV patient transferred in"
* #reinitiation "ARV patient restarted"
* #pre-tranfer-in "Pre-ARV patient transferred in"
* #pre-re-gregistered "Pre-ARV patients re-registered"

ValueSet: VSARVEnrollmentType
Id: vs-arv-enrollment-type
Title: "ValueSet ARV Enrollment Type"
Description: "ValueSet - ARV Enrollment Type"
* include codes from system CSARVEnrollmentType

//***************************************
CodeSystem: CSARVStatus
Id: cs-arv-status
Title: "CodeSystem ARV Treatment Status"
Description: "Codesystem - ARV TreatmentStatus"

* #arv "Currently on ART"
* #death "Death"
* #drop "Drop out/Loss-to-follow-up"
* #transfer "Transferred out"
* #never-art "Never on ART"
* #unknow "Unknown"

ValueSet: VSARVStatus
Id: vs-arv-status
Title: "ValueSet ARV Treatment Status"
Description: "ValueSet - ARV Treatment Status"
* include codes from system CSARVStatus

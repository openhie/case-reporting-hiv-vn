Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $LOINC = http://loinc.org
Alias: $vnhiv_ans = http://example.org/CodeSystem/casereporting-hiv-vn-casereport-answeroptions


/*
Instance: Gender
InstanceOf: ValueSet
Description: "Gender codes"
Title: "Gender"
Usage: #inline
* name = "Gender"
* status = #draft
*/
/*
Instance: VietnamEthnicity
InstanceOf: ValueSet
Description: "Vietnam Ethnicity codes"
Title: "Vietnam Ethnicity"
Usage: #inline
* name = "VietnamEthnicity"
* status = #draft
*/


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
* compose.include[+].concept[+].code = #0
* compose.include[=].concept[+].code = #1
* compose.include[=].concept[+].code = #unknown


//============================================================



Instance: hiv-case-report-questionnaire
InstanceOf: sdc-questionnaire-extract
Description: "HIV Case Report Form"
Title: "HIV Case Report Form"
Usage: #definition


//* extension[+].url = $targetStructureMap
//* extension[=].valueCanonical = Canonical(HIVCaseReportMap)

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemContext"



* name = "hiv_case_report_form"
* version = "2020"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

//* contained[+] = HIVRiskPopulation
//* contained[+] = HIVRiskBehavior
* contained[+] = cs-pregnancy-outcome
* contained[+] = BirthDefects
* contained[+] = ChildHIVStatus
//* contained[+] = HIVTransmissionRoute


* url = "http://openhie.org/fhir/Questionnaire/hiv-case-report-questionnaire"




* insert Question(,title,HIV case report,display,false)
* insert Question(,instructions,Reporting instructions: Monthly - applicable to each patient during the reporting period,display,false)
* insert Question(,facility_id,Facility ID,open-choice,false)
* insert Question(,report_date,Date of report,date,false)

* insert Question(,questions,Monthly report,group,false)

* insert Question(item[=].,patient_identification,Part I: Identifying information,group,false)
* insert Question(item[=].item[=].,patient_arv_nr,ARV patient number,string,false)
* insert Question(item[=].item[=].,case_uid,Case UID,string,false)

* insert Question(item[=].item[=].,index_testing,Index testing,group,false)
* insert Question(item[=].item[=].item[=].,index_case_national_id12,Link to index national id 12 digits,string,false)
* insert Question(item[=].item[=].item[=].,index_case_national_id9,Link to index national id 9 digits,string,false)
* insert Question(item[=].item[=].item[=].,index_case_uid,Link to index hivinfo case id ,string,false)

* insert Question(item[=].item[=].,personal_information,Personal information,group,false)
* insert Question(item[=].item[=].item[=].,fullname,Full name,string,false)
* insert Question(item[=].item[=].item[=].,ethnicity,Vietnam ethnicity,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-vn-ethnicity)


* insert Question(item[=].item[=].item[=].,gender,Gender,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-patient-gender)

* insert Question(item[=].item[=].item[=].,birth_date,Date of birth,date,false)
//* item[=].item[=].item[=].item[=].type   = #integer
//* item[=].item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
//* item[=].item[=].item[=].item[=].extension.valueString = "([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00))"

* insert Question(item[=].item[=].item[=].,identification,Identification,group,false)
* insert Question(item[=].item[=].item[=].item[=].,national_id12,National ID 12 digits,string,false)
* insert Question(item[=].item[=].item[=].item[=].,national_id9,National ID 9 digits,string,false)
* insert Question(item[=].item[=].item[=].item[=].,insurance_nr,Health insurance number,string,false)
* insert Question(item[=].item[=].item[=].item[=].,insurance_exp_date,Health insurance expiry date,date,false)
* insert Question(item[=].item[=].item[=].item[=].,passport_nr,Passport number,string,false)
* insert Question(item[=].item[=].item[=].item[=].,driver_license,Driver license,string,false)

* insert Question(item[=].item[=].item[=].,residence,Residence,group,true)
* insert Question(item[=].item[=].item[=].item[=].,current_residence,Current residence,group,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,country,Country,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,province,Province,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,district,District,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,commune,Commune,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,address,Street address,string,false)

* insert Question(item[=].item[=].item[=].item[=].,permanent_residence,Permanent residence,group,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,country,Country,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,province,Province,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,district,District,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,commune,Commune,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].item[=].,address,Street address,string,false)


* insert Question(item[=].item[=].item[=].,occupation,Occupation,open-choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-occupation)

* insert Question(item[=].,risk_factors,Risk factors,group,false)

* insert Question(item[=].item[=].,population_group,Population group,open-choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-population)

* insert Question(item[=].item[=].,risk_behavior,Risk behavior,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-risk-behavior)

// Need to add 2-step details
* insert Question(item[=].item[=].,transmission_route,Transmission route,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-transmission-route)
//* insert Question(item[=].item[=].,transmission_route_detail,Transmission route,choice,false)

* insert Question(item[=].,hiv_diagnosis,HIV diagnosis,group,false)
* insert Question(item[=].item[=].,confirmation_date,Date of confirmation,date,false)
* insert Question(item[=].item[=].,confirming_lab,Confirming lab,open-choice,false)
* insert Question(item[=].item[=].,date_specimen_collected,Date of specimen collection,date,false)
* insert Question(item[=].item[=].,place_specimen_collected,Place of specimen collection,open-choice,false)

* insert Question(item[=].,hiv_recency_test,HIV recency test,group,false)

// To do: combine these and put a test type?
//* insert Question(item[=].,test_type,Test type,choice,false)


* insert Question(item[=].item[=].,rapid_test,Rapid test for recent infection,group,false)
* insert Question(item[=].item[=].item[=].,date_specimen_collected,Date of specimen collection,date,false)
* insert Question(item[=].item[=].item[=].,place_specimen_collected,Place of specimen collection,open-choice,false)
* insert Question(item[=].item[=].item[=].,date_test_performed,Date test result performed,date,false)
* insert Question(item[=].item[=].item[=].,test_result,Rapid test result,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical (vs-hiv-rapidtestresults)

* insert Question(item[=].item[=].,vl_test,Viral load test specific for recency test,group,false)
//* insert Question(item[=].item[=].item[=].,vl_test.date_specimen_collection,Date of Specimen Collection for VL test,date,false)
//* insert Question(item[=].item[=].item[=].,vl_testid_test.place_specimen_collection,Place of Specimen Collection for rapVLid test,string,false)
* insert Question(item[=].item[=].item[=].,date_test_performed,Date of VL test performance,date,false)
* insert Question(item[=].item[=].item[=].,test_result,VL test result (copies/mL\),integer,false)
* insert Question(item[=].item[=].item[=].,test_result_other,Other of viral load test (undetectable\),choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#undetectable "undetectable"

* insert Question(item[=].item[=].,recent_infection_conclusion,Recent infection conclusion,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical (vs-hiv-recentinfection)
/*
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#recent "Recent infection"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#long-term "Long term infection"
*/
* insert Question(item[=].,cd4_test,CD4 test results,group,true)
* insert Question(item[=].item[=].,test_reason,Reason for CD4 test,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-reasoncd4test)
/*
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#pre-art "Before ART"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#routine "Routine"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#other "Other"
*/
* insert Question(item[=].item[=].,date_specimen_collected,Date of specimen collection for CD4 test,date,false)
* insert Question(item[=].item[=].,place_specimen_collected,Place of specimen collection for CD4 test,open-choice,false)
* insert Question(item[=].item[=].,date_test_performed,Date of CD4 test,date,false)
* insert Question(item[=].item[=].,test_result,Result of CD4 test,integer,false)

/*
* insert Question(item[=].item[=].,test_result_other,Other outcome of CD4 test,choice,false)
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#undetermined "Undetermined"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#notapplicable "Not applicable"


* insert Question(item[=].item[=].,history,Other CD4 test results,group,true)
* insert Question(item[=].item[=].item[=].,lastest_test_reason,Reason for CD4 test,choice,false)

* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#pre-art "Before ART"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#routine "Routine"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#other "Other"
* insert Question(item[=].item[=].item[=].,place_specimen_collected,Place of Specimen Collection for CD4 test,string,false)
* insert Question(item[=].item[=].item[=].,date_specimen_collected,Date of Specimen Collection for CD4 test,date,false)
* insert Question(item[=].item[=].item[=].,date_test_performed,Date of CD4 test,date,false)
* insert Question(item[=].item[=].item[=].,test_result,Result of CD4 test,integer,false)
* insert Question(item[=].item[=].item[=].,cd4_test_result,Other outcome of CD4 test,choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#undetermined "Undetermined"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#notapplicable "Not applicable"
*/

* insert Question(item[=].,vl_test,Viral load test (First time and follow-up\),group,true)
* insert Question(item[=].item[=].,test_reason,Reason for VL test,open-choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-reasonvltest)

/*
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#routine-6 "6 months after ART initiation"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#routine-12 "12 month routine"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#treatment-fail "Suspected treatment failure (clinical, immunological)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#3month-after-high "3 month after high viral load"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#pregnant "Pregnant/Lactating woman"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#other "Other"
*/
* insert Question(item[=].item[=].,place_specimen_collected,Place of Specimen Collection for viral load test,open-choice,false)
* insert Question(item[=].item[=].,date_specimen_collected,Date of Specimen Collection for viral load test,date,false)
* insert Question(item[=].item[=].,date_test_performed,Date of viral load test,date,false)
* insert Question(item[=].item[=].,test_result,Result of viral load test,integer,false)
* insert Question(item[=].item[=].,test_result_other,Result of other outcome,choice,false)
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#undetectable "undetectable"
/*
* insert Question(item[=].item[=].,history,Past Viral Load test,group,true)
* insert Question(item[=].item[=].item[=].,test_reason,Reason for past CD4 test,string,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#routine-6 "6 months after ART initiation"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#routine-12 "12 month routine"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#treatment-fail "Suspected treatment failure (clinical, immunological)"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#3month-after-high "3 month after high viral load"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#pregnant "Pregnant/Lactating woman"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#other "Other"
* insert Question(item[=].item[=].item[=].,place_specimen_collected,Place of Specimen Collection for past VL test,string,false)
* insert Question(item[=].item[=].item[=].,date_specimen_collected,Date of Specimen Collection for past VL test,date,false)
* insert Question(item[=].item[=].item[=].,date_test_performed,Date of past VL test,date,false)
* insert Question(item[=].item[=].item[=].,test_result,Result of past VL test,integer,false)
*/

* insert Question(item[=].,drug_resistance_test,Drug resistance test,group,true)
* insert Question(item[=].item[=].,date_specimen_collected,Date of specimen collection,date,false)
* insert Question(item[=].item[=].,date_test_performed,Date test results performed,date,false)
* insert Question(item[=].item[=].,place_specimen_collected,Place of specimen collection,open-choice,false)
* insert Question(item[=].item[=].,test_result,Drug resistance test result,choice,false)


* insert Question(item[=].,arv_treatment,ARV Treatment,group,true)

* insert Question(item[=].item[=].,initiation_date,Date of ARV treatment initiation,date,false)
* insert Question(item[=].item[=].,initiation_facility,Name of ARV treatment initiation facility,open-choice,false)

* insert Question(item[=].item[=].,enrollment_date,Date of ARV Treatment registration,date,false)
* insert Question(item[=].item[=].,enrollment_facility,Name of ARV treatment facility,open-choice,false)
* insert Question(item[=].item[=].,enrollment_type,Reason for ARV treatment registration,choice,false)
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#new "New registration"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#transfer-in "Transfer in"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#reinitiation "Re-initiation"
// enableWhen: if transfer in, enable the transfer in facility

* insert Question(item[=].item[=].,facility_transfer_in,Transferred-in facility (previous facility\),open-choice,false)
* insert Question(item[=].item[=].,treatment_stop_date,Date of treatment stop at facility,date,false)
* insert Question(item[=].item[=].,treatment_stop_reason,Reason to stop treatment at facility,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-treatmentstopreason)

// enableWhen: if transfer out, enable the transfer out facility
* insert Question(item[=].item[=].,place_transfer_out,Transferred-out facility (next facility\),open-choice,false)

* insert Question(item[=].item[=].,date_next_appointment,Date of next appointment,date,false)
* insert Question(item[=].item[=].,date_last_examination,Date of last examination,date,false)

* insert Question(item[=].item[=].,arv_regimen,ARV treatment regimen,group,true)
* insert Question(item[=].item[=].item[=].,date_regimen_started,Date regimen started,date,false)
* insert Question(item[=].item[=].item[=].,date_regimen_stopped,Date regimen stopped,date,false)
* insert Question(item[=].item[=].item[=].,regimen_name,Regimen name,open-choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-vn-regimen)
* insert Question(item[=].item[=].item[=].,regimen_line,Regimen line,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-vn-regimenline)
* insert Question(item[=].item[=].item[=].,regimen_change_reason,Reason to change regimen,open-choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-regimen-change-reason)

* insert Question(item[=].item[=].,who_stage,WHO Stage,group,true)
* insert Question(item[=].item[=].item[=].,who_clinical stage,WHO clinical stage,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-vn-whostage)
* insert Question(item[=].item[=].item[=].,date_who_stage,Date of WHO clinical stage,date,false)

* insert Question(item[=].,comorbidities,Comorbidities,group,false)

* insert Question(item[=].item[=].,tuberculosis,Tuberculosis,group,true)
* insert Question(item[=].item[=].item[=].,tb_diagnosis_date,TB diagnosis date,date,false)
* insert Question(item[=].item[=].item[=].,tb_treatment,TB treatment,group,true)
* insert Question(item[=].item[=].item[=].item[=].,date_started,TB treatment date started,date,false)
* insert Question(item[=].item[=].item[=].item[=].,date_ended,TB treatment date ended,date,false)
* insert Question(item[=].item[=].item[=].item[=].,location,Place TB treatment provided,open-choice,false)

* insert Question(item[=].item[=].item[=].,tpt,TPT,group,true)
* insert Question(item[=].item[=].item[=].item[=].,date_started,Date TPT started,date,false)
* insert Question(item[=].item[=].item[=].item[=].,date_ended,Date TPT ended,date,false)
* insert Question(item[=].item[=].item[=].item[=].,location,Place TPT provided,open-choice,false)
* insert Question(item[=].item[=].item[=].item[=].,tpt_completed,TPT completed,boolean,false)

* insert Question(item[=].item[=].,hbv,HBV,group,true)
* insert Question(item[=].item[=].item[=].,hbsag_date,Date of HbsAg test,date,false)
* insert Question(item[=].item[=].item[=].,hbsag_result,Result of HbsAg test,choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#negative "Negative"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#positive "Positive"
* insert Question(item[=].item[=].item[=].,diagnosis_date,Date of diagnosis test,date,false)
* insert Question(item[=].item[=].item[=].,diagnosis_result,Result of diagnosis test,choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#negative "Negative"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#positive "Positive"

* insert Question(item[=].item[=].item[=].,treatment_start_date,Date of HBV treatment start,date,false)
* insert Question(item[=].item[=].item[=].,treatment_stop_date,Date of HBV treatment stopped,date,false)
* insert Question(item[=].item[=].item[=].,treatment_location,Place HBV treatment provided,open-choice,false)

* insert Question(item[=].item[=].,hcv,HCV,group,true)
* insert Question(item[=].item[=].item[=].,anti_hcv_date,Date of anti HCV test,date,false)
* insert Question(item[=].item[=].item[=].,anti_hcv_result,Result of anti HCV test,choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#negative "Negative"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#positive "Positive"
* insert Question(item[=].item[=].item[=].,diagnosis_date,Date of HCV diagnosis test,date,false)
* insert Question(item[=].item[=].item[=].,diagnosis_result,Result of HCV dianosis test,choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#negative "Negative"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $vnhiv_ans#positive "Positive"

* insert Question(item[=].item[=].item[=].,vl_diagnosis_date,Date of HCV viral load test,date,false)
* insert Question(item[=].item[=].item[=].,vl_diagnosis_result,Result of HCV viral load test,integer,false)

* insert Question(item[=].item[=].item[=].,treatment_start_date,Date of HCV treatment start,date,false)
* insert Question(item[=].item[=].item[=].,treatment_stop_date,Date of HCV treatment stopped,date,false)
* insert Question(item[=].item[=].item[=].,treatment_location,Place HCV treatment provided,open-choice,false)

* insert Question(item[=].,death,Patient death,group,false)
* insert Question(item[=].item[=].,date,Date of death,date,false)
* insert Question(item[=].item[=].,cause,Cause of death,open-choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical (vs-cause-of-death)


* insert Question(item[=].,pregnancy,Pregnancies,group,true)
* insert Question(item[=].item[=].,date_reported,Date pregnancy reported,date,false)
* insert Question(item[=].item[=].,delivery_place,Delivery place,open-choice,false)
* insert Question(item[=].item[=].,place_reported,Place pregnancy reported,open-choice,false)

* insert Question(item[=].item[=].,outcomes,Pregnancy outcome,group,false)
* insert Question(item[=].item[=].item[=].,outcome_code,Pregnancy outcome code,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical (vs-hiv-pregnancy-outcome)

* insert Question(item[=].item[=].item[=].,delivery_date,Delivery date,date,true)
* item[=].item[=].item[=].item[=].enableWhen.question = "pregnancy_outcome_code"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = #2
* insert Question(item[=].item[=].item[=].,gestational_age_at_delivery,Gestational age at delivery (weeks\),integer,true)
* item[=].item[=].item[=].item[=].enableWhen.question = "pregnancyOutcomeCode"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = #2

* insert Question(item[=].item[=].item[=].,child,Births,group,true)
* item[=].item[=].item[=].item[=].enableWhen.question = "pregnancyOutcomeCode"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = #2

* insert Question(item[=].item[=].item[=].item[=].,birth_weight,Child weight at birth,decimal,false)
* insert Question(item[=].item[=].item[=].item[=].,birth_defects,Birth defects,open-choice,true)
* item[=].item[=].item[=].item[=].item[=].answerValueSet = "#BirthDefects"
* insert Question(item[=].item[=].item[=].item[=].,hiv_status,HIV status,choice,false)
* item[=].item[=].item[=].item[=].item[=].answerValueSet = "#ChildHIVStatus"
* insert Question(item[=].item[=].item[=].item[=].,hiv_diagnosis_date,Child HIV diagnosis date,date,false)
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "child.hiv_status"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerCoding = #1

* insert Question(item[=].item[=].item[=].item[=].,child_arv_start_date,Child ARV start date,date,false)
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "child.hiv_status"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerCoding = #1



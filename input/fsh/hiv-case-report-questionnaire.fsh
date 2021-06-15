Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $LOINC = http://loinc.org


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



* name = "HIVCaseReportForm"
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




* insert Question(,tile,HIV Case Report,display,false)
* insert Question(,instructions,Reporting instructions: Monthly – applicable to each patient during the reporting period,display,false)
* insert Question(,unit_name,Governing body unit name,string,false)
* insert Question(,report_date,Date of Report,date,false)

* insert Question(,questions,Monthly report,group,false)

* insert Question(item[=].,patient_identification,Part I: Identifying Information,group,false)
* insert Question(item[=].item[=].,arv_patient_nr,ARV Patient number,string,false)
* insert Question(item[=].item[=].,case_uid,Case UID,string,false)

* insert Question(item[=].item[=].,personal_information,Personal information,group,false)
* insert Question(item[=].item[=].item[=].,name,Full name,string,false)
* insert Question(item[=].item[=].item[=].,ethnicity,Vietnam Ethnicity,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-vn-ethnicity)


* insert Question(item[=].item[=].item[=].,patient_gender,Gender,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-patient-gender)

* insert Question(item[=].item[=].item[=].,birth_date,Date of Birth,date,false)
//* item[=].item[=].item[=].item[=].type   = #integer
//* item[=].item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
//* item[=].item[=].item[=].item[=].extension.valueString = "([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00))"

* insert Question(item[=].item[=].item[=].,identification,Identification,group,false)
* insert Question(item[=].item[=].item[=].item[=].,cccd_id,National ID 11 digits,string,false)
* insert Question(item[=].item[=].item[=].item[=].,cmtnd_id,National ID 9 digits,string,false)
* insert Question(item[=].item[=].item[=].item[=].,insurance_id,Health insurance number,string,false)
* insert Question(item[=].item[=].item[=].item[=].,passport_nr,Passport number,string,false)
* insert Question(item[=].item[=].item[=].item[=].,driver_license,Driver license,string,false)

* insert Question(item[=].item[=].item[=].,residence,Residence,group,false)
* insert Question(item[=].item[=].item[=].item[=].,current_residence,Current residence,string,false)
* insert Question(item[=].item[=].item[=].item[=].,permanent_residence,Permanent residence,string,false)


* insert Question(item[=].item[=].item[=].,occupation,Occupation,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-occupation)

* insert Question(item[=].,risk_factors,Risk factors,group,false)

* insert Question(item[=].item[=].,risk_population,Risk population,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-population)

* insert Question(item[=].item[=].,risk_behavior,Risk behavior,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-risk-behavior)

* insert Question(item[=].item[=].,transmission_route,Transmission route,choice,false)
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-transmission-route)

* insert Question(item[=].,hiv_diagnosis,HIV Diagnosis,group,false)
* insert Question(item[=].item[=].,hiv_diagnosis.confirmation_date,Date of confirmation,date,false)
* insert Question(item[=].item[=].,hiv_diagnosis.confirming_lab,Confirming lab,string,false)
* insert Question(item[=].item[=].,hiv_diagnosis.date_specimen_collected,Date of specimen collection,date,false)
* insert Question(item[=].item[=].,hiv_diagnosis.place_specimen_collected,Place of specimen collection,string,false)

* insert Question(item[=].,hiv_recency_test,HIV recency test,group,false)

// To do: combine these and put a test type?
//* insert Question(item[=].,hiv_recency_test.test_type,Test type,choice,false)


* insert Question(item[=].item[=].,hiv_recency_test.rapid_test,Rapid test,group,false)
* insert Question(item[=].item[=].item[=].,hiv_recency_test.rapid_test.date_specimen_collection,Date of Specimen Collection for rapid test,date,false)
* insert Question(item[=].item[=].item[=].,hiv_recency_test.rapid_test.place_specimen_collection,Place of Specimen Collection for rapid test,string,false)
* insert Question(item[=].item[=].item[=].,hiv_recency_test.rapid_test.date_test_performed,Date of rapid test performance,date,false)
* insert Question(item[=].item[=].item[=].,hiv_recency_test.rapid_test.test_result,Result of recency rapid test performance,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical (vs-hiv-rapidtestresults)

* insert Question(item[=].item[=].,hiv_recency_test.vl_test,Rapid test,group,false)
//* insert Question(item[=].item[=].item[=].,hiv_recency_test.vl_test.date_specimen_collection,Date of Specimen Collection for VL test,date,false)
//* insert Question(item[=].item[=].item[=].,hiv_recency_test.vl_testid_test.place_specimen_collection,Place of Specimen Collection for rapVLid test,string,false)
* insert Question(item[=].item[=].item[=].,hiv_recency_test.vl_test.date_test_performed,Date of VL test performance,date,false)
* insert Question(item[=].item[=].item[=].,hiv_recency_test.vl_test.test_result,Result of recency VL test performance,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical (vs-hiv-rapidtestresults)


* insert Question(item[=].,cd4,CD4 test results,group,false)
* insert Question(item[=].item[=].,cd4.present_test_reason,Reason for present CD4 test,string,false)
* insert Question(item[=].item[=].,cd4.present_place_specimen_collected,Place of Specimen Collection for present CD4 test,string,false)
* insert Question(item[=].item[=].,cd4.present_date_specimen_collected,Date of Specimen Collection for present CD4 test,date,false)
* insert Question(item[=].item[=].,cd4.present_date_test_performed,Date of present CD4 test,date,false)
* insert Question(item[=].item[=].,cd4.present_test_result,Result of present CD4 test,integer,false)

* insert Question(item[=].item[=].,cd4.history,Past CD4 test results,group,true)
* insert Question(item[=].item[=].item[=].,cd4.history.before_art,Test before ART?,choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = #yes "Yes"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = #yes "No"
* insert Question(item[=].item[=].item[=].,cd4.history.test_reason,Reason for past CD4 test,string,false)
* insert Question(item[=].item[=].item[=].,cd4.history.place_specimen_collected,Place of Specimen Collection for past CD4 test,string,false)
* insert Question(item[=].item[=].item[=].,cd4.history.date_specimen_collected,Date of Specimen Collection for past CD4 test,date,false)
* insert Question(item[=].item[=].item[=].,cd4.history.date_test_performed,Date of past CD4 test,date,false)
* insert Question(item[=].item[=].item[=].,cd4.history.test_result,Result of past CD4 test,integer,false)


* insert Question(item[=].,vl,Viral Load test (First time and follow-up\),group,true)
* insert Question(item[=].item[=].,vl.test_reason,Reason for present VL test,string,false)
* insert Question(item[=].item[=].,vl.place_specimen_collected,Place of Specimen Collection for present VL test,string,false)
* insert Question(item[=].item[=].,vl.date_specimen_collected,Date of Specimen Collection for present VL test,date,false)
* insert Question(item[=].item[=].,vl.date_test_performed,Date of present VL test,date,false)
* insert Question(item[=].item[=].,vl.test_result,Result of present VL test,integer,false)

* insert Question(item[=].item[=].,vl.history,Past Viral Load test results,group,true)
* insert Question(item[=].item[=].item[=].,vl.history.before_art,Test before ART?,choice,false)
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = #yes "Yes"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = #yes "No"
* insert Question(item[=].item[=].item[=].,vl.history.test_reason,Reason for past CD4 test,string,false)
* insert Question(item[=].item[=].item[=].,vl.history.place_specimen_collected,Place of Specimen Collection for past VL test,string,false)
* insert Question(item[=].item[=].item[=].,vl.history.date_specimen_collected,Date of Specimen Collection for past VL test,date,false)
* insert Question(item[=].item[=].item[=].,vl.history.date_test_performed,Date of past VL test,date,false)
* insert Question(item[=].item[=].item[=].,vl.history.test_result,Result of past VL test,integer,false)




* item[=].item[+].linkId = "drugResistanceTest"
* item[=].item[=].text   = "Drug Resistance test"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "16"

* item[=].item[=].item[+].linkId = "drugResistanceTest.date_specimen_collected"
* item[=].item[=].item[=].text   = "Date of Specimen Collection for Drug Resistance test"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "16.1"

* item[=].item[=].item[+].linkId = "drugResistanceTest.date_test_performed"
* item[=].item[=].item[=].text   = "Date of Drug Resistance test"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "16.2"

* item[=].item[=].item[+].linkId = "drugResistanceTest.place_specimen_collected"
* item[=].item[=].item[=].text   = "Place of Specimen Collection for Drug Resistance test"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "16.3"

* item[=].item[=].item[+].linkId = "drugResistanceTest.testResult"
* item[=].item[=].item[=].text   = "Drug Resistance test result"
* item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].prefix   = "16.4"



* insert Question(item[=].,arvTreatment,ARV Treatment,group,true)
* insert Question(item[=].item[=].,arvTreatment.past,Past treatment?,boolean,false)
* insert Question(item[=].item[=].,arvTreatment.registration_type,Type of ARV Treatment registration,choice,false)
* item[=].item[=].item[=].answerOption[+].valueCoding = #new "New registration"
* item[=].item[=].item[=].answerOption[+].valueCoding = #transfer-in "Transfer in"
* item[=].item[=].item[=].answerOption[+].valueCoding = #reinitiation "Re-initiation"
* insert Question(item[=].item[=].,arvTreatment.registration_date,Date of ARV Treatment registration,date,false)
* insert Question(item[=].item[=].,arvTreatment.registration_place,Place of ARV Treatment registration,string,false)

* insert Question(item[=].item[=].,arvTreatment.initiation_date,Date of ARV Treatment initiation,date,false)

* insert Question(item[=].item[=].,arvTreatment.treatment_stop_date,Date of treatment stop,date,false)
* insert Question(item[=].item[=].,arvTreatment.treatment_stop_reason,Reason to stop treatment,choice,false)
* item[=].item[=].item[=].answerOption[+].valueCoding = #transfer-out "Transfer out"
* item[=].item[=].item[=].answerOption[+].valueCoding = #drop-out "Drop out"
* item[=].item[=].item[=].answerOption[+].valueCoding = #death "Death"
* insert Question(item[=].item[=].,arvTreatment.place_transfer_out,Place of transfer out,date,false)

* insert Question(item[=].item[=].,arvTreatment.date_loss_follow_up,Date of Loss to follow up,date,false)

* insert Question(item[=].item[=].,arvTreatment.regimen,ARV Treatment regimen,group,false)
* insert Question(item[=].item[=].item[=].,arvTreatment.regimen.name,Regimen name,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-vn-regimen)

* insert Question(item[=].item[=].item[=].,arvTreatment.regimen.level,Regimen level,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-vn-regimenlevel)



* insert Question(item[=].,comorbidities,Comorbidities,group,false)

* insert Question(item[=].item[=].,tuberculosis,Tuberculosis,group,false)
* insert Question(item[=].item[=].item[=].,tpt,TPT,group,false)
* insert Question(item[=].item[=].item[=].item[=].,tpt.date_started,Date TPT started,date,false)
* insert Question(item[=].item[=].item[=].item[=].,tpt.date_ended,Date TPT ended,date,false)
* insert Question(item[=].item[=].item[=].item[=].,tpt.location,Place TPT provided,string,false)

* insert Question(item[=].item[=].item[=].,tbdiagnosis_date,TB diagnosis date,date,false)

* insert Question(item[=].item[=].item[=].,tbtreatment,TB Treatment,group,false)
* insert Question(item[=].item[=].item[=].item[=].,tbtreatment.date_started,TB Treatment date started,date,false)
* insert Question(item[=].item[=].item[=].item[=].,tbtreatment.date_ended,TB Treatment date ended,date,false)
* insert Question(item[=].item[=].item[=].item[=].,tbtreatment.location,Place TB Treatment provided,date,false)


* insert Question(item[=].item[=].,hbv_hcv,HBV and HCV,group,false)
* insert Question(item[=].item[=].item[=].,hbv,HBV,group,false)
* insert Question(item[=].item[=].item[=].item[=].,hbv.diagnosis_date,Date of HBV diagnosis,date,false)
* insert Question(item[=].item[=].item[=].item[=].,hbv.treatment_start_date,Date of HBV treatment start,date,false)
* insert Question(item[=].item[=].item[=].item[=].,hbv.treatment_stop_date,Date of HBV treatment stopped,date,false)
* insert Question(item[=].item[=].item[=].item[=].,hbv.treatment_location,Place HBV treatment provided,string,false)

* insert Question(item[=].item[=].item[=].,hcv,HCV,group,false)
* insert Question(item[=].item[=].item[=].item[=].,hcv.diagnosis_date,Date of HCV diagnosis,date,false)
* insert Question(item[=].item[=].item[=].item[=].,hcv.treatment_start_date,Date of HCV treatment start,date,false)
* insert Question(item[=].item[=].item[=].item[=].,hcv.treatment_stop_date,Date of HCV treatment stopped,date,false)
* insert Question(item[=].item[=].item[=].item[=].,hcv.treatment_location,Place HCV treatment provided,string,false)


* insert Question(item[=].,pregnancies,Pregnancies,group,true)
* insert Question(item[=].item[=].,pregnancy_date_reported,Date pregnancy reported,date,true)
* insert Question(item[=].item[=].,pregnancy_date_reported,Place pregnancy reported,string,true)
* insert Question(item[=].item[=].,pregnancy_delivery_place,Delivery place,string,true)

* insert Question(item[=].item[=].,pregnancy_outcomes,Pregnancy outcomes,group,true)
* insert Question(item[=].item[=].item[=].,pregnancy_outcome_code,Pregnancy outcome code,choice,true)
* item[=].item[=].item[=].item[=].answerValueSet = Canonical (vs-hiv-pregnancy-outcome)


* insert Question(item[=].item[=].,pregnancy_delivery_date,Delivery date,date,true)
* item[=].item[=].item[=].enableWhen.question = "pregnancy_outcome_code"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #2
* insert Question(item[=].item[=].,pregnancy_gestation_at_delivery,Gestation age at delivery (weeks\),integer,true)
* item[=].item[=].item[=].enableWhen.question = "pregnancyOutcomeCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #2

* insert Question(item[=].item[=].,children,Births,group,true)
* item[=].item[=].item[=].enableWhen.question = "pregnancyOutcomeCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #2

* insert Question(item[=].item[=].item[=].,children.birth_weight,Child weight at birth,decimal,false)
* insert Question(item[=].item[=].item[=].,children.birth_defects,Birth defects,open-choice,true)
* item[=].item[=].item[=].item[=].answerValueSet = "#BirthDefects"
* insert Question(item[=].item[=].item[=].,children.hiv_status,HIV status,choice,false)
* item[=].item[=].item[=].item[=].answerValueSet = "#ChildHIVStatus"
* insert Question(item[=].item[=].item[=].,children.hiv_diagnosis_date,Child HIV diagnosis date,date,false)
* item[=].item[=].item[=].item[=].enableWhen.question = "children.hiv_status"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = #1

* insert Question(item[=].item[=].item[=].,child_arv_start_date,Child ARV start date,date,false)
* item[=].item[=].item[=].item[=].enableWhen.question = "children.hiv_status"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = #1


* insert Question(item[=].,death,Patient death,group,false)
* insert Question(item[=].item[=].,death.date,Date of death,date,false)
* insert Question(item[=].item[=].,death.cause,Cause of death,open-choice,false)


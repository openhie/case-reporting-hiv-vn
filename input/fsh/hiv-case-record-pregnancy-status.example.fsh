Instance: a-pregnancy-status
InstanceOf: PregnancyStatus
//Usage: #inline
* subject = Reference (test-hiv-patient)
* status = #final
* code = CSHIVPregnancyOutcome#unborn
* issued = "2013-04-05T15:30:10+07:00"
/*
* component[time][+].code = SCT#248957007
* component[time][=].valueDateTime = "2013-03-05T15:30:10+07:00"

* component[time][+].code = SCT#31676001
* component[time][=].valueDateTime = "2013-04-05T15:30:10+07:00"

* component[time][+].code = CSHIVCommon#birthDateOfChild
* component[time][=].valueDateTime = "2013-04-05T15:30:10+07:00"

* component[arvTreatmentStatusForChild][+].code = CSARVTreatmentStatus#yes
* component[arvTreatmentStatusForChild][=].valueDateTime = "2013-04-05T15:30:10+07:00"

* component[hivTestResultForChild][+].code = $LOINC#LA11882-0
* component[hivTestResultForChild][=].valueDateTime = "2013-04-05T15:30:10+07:00"
*/ 
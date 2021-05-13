Instance: a-hiv-diagnosis-observation
InstanceOf: HIVDiagnosisObservation

* subject = Reference (test-hiv-patient)
* status = #final
* code = SCT#165816005
* effectiveDateTime = "2013-04-05T15:30:10+07:00"
* component[time][+].code = SCT#399445004
* component[time][=].valueDateTime = "2013-02-05T15:30:10+07:00"


Instance: an-aids-diagnosis-observation
InstanceOf: AIDSDiagnosisObservation
* subject = Reference (test-hiv-patient)
* status = #final
* code = SCT#10828004
* effectiveDateTime = "2013-04-05T15:30:10+07:00"
* component[time][+].code = SCT#399445004
* component[time][=].valueDateTime = "2013-02-05T15:30:10+07:00"
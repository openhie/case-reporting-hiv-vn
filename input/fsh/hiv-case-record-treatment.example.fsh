Instance: a-treatment-record
InstanceOf: HIVTreatment

* subject = Reference (test-hiv-patient)
* status = #draft

* intent = #order
* period[+].start = "2013-04-05T15:30:10+07:00"
* period[=].end = "2019-04-05T15:30:10+07:00"
* category[+] = CSTreatmentPatientCategory#register
* category[+] = CSTreatmentStatus#treatment


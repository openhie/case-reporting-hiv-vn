Instance: a-hiv-viral-load
InstanceOf: ViralLoad
//Usage: #inline
* subject = Reference (test-hiv-patient)
* status = #final
* code = CSIndications#1
* issued = "2013-04-05T15:30:10+07:00"
* valueInteger = 10

* component[time][+].code = SCT#399445004
* component[time][=].valueDateTime = "2013-02-05T15:30:10+07:00"
* component[viralLoadGroup][+].code = CSViralLoadGroup#1
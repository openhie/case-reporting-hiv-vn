Instance: a-recency-result
InstanceOf: HIVRecencyResult
//Usage: #inline
* subject = Reference (test-hiv-patient)
* status = #final
* code = RecencyRITAresult#newInfection
* issued = "2013-04-05T15:30:10+07:00"
* hasMember = Reference(a-hiv-viral-load)

* component[time][+].code = SCT#399445004
* component[time][=].valueDateTime = "2013-03-05T15:30:10+07:00"

* component[rtriResult][+].code = RecencyRITAresult#infection
* component[rtriResult][=].valueDateTime = "2013-04-05T15:30:10+07:00"
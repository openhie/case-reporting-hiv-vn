Instance: id
InstanceOf: Provenance
Usage: #example
* target = Reference(a-recency-result)
* occurredDateTime = "2020-10-22T14:43:23.413+00:00"
* recorded = "2020-11-27T08:39:24+10:00"
* reason.text = "FirstImport_UUID"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#assembler
* agent[=].who = Reference("system1")
* agent[=].id = "ImportFilter"
 
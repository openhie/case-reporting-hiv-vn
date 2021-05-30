Profile:        HIVRecencyResult
Parent:         Observation
Id:             hiv-recency-result
Title:          "HIV Recency result"
Description:    """
    This profile allows the exchange of a patient's hiv recency test"""
* code from VSRecencyRITAResult
* specimen MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the type of component"
* component contains
    time 0..1 and
    rtriResult 0..1

* component[time].code 1..1
* component[time].code only CodeableConcept
* component[time].code from VSCommonDate
* component[time].value[x] only dateTime

* component[rtriResult].code 1..1
* component[rtriResult].code only CodeableConcept
* component[rtriResult].code from VSRecencyRTRIResult
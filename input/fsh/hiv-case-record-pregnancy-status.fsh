Profile:        PregnancyStatus
Parent:         Observation
Id:             pregnancy-status
Title:          "Pregnancy status"
Description:    "Pregnancy status."
* code from HIVPregnancyStatus

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the type of component"
* component contains
    time 0..* and
    arvTreatmentStatusForChild 0..1 and
    hivTestResultForChild 0..1

* component[time].code 1..1
* component[time].code only CodeableConcept
* component[time].code from VSDateComponent
* component[time].value[x] only dateTime

* component[arvTreatmentStatusForChild].code 1..1
* component[arvTreatmentStatusForChild].code only CodeableConcept
* component[arvTreatmentStatusForChild].code from ARVTreatmentStatus
* component[arvTreatmentStatusForChild].value[x] only dateTime

* component[hivTestResultForChild].code 1..1
* component[hivTestResultForChild].code only CodeableConcept
* component[hivTestResultForChild].code from HIVRapidTestResults
* component[hivTestResultForChild].value[x] only dateTime
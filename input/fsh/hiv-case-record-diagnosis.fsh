

Profile:        AIDSDiagnosisObservation
Parent:         Observation
Id:             aids-diagnosis-observation
Title:          "HIV Recency result"
Description:    """
    This profile allows the exchange of a patient's hiv recency test"""
* code from VSDiagnosisResults
* specimen MS
* effectiveDateTime MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the type of component"
* component contains
    time 0..1

* component[time].code 1..1
* component[time].code only CodeableConcept
* component[time].code from VSCommonDate
* component[time].value[x] only dateTime


Profile:        HIVDiagnosisObservation
Parent:         Observation
Id:             hiv-diagnosis-observation
Title:          "HIV Recency result"
Description:    """
    This profile allows the exchange of a patient's hiv recency test"""
* specimen MS
* code from  VSDiagnosisResults
* effectiveDateTime MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the type of component"
* component contains
    time 0..1

* component[time].code 1..1
* component[time].code only CodeableConcept
* component[time].code from VSCommonDate
* component[time].value[x] only dateTime
Profile:        CD4Observation
Parent:         Observation
Id:             hiv-cd4-observation
Title:          "CD4 Observation"
Description:    """
    This profile allows the exchange of a patient's CD$ test and results"""
* code = SCT#24655002
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
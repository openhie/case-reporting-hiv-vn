Profile:        ViralLoad
Parent:         Observation
Id:             hiv-viral-load
Title:          "HIV viral load"
Description:    "HIV viral load."
* code from VSIndications
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the type of component"
* component contains
    time 0..1 and
    viralLoadGroup 0..1

* component[time].code 1..1
* component[time].code only CodeableConcept
* component[time].code from VSCommonDate
* component[time].value[x] only dateTime

* component[viralLoadGroup].code 1..1
* component[viralLoadGroup].code only CodeableConcept
* component[viralLoadGroup].code from VSViralLoadGroup

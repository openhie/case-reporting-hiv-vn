
Profile:        HCVDiagnosisObservation
Parent:         Observation
Id:             hcv-diagnosis-observation
Title:          "HIV Diagnosis result"
Description:    """
    This profile allows the exchange of a statement of a patient's hiv diagnosis"""
* specimen MS
// todo: need check sushi syntax
// * code from http://openhie.org/fhir/openhie.vn.case-reporting.hiv/CodeSystem/VSDiagnosisResults
* effectiveDateTime MS

* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer ^slicing.description = "Slice based on the type or profile of resource"
* performer contains
    Organization 0..1 MS
* performer[Organization] only Reference(Organization)


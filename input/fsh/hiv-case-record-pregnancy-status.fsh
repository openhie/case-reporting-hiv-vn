Alias: $RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Profile:        PregnancyStatus
Parent:         Observation
Id:             pregnancy-status
Title:          "Pregnancy status"
Description:    "Pregnancy status."
* code from VSHIVPregnancyOutcome
* issued MS // 1 date_reported
// * extension contains http://hl7.org/fhir/StructureDefinition/event-location MS // 2. delivery place
// * extension contains place_reported
* code MS // 4 outcome_code
* effectiveDateTime MS // 5. delivery date

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false   // can be omitted, since false is the default
* component ^slicing.description = "Slice based on the component.code pattern"

* component contains
    gest_age 0..1 MS

* component[gest_age].code = #76516-4	
* component[gest_age].value[x] only Quantity	
* component[gest_age].valueQuantity.value MS // 6.	

Profile: HIVChildPatient 
Parent: Patient

Profile: WeightObservation
Parent: Observation

Profile: ProblemsObservation
Parent: Observation

Profile: HIVIndexRelatedPerson  
Parent: RelatedPerson
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#CHILD
* relationship from HIVRelationshipTypesVS


ValueSet: HIVRelationshipTypesVS
Title: "Relationship types"
Description:  "Types of relationships between patients and related persons."
* $RoleCode#CHILD "Child"
// other values will be for index
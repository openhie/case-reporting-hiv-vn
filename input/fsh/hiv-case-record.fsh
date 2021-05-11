Alias:   SCT = http://snomed.info/sct

Alias: $CommPreference = http://hl7.org/fhir/StructureDefinition/patient-preferenceType
Alias: $GenderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity



Profile:        HIVPatient
Parent:         Patient
Id:             hiv-patient
Title:          "HIV Patient"
Description:    """ 
    This Patient profile allows the exchange of patient information, including all the data associated with HIV patients"""
* extension contains
    Ethnicity named species 0..1 and
    $CommPreference named comm-preference 0..1 MS and
    $GenderIdentity named genderIdentity 0..1 MS

* extension[Ethnicity] MS
* birthDate MS
* name MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type of identifier"

* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice based on the type of address"


* identifier contains
    art 0..* and
    theCCCD 0..* and
    soCMTND 0..* and
    theBHXH 0..* and
    soHoChieu 0..* and
    BanglaiXe 0..*
* identifier[art].system 1..1
* identifier[art].system = "https://basespecs.vn/NamingSystem/ARTIdentifiers" (exactly)
* identifier[art].value 1..1
* identifier[theCCCD].system 1..1
* identifier[theCCCD].system = "https://basespecs.vn/NamingSystem/NationalID" (exactly)
* identifier[theCCCD].value 1..1
* identifier[soCMTND].system 1..1
* identifier[soCMTND].system = "https://basespecs.vn/NamingSystem/NationalID" (exactly)
* identifier[soCMTND].value 1..1
* identifier[theBHXH].system 1..1
* identifier[theBHXH].system = "https://basespecs.vn/NamingSystem/InsuranceNumbers" (exactly)
* identifier[theBHXH].value 1..1
* identifier[soHoChieu].system 1..1
* identifier[soHoChieu].system = "https://basespecs.vn/NamingSystem/PassportNumbers" (exactly)
* identifier[soHoChieu].value 1..1
* identifier[BanglaiXe].system 1..1
* identifier[BanglaiXe].system = "https://basespecs.vn/NamingSystem/DriverID" (exactly)
* identifier[BanglaiXe].value 1..1

* address contains
   Temporary 0..1 and 
   Permanent 0..1

* address[Temporary].use = #temp (exactly)
* address[Permanent].use = #home (exactly)

Extension: Ethnicity
Id: vs-vn-ethnicity
Title: "Ethnicity"
Description: "Ethnicity."
* value[x] only CodeableConcept
* valueCodeableConcept from VietnamEthnicity (extensible)

Extension:  SpecimenCollectionPlace
Id: ext-specimen-collection-place
Title: "Specimen Collection Place"
Description: "Specimen Collection Place."
* value[x] only CodeableConcept or Reference
* valueCodeableConcept from VietnamEthnicity (extensible)

Profile:        HIVRiskFactor
Parent:         Condition
Id:             hiv-risk-factor
Title:          "HIV Risk Behavior"
Description:    """ 
    This profile allows the exchange of patient's risk behaviors"""


Profile:        HIVSpecimen
Parent:         Specimen
Id:             hiv-specimen
Title:          "HIV specimen"
Description:    "The specimen used for the result"
* extension contains SpecimenCollectionPlace named species 0..1
* extension[SpecimenCollectionPlace] MS
* collection.collectedDateTime MS


Profile:        HIVCondition
Parent:         Condition
Id:             hiv-condition
Title:          "HIV Condition"
Description:    """ 
    This profile allows the exchange of a patient's hiv diagnosis"""

Profile:        HIVDiagnosisObservation
Parent:         Observation
Id:             hiv-diagnosis-observation
Title:          "HIV Recency result"
Description:    """ 
    This profile allows the exchange of a patient's hiv recency test"""
* code from HIVRapidTestResults
* specimen MS
//date of specimencollection
//place of specimencollection
* effectiveDateTime MS
//result valueCodeableConcept? - valueBoolean?
//* contained[0] only HIVSpecimen


Profile:        ARVCarePlan
Parent:         CarePlan
Id:             hiv-arv-careplan
Title:          "ARVCarePlan"
Description:    """ 
    This profile allows the exchange of a patient's ARV treatment"""


Profile:        ARVTherapySummary
Parent:         MedicationStatement
Id:             arv-therapy-summary
Title:          "ART therapy summary"
Description:    "ART therapy summary."
//* code from HIVRecencyResults





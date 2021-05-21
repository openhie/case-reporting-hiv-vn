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
    VietnamEthnicity named species 0..1 and
    $CommPreference named comm-preference 0..1 MS and
    $GenderIdentity named genderIdentity 0..1 MS

* extension[VietnamEthnicity] MS
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

///* address[Temporary].use = #temp (exactly)
//* address[Permanent].use = #home (exactly)

Extension: VietnamEthnicity
Id: ext-vn-ethnicity
Title: "Vietnam Ethnicity "
Description: "Vietnam Ethnicity"
* value[x] only CodeableConcept
* valueCodeableConcept from VSVietnamEthnicity (extensible)

Extension:  SpecimenCollectionPlace
Id: ext-specimen-collection-place
Title: "Specimen Collection Place"
Description: "Specimen Collection Place."
* value[x] only CodeableConcept or Reference
* valueCodeableConcept from VSAdministrativeAddress (extensible)

Extension: VNAdministrativeAddress
Id: vn-administrative-address
Title: "Vietnam Administrative Address"
Description: "Vietnam Administrative Address."

* extension contains
    province 0..1 MS and
    district 0..1 MS and
    commune 0..1 MS
* extension[province].value[x] only CodeableConcept
* extension[district].value[x] only CodeableConcept
* extension[commune].value[x] only CodeableConcept

// Definitions of in-line extensions
* extension[province] ^short = " province residence address "
* extension[province] ^definition = "provincial residence address."
* extension[district] ^short = "district residence address"
* extension[district] ^definition = "district residence address."
* extension[commune] ^short = "Commune residence address"
* extension[commune] ^definition = "Commune residence address."


ValueSet: VSAdministrativeAddress
Id: vs-vn-administrativeaddress
Title: "Vietnam Administrative Address"
Description:  "Thông tin địa danh hành chính - Theo ban hành Danh mục Dân tộc của Tổng cục thống kê"
* ^status = #draft


Profile:        HIVRiskFactor
Parent:         Condition
Id:             hiv-risk-factor
Title:          "HIV Risk Behavior"
Description:    """ 
    This profile allows the exchange of patient's risk behaviors"""
* category from VSHIVRiskBehavior


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


Profile:        HIVKeyPopulation
Parent:         Condition
Id:             hiv-key-population
Title:          "HIV key population"
Description:    """
    This profile allows the patient's key population"""
* category from VSHIVRiskPopulation

Profile:        HIVTransmissionRoute
Parent:         Condition
Id:             hiv-transmission-route
Title:          "HIV Transmission route"
Description:    """
    This profile allows the patient's transmission route"""
* category from VSHIVTransmissionRoute

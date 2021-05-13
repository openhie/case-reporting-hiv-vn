Instance: cs-treatment-patient-category
InstanceOf: CodeSystem
Title: "Category of the patient"
Usage: #example
Description:  "CodeSystem - Category of the patient"
* name = "Category of the patient"
* status = #draft
* content = #complete
* insert Code(register , Register, Đăng ký mới  )
* insert Code(reRegister, Re-Register, Đăng ký lại )
* insert Code(transfer, Transfer, Chuyển đến )

CodeSystem:  CSTreatmentPatientCategory
Id: cs-treatment-patient-category
Title: "Category of the patient"
Description: "CodeSystem - Category of the patient"
* #register "Register" "New Register"
* #reRegister "Re-Register" "Patient re-registration"
* #transfer "transfer" "Transfer"

Instance: cs-treatment-status
InstanceOf: CodeSystem
Title: "Status of treatment process"
Usage: #example
Description:  "CodeSystem - Status of treatment process"
* name = "Status of treatment process"
* status = #draft
* content = #complete
* insert Code(drop, Drop out, bỏ trị  )
* insert Code(dead, Dead, Tử vong  )
* insert Code(transfer, Transfer, Bệnh nhân chuyển đi )
* insert Code(treatment, Treatment given, Đang được điều trị  )

CodeSystem:  CSTreatmentStatus
Id: cs-treatment-status
Title: "Treatment status"
Description: "CodeSystem - Treatment status"
* #register "drop" "patient drop out"
* #reRegister "dead" "Patient dead"
* #transfer "transfer" "Transfer"
* #treatment "treatment" "treatment given"

ValueSet: VSTreatmentCategory
Id: vs-treatment-category
Title: "Category of the treatment"
Description:  "Valueset - Category of the treatment"
* include codes from system CSTreatmentPatientCategory
* include codes from system CSTreatmentStatus
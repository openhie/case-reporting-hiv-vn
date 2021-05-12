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

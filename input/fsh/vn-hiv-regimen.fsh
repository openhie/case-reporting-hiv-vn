CodeSystem: CSVietnamRegimen
Id: vs-vn-regimen
Title: "CodeSystem Vietnam HIV Regimen"
Description:  "CodeSystem - Vietnam HIV Regimen"

* #reg001 "(TDF/3TC/DTG 300/300/50)" "Dùng cho Người lớn"
* #reg002 "(TDF/3TC/EFV 300/300/400)" "Dùng cho Người lớn"
* #reg003 "(TDF/3TC/EFV 300/300/600)" "Dùng cho Người lớn"
* #reg004 "(ZDV/3TC 300/150)(EFV 600)" "Dùng cho Người lớn"
* #reg005 "(ZDV/3TC 300/150)(EFV 200)" "Dùng cho Người lớn"
* #reg006 "(ZDV/3TC/NVP 300/150/200)" "Dùng cho Người lớn"
* #reg007 "(ABC 300)(3TC 150)(DTG 50)" "Dùng cho Người lớn"
* #reg008 "(TDF 300)(3TC 150)(RAL 400)" "Dùng cho Người lớn"
* #reg009 "(TDF/FTC 300/200)(RAL 400)" "Dùng cho Người lớn"
* #reg010 "(TAF 25)(3TC 150)(DTG 50)" "Dùng cho Người lớn"
* #reg011 "(TDF/FTC 300/200)(EFV 600)" "Dùng cho Người lớn"
* #reg012 "(ZDV/3TC 300/150)(LPV/r 100/25)" "Dùng cho Người lớn"
* #reg013 "(ZDV/3TC 300/150)(LPV/r 200/50)" "Dùng cho Người lớn"
* #reg014 "(ZDV/3TC 300/150)(DTG 50)" "Dùng cho Người lớn"
* #reg015 "(ZDV/3TC 300/150)(ATV 300)(RTV 100)" "Dùng cho Người lớn"
* #reg016 "(ZDV/3TC 300/150)(DRV 600)(RTV 100)" "Dùng cho Người lớn"
* #reg017 "(TDF/FTC 300/200)(DTG 50)" "Dùng cho Người lớn"
* #reg018 "(TDF/FTC 300/200)(ATV 300)(RTV 100)" "Dùng cho Người lớn"
* #reg019 "(TDF/FTC 300/200)(DRV 600)(RTV 100)" "Dùng cho Người lớn"
* #reg020 "(TDF 300)(3TC 150)(ATV 300)(RTV 100)" "Dùng cho Người lớn"
* #reg021 "(TDF 300)(3TC 150)(DRV 600)(RTV 100)" "Dùng cho Người lớn"
* #reg022 "(TDF 300)(3TC 150)(LPV/r 100/25)" "Dùng cho Người lớn"
* #reg023 "(TDF 300)(3TC 150)(LPV/r 200/50)" "Dùng cho Người lớn"
* #reg024 "(TDF 300)(3TC 150)(LPV/r 80/20mg/ml)" "Dùng cho Người lớn"
* #reg025 "(TDF/FTC 300/200)(LPV/r 100/25)" "Dùng cho Người lớn"
* #reg026 "(TDF/FTC 300/200)(LPV/r 200/50)" "Dùng cho Người lớn"
* #reg027 "(TDF/FTC 300/200)(LPV/r 80/20mg/ml)" "Dùng cho Người lớn"
* #reg028 "(ABC 300)(ZDV/3TC 300/150)" "Dùng cho Người lớn"
* #reg029 "(ABC 300)(ZDV/3TC 60/30)" "Dùng cho Người lớn"
* #reg030 "(ABC/3TC 60/30)(DTG 50)" "Dùng cho Trẻ em"
* #reg031 "(ABC/3TC 60/30)(LPV/r 100/25)" "Dùng cho Trẻ em"
* #reg032 "(ABC/3TC 60/30)(LPV/r 200/50)" "Dùng cho Trẻ em"
* #reg033 "(ABC/3TC 60/30)(LPV/r 80/20mg/ml)" "Dùng cho Trẻ em"
* #reg034 "(ZDV/3TC/NVP 60/30/50)" "Dùng cho Trẻ em"
* #reg035 "(ABC/3TC 60/30)(EFV 200)" "Dùng cho Trẻ em"
* #reg036 "(ABC/3TC 60/30)(EFV 200)(EFV 50)" "Dùng cho Trẻ em"
* #reg037 "(ABC/3TC 60/30)(EFV 50)" "Dùng cho Trẻ em"
* #reg038 "(ZDV/3TC 60/30)(EFV 200)" "Dùng cho Trẻ em"
* #reg039 "(ZDV/3TC 60/30)(EFV 200)(EFV 50)" "Dùng cho Trẻ em"
* #reg040 "(ZDV/3TC 60/30)(EFV 50)" "Dùng cho Trẻ em"
* #reg041 "(ZDV/3TC 60/30)(RAL 25)" "Dùng cho Trẻ em"
* #reg042 "(ZDV/3TC 60/30)(RAL 100)" "Dùng cho Trẻ em"
* #reg043 "(ZDV/3TC 60/30)(LPV/r 100/25)" "Dùng cho Trẻ em"
* #reg044 "(ZDV/3TC 60/30)(LPV/r 80/20mg/ml)" "Dùng cho Trẻ em"
* #reg045 "(ZDV/3TC 60/30)(DTG 50)" "Dùng cho Trẻ em"
* #reg046 "(ABC/3TC 60/30)(RAL 25)" "Dùng cho Trẻ em"
* #reg047 "(ABC/3TC 60/30)(RAL 100)" "Dùng cho Trẻ em"

ValueSet: VSVietnamRegimen
Id: vs-vn-regimen
Title: "ValueSet Vietnam HIV Regimen"
Description:  "ValueSet - Vietnam HIV Regimen"
* include codes from system CSVietnamRegimen

//-------------------------------------------------------------
CodeSystem: CSRegimenLevel
Id: cs-vn-regimenlevel
Title: "CodeSystem Vietnam HIV Regimen Level "
Description:  "CodeSystem - Vietnam HIV Regimen Level"

* #lvl1 "Bậc Một"
* #lvl2 "Bậc Hai"
* #lvl3 "Bậc Ba"

ValueSet: VSRegimenLevel
Id: vs-vn-regimenlevel
Title: "ValueSet Vietnam HIV Regimen Level "
Description:  "ValueSet - Vietnam HIV Regimen Level"
* include codes from system CSRegimenLevel
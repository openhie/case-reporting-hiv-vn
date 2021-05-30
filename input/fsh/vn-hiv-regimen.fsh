CodeSystem: CSVietnamRegimen
Id: cs-vn-regimen
Title: "CodeSystem Vietnam HIV Regimen"
Description:  "CodeSystem - Vietnam HIV Regimen"

* #reg001 "(TDF/3TC/DTG 300/300/50)"
* #reg002 "(TDF/3TC/EFV 300/300/400)"
* #reg003 "(TDF/3TC/EFV 300/300/600)"
* #reg004 "(ZDV/3TC 300/150)(EFV 600)"
* #reg005 "(ZDV/3TC 300/150)(EFV 200)"
* #reg006 "(ZDV/3TC/NVP 300/150/200)"
* #reg007 "(ABC 300)(3TC 150)(DTG 50)"
* #reg008 "(TDF 300)(3TC 150)(RAL 400)"
* #reg009 "(TDF/FTC 300/200)(RAL 400)"
* #reg010 "(TAF 25)(3TC 150)(DTG 50)"
* #reg011 "(TDF/FTC 300/200)(EFV 600)"
* #reg012 "(ZDV/3TC 300/150)(LPV/r 100/25)"
* #reg013 "(ZDV/3TC 300/150)(LPV/r 200/50)"
* #reg014 "(ZDV/3TC 300/150)(DTG 50)"
* #reg015 "(ZDV/3TC 300/150)(ATV 300)(RTV 100)"
* #reg016 "(ZDV/3TC 300/150)(DRV 600)(RTV 100)"
* #reg017 "(TDF/FTC 300/200)(DTG 50)"
* #reg018 "(TDF/FTC 300/200)(ATV 300)(RTV 100)"
* #reg019 "(TDF/FTC 300/200)(DRV 600)(RTV 100)"
* #reg020 "(TDF 300)(3TC 150)(ATV 300)(RTV 100)"
* #reg021 "(TDF 300)(3TC 150)(DRV 600)(RTV 100)"
* #reg022 "(TDF 300)(3TC 150)(LPV/r 100/25)"
* #reg023 "(TDF 300)(3TC 150)(LPV/r 200/50)"
* #reg024 "(TDF 300)(3TC 150)(LPV/r 80/20mg/ml)"
* #reg025 "(TDF/FTC 300/200)(LPV/r 100/25)"
* #reg026 "(TDF/FTC 300/200)(LPV/r 200/50)"
* #reg027 "(TDF/FTC 300/200)(LPV/r 80/20mg/ml)"
* #reg028 "(ABC 300)(ZDV/3TC 300/150)"
* #reg029 "(ABC 300)(ZDV/3TC 60/30)"
* #reg030 "(ABC/3TC 60/30)(DTG 50)"
* #reg031 "(ABC/3TC 60/30)(LPV/r 100/25)"
* #reg032 "(ABC/3TC 60/30)(LPV/r 200/50)"
* #reg033 "(ABC/3TC 60/30)(LPV/r 80/20mg/ml)"
* #reg034 "(ZDV/3TC/NVP 60/30/50)"
* #reg035 "(ABC/3TC 60/30)(EFV 200)"
* #reg036 "(ABC/3TC 60/30)(EFV 200)(EFV 50)"
* #reg037 "(ABC/3TC 60/30)(EFV 50)"
* #reg038 "(ZDV/3TC 60/30)(EFV 200)"
* #reg039 "(ZDV/3TC 60/30)(EFV 200)(EFV 50)"
* #reg040 "(ZDV/3TC 60/30)(EFV 50)"
* #reg041 "(ZDV/3TC 60/30)(RAL 25)"
* #reg042 "(ZDV/3TC 60/30)(RAL 100)"
* #reg043 "(ZDV/3TC 60/30)(LPV/r 100/25)"
* #reg044 "(ZDV/3TC 60/30)(LPV/r 80/20mg/ml)"
* #reg045 "(ZDV/3TC 60/30)(DTG 50)"
* #reg046 "(ABC/3TC 60/30)(RAL 25)"
* #reg047 "(ABC/3TC 60/30)(RAL 100)"

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

* #lvl1 "Level 1"
* #lvl2 "Level 2"
* #lvl3 "Level 3"

ValueSet: VSRegimenLevel
Id: vs-vn-regimenlevel
Title: "ValueSet Vietnam HIV Regimen Level "
Description:  "ValueSet - Vietnam HIV Regimen Level"
* include codes from system CSRegimenLevel
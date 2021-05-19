Alias: SCT = http://snomed.info/sct



Instance: HIVOccupations2
InstanceOf: ValueSet
Description: "Occupation Value Set"
Title: "Occupation Value Set"
Usage: #example
* name = "HIVOccupationCodes2"
* status = #draft

* compose.include[+].system = SCT 
* compose.include[=].concept[+].code = SCT#106538001
* compose.include[=].concept[=].designation[+].language = #vi-VN
* compose.include[=].concept[=].designation[=].value = "XXXXX"
* insert VSCodeDef(SCT,106538001,Driver,Lái xe)

/*
* SCT#106538001 "Lái xe"
* SCT#106400003 "Ngư dân"
* SCT#106388008 "Người làm nông nghiệp"
* SCT#106541005 "Công nhân"
* SCT#310892005 "Cán bộ, chiến sỹ thuộc lực lượng vũ trang nhân dân"
* SCT#413327003 "Học sinh, sinh viên"
* SCT#449344001 "Bán dâm"
* SCT#159799000 "Nữ bán dâm"
* SCT#159800001 "Nam bán dâm"
* SCT#73438004 "Thất nghiệp"
* SCT#184119001 "Nghề khác"
*/
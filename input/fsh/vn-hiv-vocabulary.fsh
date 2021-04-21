Alias: SCT = http://snomed.info/sct


RuleSet: Code(code,display,vn)
* concept[+].code = #{code}
* concept[=].display = "{display}"
* concept[=].designation[+].language = #vi-VN
* concept[=].designation[=].value = "{vn}"

RuleSet: CodeDef(code,display,definition,vn)
* concept[+].code = #{code}
* concept[=].display = "{display}"
* concept[=].definition = "{definition}"
* concept[=].designation[+].language = #vi-VN
* concept[=].designation[=].value = "{vn}"



Instance: PregnancyOutcomeCodes
InstanceOf: ValueSet
Description: "Pregnancy Outcome Codes"
Title: "Pregnancy Outcome Codes"
Usage: #inline
* name = "PregnancyOutcomeCodes"
* status = #draft


Instance: BirthDefects
InstanceOf: ValueSet
Description: "Birth Defects"
Title: "Pregnancy Outcome Codes"
Usage: #inline
* name = "BirthDefects"
* status = #draft


Instance: ChildHIVStatus
InstanceOf: ValueSet
Description: "Child HIV Status"
Title: "Child HIV Status"
Usage: #inline
* name = "ChildHIVStatus"
* status = #draft



// Add content from here on

Instance: cs-occupation
InstanceOf: CodeSystem
Title: "Occupation"
Usage: #example
Description:  "CodeSystem - occupations"
* name = "Occupations"
* status = #draft
* content = #complete
* insert Code(10,Service workers exploited for sex work,Nhân viên cơ sở kinh doanh dịch vụ dễ bị lợi dụng để hoạt động mại dâm)
* insert Code(4,Drivers,Lái xe)
* insert Code(14,Fishermen,Ngư dân)
* insert Code(13,Agricultural workers,Người làm nông nghiệp)
* insert Code(6,Intellectual,Trí thức)
* insert Code(2,Workers,Công nhân)
* insert Code(3,Officers and soldiers,Cán bộ\, chiến sỹ thuộc lực lượng vũ trang nhân dân)
* insert Code(5,Public servants or workers with labor contracts,Công chức\, viên chức\, người lao động có hợp đồng lao động theo quy định của pháp luật)
* insert Code(9,Other occupation,Nghề khác)
* insert Code(7,Students,Học sinh\, sinh viên)
* insert Code(12,Children,Trẻ em)
* insert Code(11,Children under 5,Trẻ em dưới 5 tuổi)
* insert Code(16,Workers without labor contract,Lao động tự do)
* insert Code(8,Out of work,Thất nghiệp)
* insert Code(15,Prisoners,Phạm nhân)
* insert Code(17,Free,Tự do)


Instance: cs-gender
InstanceOf: CodeSystem
Title: "Gender"
Usage: #example
Description:  "CodeSystem - gender"
* name = "Gender"
* status = #draft
* content = #complete
* insert CodeDef(male,Male,Client identifies as male,Nam)
* insert CodeDef(female,Female,Client identifies as female,Nữ)
* insert CodeDef(other,other,Client has another gender identity,Khác)
* insert CodeDef(unknown,unknown,Gender is unknown,Không rõ)



ValueSet: VSSymptoms
Title: "Symptoms"
Description:  "Symptoms associated with HIV case"
* SCT#248427009 "Sốt kéo dài"

RuleSet: Code(code,display,vn)
* concept[+].code = #{code}
* concept[=].display = "{display}"
* concept[=].designation[+].language = #vi-VN
* concept[=].designation[=].value = "{vn}"

// Vietnamese CodeSystem fucntion 
RuleSet: CodeDef(code,display,definition,vn)
* concept[+].code = #{code}
* concept[=].display = "{display}"
* concept[=].definition = "{definition}"
* concept[=].designation[+].language = #vi-VN
* concept[=].designation[=].value = "{vn}"

// Vietnamese Valueset function from standard CodeSystem e.g. SNONED-CT, LOINC,
RuleSet: VSCodeDef(system,code,display,vn)
* compose.include[+].system = {system} 
* compose.include[=].concept[+].code = #{code}
* compose.include[=].concept[=].display = "{display}"
* compose.include[=].concept[=].designation[+].language = #vi-VN
* compose.include[=].concept[=].designation[=].value = "{vn}"

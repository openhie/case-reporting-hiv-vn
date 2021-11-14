Patient matching


### Data elements used in patient matching
The following elements are use in the patient matching 

{:class="table table-bordered table-condensed table-striped"}
|Data Element ID|Data Element Name|Description and justification|
|---|---|---|
|patient.name|Patient Full Name|The patient name expressed in its normal form, i.e. with accents and correct order of names|
|patient.nationa_id_nr|National ID number|The patient name expressed in its normal form, i.e. with accents and correct order of names|
|patient.social_insurance_nr|Social Health Insurance Number|The patient name expressed in its normal form, i.e. with accents and correct order of names|
|patient.birthDate|Date of Birth|The patient name expressed in its normal form, i.e. with accents and correct order of names|
|patient.gender|Patient Gender|The patient name expressed in its normal form, i.e. with accents and correct order of names|


**These elements are therefore needed to be used directly, not after de-identification**


### Identity rules
> Rule 1: When HIV Info identifier matches, Patient records are considered duplicate  
> Rule 2: When national ID number and/or social health insurance number are available, when the full name matches and those IDs don't mismatch (i.e. they are matching or one of them is missing from one record), Patient records are considered duplicate. If there is a mismatch in one of them, patient records can be considered suspected duplicates  
> Rule 3: If national ID number and social health insurance number are not available, it is required to compare the combination of full name and other identifying info							


#### Usage of patient identifiers
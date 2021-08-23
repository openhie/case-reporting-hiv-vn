This publication defines a specification that supports a series of **features**, detailed by identified **use cases**, to enable case reporting for HIV.

### Features
The scope of this specification includes several expected features that can be built up from a case reporting platform. The features that are addressed are about: 

#### Monthly case report submission
* Upon a visit to a care center - for treatment or follow-up, the healthcare professional fills in a Case Report form which contains standardized data elements. The data in this form is then added to the data pool that will be used for the downstream purposes - analytics, case surveillance, etc.  

#### Bulk import monthly report data
Existing data that has been captured for example in spreadsheets, can be mapped to a similar data structure as a Case Report form, to allow legacy data to be added in a controlled manner.  

#### Process and aggregate reports
The local repository submits the case reports to the central repository. The central repository may need to perform a series of operations,
including de-duplication, reconciliation, etc. After these operations, the central repository contains a longitudinal view of each case.  

#### Extract existing EHR data  
When it is possible to extract data from local EHRs (independently of where they are hosted), a standard extract is generated.  
This is then submitted to the central repository, which can incorporate this data onto a longitudinal record.  

#### Patient matching and identity management
Given the distributed nature of chronic care and the existence of several systems, the patient identities need to be handled to ensure that each patient is unique in the system and their data is correctly associated to the patient.  

#### Case indexing and tracking  
In addition to tracking each HIV case, the data gathered can serve to monitor  potentially related cases.  

#### Alerts  
* The data in a central repository (or a local repository) can be used to provide alerts - indications about process or data quality, for example, whether a patient is missing one report, or hasn't shown for treatment, or has developed some co-morbidity. This monitoring supports increased quality of data and quality of care.

#### Analytics
* The data in a central repository is used to create population-level indicators. This can be for standardized indicators, or for ad-hoc exploration of data to identify patterns. The full governance process for these indicators is not in scope of these specifictions.

<br/>

### Use Cases 

The following use cases have been elicited from the stated business requirements and discussions. These can be used for validation of the specifications.

{:class="table table-bordered table-condensed table-striped"}
|use case|Name|Summary|
|---|---|---|
(TBC)

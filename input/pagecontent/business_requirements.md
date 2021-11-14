
The requirements for the HIV Case Reporting have been captured in a document online
https://path.ent.box.com/file/841461557178

The modules for adoption are outlined in the diagram below:
![Modules](/assets/images/reqs_diagram.png "title"){:width="100%"}

<br "CLEAR=ALL">

### I. HIV CS data submission, normalization, deduplication and storage
#### Data submission
Data will be collected from 7 systems (HIV Info, HIV IMS, dieutriarv.vn, eClinica, OPC Assist Online, PDMA, and HTC-eLog). Table 1 in the document above  describes which data from different souces could be submitted to the CS system using mediators or API developed.  

####	Data normalization
(Please see details in [Vietnam Case Reporting: Data Source Onboarding Requirements](https://docs.google.com/document/d/1MFVBqnxeHU14SHqIeiuho9613yHi0dSc8CPGfG9B77w/edit#heading=h.3ijm8ookcy7i)
Case reports will be sent from multiple data sources, across several provinces, to the HIV CS repository (HAPI Server).  Given the fact that data from different sources are developed using different data technologies and formats, data needs to be normalized.  

For this, the FHIR standard is chosen, notably:  
* a specific FHIR Questionnaire for HIV Case Survevillance in Vietnam. This questionnaire provides a software independent way of describing the data for case reporting.
* a set of FHIR resources is defined and profiled. This is the standard format for data storage and exchange.
These two approaches are compatible by means of a transformation between the Questionnaire and the other FHIR resources - data input using the Questionnaire will be transformed in the FHIR resources, thus resulting in all data ending in the same format.

####	Data mapping and de-duplication
##### Data mapping from legacy system to FHIR questionnaire

From the existing data sources (database schemas, exiting interfaces), data shall be mapped onto the FHIR Questionnaire format.
This shall include:
- Identifying which data fields from the source data system map onto the data fields defined in the Questionnaire
- Determining the detailed format and if any transformations are needed
  - data format conversions
  - code set mapping
  
##### ETL (Extract, Transform and Load)
The data transformations from legacy systems to the Questionnaire, then to FHIR resources need to be implemented in an Extract, Transform and Load (ETL) layer consisting of as adaptors, APIs, import and mediators within the interoperability layer.

##### Record linkage and de-duplication
The approach for record linkage and de-duplication will be based on services and an algorithm, which will be developed based on patient identification attributes such as: Name, date of birth, gender, address, national ID card, and health insurance number - after the necessary transformation and normalization. The algorithm should be agreed with VAAC and CDC placeholders, and suggest a confidence threshold where records can be considered fully matching and automatically merged to reduce manual workload. The services will allow this automatic merging, as well as the manual/assisted merging and necessary verification.  
The impact of data merging (i.e. onto which record to merge, the merging of adjacent records, etc.)

###	Data storage
The CS components - HAPI (data repository), Elastic Search (data mart with deidentification), data visualization tool (Kibana, and PowerBI) will be developed based on the Instant OpenHIE an microservice orchestration architecture. In the first phase of the work, Instant OpenHIE packaging of these components will be created for deployment in Vietnam. 
The above normalized data will be stored in this CS repository. De-identification service will be developed for removing personally identifiable information from the CS Repository before it is made available to the Data Mart. Replication of non-PII data mart will be conducted with the frequency of once a day.

###  II. Alert functions 

#### Alerts
The following alerts are required:
| No. | Situations | Descriptions |
|---|---|---|
1|Alerts about number of newly reported in a district in a month  |The system will have alerts in two situations:<br/> <ol><li>	Number of newly reported cases in a month > the average number of newly reporteds cases of 3 consecutive years of this district + 2SD <li> At least 3 newly reported case in a district in a month (by residence) and at least one case among them has one of the below factors:  <ul> <li>	High viral load <li>Untreated <li>Co-morbidity with TB, Hepatitis B&C, Syphilis, or Gonorrhea, ... <li>“Recent” infection by RTTI |
2|Alerts about number of “recent” infection cases |Number of “recent” cases in a district in a month > 2 
3|Alerts about cases/transmission clusters|Allow the system to analyze data of PLHIV and partners to identify and map “transmission/cases clusters” <br/>Demonstrate transmission/cases clusters in Cluster, networking cases, Graph Analysis….
4|Alerts when  patients dropped off from treatment |Allow to give alerts when patients dropped off from treatment <br/> When a patient does not have a visit three months compared to the appointment, the system will have an alert 
5|Alerts when patients have viral load >=1000 | Allow to give alerts when patients have viral load >=1000
6|Alerts when newly reported cases are not treated |Allow to give alert when a newly reported cases are not registered for treatment in any facility after 7 days of diagnosis 

<br/>

#### Data requirements
The data required for these alerts, as well as the data indicators, will be analysed and the gaps identified. The functionality and tools for this will be selected, adjusted or developed as needed.

### III. Data visualization
The data visualization will be built-in in the HIV CS system with aggregated data from data mart (de-identification).  

Personally identifiable information (such as name, detailed address, and phone number) will be removed prior to sending to the Data Mart. The frequency of sending data from the case repository into the marts for indexing is once a day.  

The data visualization will include charts, graphs and tables that present indicators agreed by stakeholders. 
The indicator definitions will be described with the respective rules, calculations and some demonstration examples for data visualization. The system allows to automatically update the data visualization to filter by criteria.  

Data visualization tools will be developed using Kibana and Power BI to show users the data from the CS system in a clear way to enable them to use it to make decisions. Kibana and Power BI should also be available for self-service development of new data visualization components by data analysts.  

User-experiences are taken into account when visualization dashboards are created as the visualization developers provide the most appropriate designs with formats, colours, fonts, layouts, etc. Visualization users/ viewers will find easy to navigate among dashboards, to filter data by conditions, to zoom-in charts,  etc.  Moreover, the visulizations may be updated based on  practical feedbacks from users.  

The datamart will have all needed input data to ensure that required indicators/ figures can be calculated and related analyses can be created and delivered on time with the best qualiy. The datamarts received data from case repository continuously with minimum time lags. The frequency of receiving data is kept customizing and optimizing based on operating conditions to have  the best working efficiencies. In addition, patients’ identity information like name, national ID, etc. will not be sent to the datarmarts to protect patients’ identity. Datamarts’ authorized users can read each patient’s records but they cannot identify who they are.  

Different levels of access for different authorized users will be discussed and agreed by VAAC and other stakeholders. VAAC and provincial CDC can access visualization for the data of the whole country. District HIV in-charge staff can access visualization for the data within its province. Commune HIV in-charge staff can access visualization for the data within its district. OPC sites can access visualization for the treatment data (treatment tab) of their facilities and other treatment facilities in the provinces.

### IV. Single sign on (SSO)
The SSO module will be used for user authentication and authorization services across HIV CS components. An application programming interface (API) and connections will be developed so that HIV Info CS system components use the SSO authentication and authorization modules.

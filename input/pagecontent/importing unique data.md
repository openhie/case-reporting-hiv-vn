Managing Case Surveillance requires data to be unique, i.e. not duplicate. Importing data from different sources presents several challenges.  
  

### Types of duplicate data
The following scenarios can cause the import of potentially duplicate data:
|#|Scenario|Description|Mitigation|
|----|----|----|----|
|1|Re-imported from the same system| If the system is exporting all the "known data" for a patient (even with some filters), some duplicate data may be imported| * accurate filtering |
|2|Data available in different systems| When data is imported from different systems, some overlaps in records may exist, e.g. patient demographics or VL results  <br/> Note that some data may be challenging to check if it is a suplicate, e.g. Viral Load Tests | |
|2|



### Avoiding duplicate data imports

Duplicate Data Imports can be addressed in the following ways:  
* **Source data filtering**: The source system may avoid presenting record entries that have already been imported by that system.  
This can be achieved for example by tracking the exported data records at the source system, so that the source system won't export an entry that it knows has been already exported.
  * This can prevent importing the data that the source system knows is duplicate. 
  * It does not prevent importing data that may be duplicate but the source system doesn't know about - for example data that is imported from different systems  

* **Source data intercepting with repository checking**: The source system may present data that is unique in that system, but the data repository may already contain that data. 
  * This requires that the data in the source system is checked against the data repository, before importing.
  * The identification of duplicate data can also be based on different criteria - either a unique entry identifier, or a 




### Solution:
* Each record will have a Provenance data object, that contains information about:
* The source system may track the timestamps for creation_date and lastUpdate_date
* 


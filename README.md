# Cascade Skill Assessment: dbt Data Engineer
Vincent Le
\
April 18, 2024
## Where in the World is Carmen Sandiego?

### Data Sources & Common Model Development

The [Github](https://github.com/vincent-tn-le/carmen_sandiego) repository containing everything used to complete the assessment.

1. Using the excel_sheets_to_csv.py file, I used the Pandas library in order to seperate out each sheet within the excel file into individual csv's per agency.
   I loaded them into Google BigQuery as my data lake and then set up a connection between BigQuery and dbt cloud. I chose to run through this project on dbt Cloud as
   opposed to locally, was in order to minimize set up needed on any reviewers end.
2. Once the raw data was loaded into dbt, I made staging models in order to map each table into the requisite mapping as provided, can be found in models folder with naming convention as 'stg\_{geography}.sql'.
Afterwards these were loaded into BigQuery as views with naming convention 'v\_{geography}.sql'. This can be seen in the BigQuery Explorer [here](https://ibb.co/Yhcm2pK).
3. For each of the Carmen Sandiego sightings, the key event would be the sighting itself. The supporting details could be seperated out into different tables to reduce redundancy, improve data integrity and make the database more readily readable. I decided to seperate out the provided schema
into the following schema that can be seen [here](https://ibb.co/MCh8H3L).

| Sighting    |             | 
| ----------- | ----------- | 
| sighting_id | Primary Key | 
| date_witness  | Date        |
| date_agent      | Date | 
| has_weapon            | Boolean            | 
| has_hat      | Boolean       | 
| has_jacket   | Boolean        | 
| behavior      | String       | 
| witness_id   | Foreign Key        | 
| agent_id      | Foreign Key       | 
| location_id   | Foreign Key        | 

| Witness    |             | 
| ----------- | ----------- | 
| witness_id | Primary Key | 
| witness_name  | String        |

| Agent      |  | 
| ---------- | ----------- |
| agent_id            | Primary Key            | 
| agent_name      | String       | 
| city_agent   | String        | 

| Location      |        | 
| ------   | -------        | 
| location_id      | Foreign Key       | 
| agency_region   | String        |
| city   | String        |
| country   | String        |
| latitude   | String        |
| longitude   | String        | 


### Analytics

a. To find which agency region Carmen would be found in for each month, I first wrote the query to calculate the count of sightings for each month and agency region, while also ranking them within each month based on the count of sightings. To get the most likely region, I limit the output to only the rows where the rank is equal to 1. This gives used

| Month | Agency Region | Count |
| ------ | -------- | ------|
| 1 | America | 341 |
| 2 | Europe|331|
|3| America|352|
|4|America|340|
|5|Europe|358|
|6|Asia|345|
|7|America|350|
|8|Europe|391|
|9|Europe|376|
|10|Europe|362|
|11|Europe|353|
|12|Asia|351|

b. To calculate this, the query calculates the count of sightings where Ms. Sandiego is observed to be armed, wearing a jacket, but not a hat using the CASE function then grouping by for each month. Then, it also calculates the total count of sightings of Ms. Sandiego for each month. To get the observed probability, I calculate it by dividing the count of desired sightings by the total count of sightings for each month.
For all of the months, we get probabilities less than 5%. So it can be concluded that it is unlikely that Carmen Sandiego would be armed, wearing a coat but not a hat. This makes sense because you'd most likely wear a hat with your coat, especially for a classy special agent like Carmen Sandiego.
\
\
c. To figure out which are Carmen's most exhibited behaviours we can do a count of each of the behaviours with a group by and then limit it to the top three after ordering the result in descending order. We find that Carmen's most exhibited behaviours are, in order, out of control, complaining and happy. 
\
\
d. We have already determined what are her three most exhibited behaviours so we can use that as a filter while we query. 
To calculate the observed probability, we have one query to determine the count of desired three most exhibited behaviours by month, and then another query to determine the count of all behaviours. Then we divide the observed by the total to determine the probabilties.
We find that for each month, there is a 100% probability that Carmen with exhibit one of her three most exhibited behaviours. 

4. The views and logic for each of the four questions are listed above. The code itself can be found in the models/analytics folder in the github. Each of the queries are built off of a joined table of all sightings from all agency regions.

### Additional Notes:
There are three additional files that can be found in the github that are not related to dbt.

- requirements.txt: The list of libraries required to run the program that will seperate out the xlsx file into different sheets.
- excel_sheets_to_csv.py: The program that uses Pandas to seperate the xlsx files into csv files for each sheet.
- tables.sql: Script for creating postgres tables for each of the agency regions, and populates the tables using local csv files. This was ultimately unused, but included because of the note that Cascade uses Postgres as the database.
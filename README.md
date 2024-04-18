# Cascade Skill Assessment: dbt Data Engineer
## Where in the World is Carmen Sandiego?

### Data Sources & Common Model Development

1. Using the excel_sheets_to_csv.py file, I used the Pandas library in order to seperate out each sheet within the excel file into individual csv's per agency.
   I loaded them into Google BigQuery as my data lake and then set up a connection between BigQuery and dbt cloud. I chose to run through this project on dbt Cloud as
   opposed to locally, was in order to minimize set up needed on any reviewers end.
2. Once the raw data was loaded into dbt, I made staging models in order to map each table into the requisite mapping as provided, can be found in models folder with naming convention as 'stg\_{geography}.sql'.
Afterwards these were loaded into BigQuery as views with naming convention 'v\_{geography}.sql'. This can be seen in the BigQuery Explorer below: ![image](https://ibb.co/Yhcm2pK)
3. 


### Analytics
For this portion of the assessment,

a.
b.
c. We find that Carmen's most exhibited behaviours are, in order, out of control, complaining and happy.
d.

import pandas as pd

df = pd.read_excel('./carmen-sightings-20220629061307.xlsx', sheet_name=None)  
for key in df.keys():
    df[key].to_csv('{}.csv'.format(key))
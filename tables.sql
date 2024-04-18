-- Creating tables for each geography in Postgres and dropping tables if they already exist

drop table if exists africa;

create table africa (
    id int,
    date_witness date,
    date_agent date,
    witness varchar(255),
    agent varchar(255),
    latitude numeric,
    longitude numeric,
    city varchar(255),
    country varchar(255),
    region_hq varchar(255),
    has_weapon boolean,
    has_hat boolean,
    has_jacket boolean,
    behavior varchar(255)
);

drop table if exists america;

create table america (
	id int,
	date_witness date,
	date_agent date,
	witness varchar(255),
	agent varchar(255),
	latitude numeric,
	longitude numeric,
	city varchar(255),
	country varchar(255),
	region_hq varchar(255),
	has_weapon boolean,
	has_hat boolean,
	has_jacket boolean,
	behavior varchar(255)
);

drop table if exists asia;

create table asia (
    id int,
    sighting date,
    报道 date,
    citizen varchar(255),
    officer varchar(255), 
    纬度 numeric,
    经度 numeric,
    city varchar(255),
    nation varchar(255),
    city_interpol varchar(255),
    has_weapon boolean,
    has_hat boolean,
    has_jacket boolean,
    behavior varchar(255)
);

drop table if exists atlantic;

create table atlantic (
    id int,
    date_witness date,
    date_agent date,
    witness varchar(255),
    agent varchar(255),
    latitude numeric,
    longitude numeric,
    city varchar(255),
    country varchar(255), 
    region_hq varchar(255),
    has_weapon boolean,
    has_hat boolean,
    has_jacket boolean,
    behavior varchar(255)
);

drop table if exists australia;

create table australia (
    id int,
    witnessed date, 
    reported date, 
    observer varchar(255),
    field_chap varchar(255),
    lat numeric,
    long numeric,
    place varchar(255),
    nation varchar(255),
    interpol_spot varchar(255),
    has_weapon boolean,
    has_hat boolean,
    has_jacket boolean,
    state_of_mind varchar(255)
);

drop table if exists europe;

create table europe (
    id int,
    date_witness date,
    date_filed date, 
    witness varchar(255),
    agent varchar(255), 
    lat_ numeric,
    long_ numeric, 
    city varchar(255),
    country varchar(255),
    region_hq varchar(255),
    "armed?" boolean,
    "chapeau?" boolean,
    "coat?" boolean, 
    observed_action varchar(255)
);

drop table if exists indian;

create table indian (
    id int,
    date_witness date,
    date_agent date,
    witness varchar(255),
    agent varchar(255),
    latitude numeric,
    longitude numeric,
    city varchar(255),
    country varchar(255), 
    region_hq varchar(255), 
    has_weapon boolean, 
    has_hat boolean, 
    has_jacket boolean,
    behavior varchar(255)
);

drop table if exists pacific;

create table pacific (
    id int,
    sight_on date,
    file_on date,
    sighter varchar(255),
    filer varchar(255),
    lat numeric,
    long numeric,
    town varchar(255), 
    nation varchar(255),
    report_office varchar(255),
    has_weapon boolean, 
    has_hat boolean,
    has_jacket boolean,
    behavior varchar(255)
);

-- Populating tables from local files corresponding sheets
\copy africa FROM /Users/vincentle/Documents/Assessment/AFRICA.csv WITH (FORMAT CSV);
\copy america FROM /Users/vincentle/Documents/Assessment/AMERICA.csv WITH (FORMAT CSV);
\copy asia FROM /Users/vincentle/Documents/Assessment/ASIA.csv WITH (FORMAT CSV);
\copy atlantic FROM /Users/vincentle/Documents/Assessment/ATLANTIC.csv WITH (FORMAT CSV);
\copy europe FROM /Users/vincentle/Documents/Assessment/EUROPE.csv WITH (FORMAT CSV);
\copy indian FROM /Users/vincentle/Documents/Assessment/INDIAN.csv WITH (FORMAT CSV);
\copy pacific FROM /Users/vincentle/Documents/Assessment/PACIFIC.csv WITH (FORMAT CSV);
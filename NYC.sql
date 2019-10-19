DROP TABLE WEATHER_NYC_2015;
DROP TABLE POLICE_DEPT_CLASSIFICATION;
DROP TABLE CRIME_NYC_2015;
DROP TABLE OFFENSE;
DROP TABLE Weather_ID

CREATE TABLE Weather_ID (
Weather_ID int PRIMARY KEY NOT NULL,
Weather_Key timestamp
);

CREATE TABLE WEATHER_NYC_2015 (
weather_ID INT references Weather_ID(Weather_ID),
temperature real,
dew_point real,
humidity real,
wind_speed real,
wind_direction_degrees int,
wind_direction varchar,
visibility real,
pressure real,
weather_condition varchar,
fog varchar,
rain varchar,
snow varchar,
hail varchar,
thunder varchar,
tornado varchar,
weather_date date,
weather_time time
);

CREATE TABLE OFFENSE (
offense_code varchar,
offense_desc varchar
);



CREATE TABLE POLICE_DEPT_CLASSIFICATION (
Police_Department_Code int PRIMARY KEY NOT NULL,
Police_Department_Desc varchar
);

CREATE TABLE CRIME_NYC_2015 (
weather_ID INT references Weather_ID(Weather_ID),
crime_id int NOT NULL,	
crime_time time,  
report_date date,	
offense_code int NOT NULL,
Offense_Desc varchar, 
Police_Department_Code int references POLICE_DEPT_CLASSIFICATION(Police_Department_Code),
police_precinct varchar,
location varchar,
location_description varchar,
Borough varchar
);

select * from Weather_ID


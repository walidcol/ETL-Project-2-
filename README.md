# ETL-Project-2-

Members : Emil , Aziz, and Walid 

Data Sets:

NYC Crimes Dataset (from Kaggle) https://www.kaggle.com/adamschroeder/crimes-new-york-city

NYC Weather Analysis (from Kaggle) https://www.kaggle.com/waypointgroup/impact-of-weather-on-nyc-ride-data/data

-----------------------------------------------------------------------------------------------------------------------------------------------
1) The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
Cleaning
Filtering 
Aggregating

2) The type of final production database to load the data into (relational or non-relational).
Relational 

3) The final tables or collections that will be used in the production database.

Weather cleaning: 
    Drop column ending in ‘m’
    Make pickup_datetime primary key 
    Drop empty columns 
    Change booleans to Yes/No (fog, rain, snow, hail, thunder, tornado)
    Include Date & Time columns 
    There isn’t much data for precipitation & windchill so we can take it out 
    For the remaining columns without data we can use N/A (Not available) 

Crime cleaning:
    Remove CMPLNT_TO_DT and CMPLNT_TO_MT
    Remove CMPLNT_FR_TM 
    For LOC_OF_OCCUR_DESC, PREM_TYP_DESC, PAR - leave blanks as N/A (Not available)
    DROP HADEVELOPT
    DROP PARKS_NM
    REPLACE empty fields with N/A (Not available)





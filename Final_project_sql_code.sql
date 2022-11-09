-- Creating tables for Final Project
CREATE TABLE Cities_2016 (
     City VARCHAR(40) NOT NULL,
     Population int NOT NULL,
     Violent_crime int NOT NULL,
     Murder_and_nonnegligent_manslaughter int NOT NULL,
     Rape int NOT NULL,
     Robbery int NOT NULL,
     Aggravated_assault int NOT NULL,
     Property_crime int NOT NULL,
     Burglary int NOT NULL,
     Larceny_theft int NOT NULL,
     Motor_vehicle_theft int NOT NULL,
     Arson int NOT NULL,
     total_crime int NOT NULL,
     Crime_index float NOT NULL,
     is_safe bool NOT NULL,
     PRIMARY KEY (City),
     UNIQUE (City)
);

CREATE TABLE Cities_2019 (
     City VARCHAR(40) NOT NULL,
     Population int NOT NULL,
     Violent_crime int NOT NULL,
     Murder_and_nonnegligent_manslaughter int NOT NULL,
     Rape int NOT NULL,
     Robbery int NOT NULL,
     Aggravated_assault int NOT NULL,
     Property_crime int NOT NULL,
     Burglary int NOT NULL,
     Larceny_theft int NOT NULL,
     Motor_vehicle_theft int NOT NULL,
     Arson int NOT NULL,
     total_crime int NOT NULL,
     Crime_index float NOT NULL,
     is_safe bool NOT NULL,
     PRIMARY KEY (City),
     UNIQUE (City)
);

Select*From Cities_2016;
Select*From Cities_2019;

Select city
From cities_2019;

SELECT DISTINCT ON (city) cities_2016.city, cities_2016.crime_index_2016,
cities_2016.is_safe_2016, cities_2019.crime_index_2019,cities_2019.is_safe_2019
INTO NC_Crime_Summary
FROM cities_2016
INNER JOIN cities_2019
ON (cities_2016.city=cities_2019.city);

Select*From NC_Crime_Summary;
-- Creating tables for Final Project
CREATE TABLE Cities (
     Cities VARCHAR(40) NOT NULL,
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
     Crime_index int NOT NULL,
     is_safe bool NOT NULL,
     PRIMARY KEY (Cities),
     UNIQUE (Cities)
);
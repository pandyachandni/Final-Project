# Final-Project
## **What is the safest city to live in North Carolina?**
According to Josh Howarth in a recent article, North Carolina has three of the fastest growing cities. North Carolina has many booming industries such as finance, science and education to offer for those that are here and those that move to the state. With much growth coming to the state, it’s important to know where are the safest area to live are.

<img width="509" alt="Screen Shot 2022-10-31 at 7 45 27 PM" src="https://user-images.githubusercontent.com/107590706/199130099-914086e9-1151-4746-974e-36cc8f8e3466.png">
Howarth, J. (2022, September 8). 20 fastest growing cities in the US (2022). Exploding Topics. Retrieved October 31, 2022, from https://explodingtopics.com/blog/fastest-growing-cities

Bigger cities like New York City and Los Angeles tend to have higher crimes than smaller cities. In a study done by Edward L. Glaesear, he mentions crime rates being higher in bigger cities than rural areas and that this has been a pattern for sometime now. In the figure below it shows a list of cities and projected growth from 2022 to 2060 with Raleigh projected to grow by 80% and Charlotte 58%. With the amount of growth project in North Carolina also comes crime. Majority of us hope to be safe and not come home to somewhere where we would feel uneasy at night. Even those that are from the state might want to migrate around and moving to a new city can be daunting. Having a secure feeling where you live is important because it can put yourself and loved ones at ease.

![Screen Shot 2022-10-31 at 8 07 38 PM](https://user-images.githubusercontent.com/107590706/199131776-d0f2faef-62e5-4bef-b1f8-941712f65fd2.png)
Stebbins, S. (2022, September 17). Raleigh, NC will be among the fastest growing cities by 2060. The Center Square. Retrieved October 31, 2022, from https://www.thecentersquare.com/north_carolina/raleigh-nc-will-be-among-the-fastest-growing-cities-by-2060/article_3eaa64b7-8c9f-58b3-a4d3-4f4ec3d7fcc2.html 

The reason that we choose this topic is because it relates to the majority of people in the class. Most of the class lives in North Carolina. Charlotte is one of the list cities where growth is booming especially in the finance industry. Most of us are taking this certificate class to jump start a career into data analytics. Most of us might need to move around the state to pursue that opportunity.

The questions we are hoping to answer:
* Which cities have the least crime in North Carolina?
* What cities are safe in North Carolina
* What is the difference in crime from 2016 and 2019?

## Data Gathering Process
 
The data that we sourced was gathered from the [FBI website](https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/tables/table-6/table-6-state-cuts/north-carolina.xls) which has tables throughout the years. We are looking at data specifically from 2016 to 2019. 2019 is the latest data that is avalible and looking over the course of years can give us an idea of safety as well as city growth. Comparing the 2 years also shows us how a city might have changed.

## Machine Learning/Decision Making Process

We used a supervised machine learning algorithm to classify each city's safety based on their calculated crime index and associated crime statistics. We used a `logistic regression model` because it is the go-to method for binary classfication problems and is a model that is simple to implement, interpret, and efficient to train. This model will analyze the available data, and when presented a new sample, mathematically determine its probability of belonging to a class. If the probability is above a certain cutoff point, the sample is assigned to that class. If the probability is less than the cutoff point, the sample is assigned to the other class.

Our datasets contained the names of each city in North Carolina, their respective population, and annual totals of different types of crime (see list below)

  * Violent Crimes
    * Murder and non-negligent manslaughter
    * Rape
    * Robbery
    * Aggravated assault
  * Non-violent Crimes
    * Burglary
    * Larceny-theft
    * Motor Vehicle theft  
    * Arson

Our group had to decide how we would determine whether a city would be deemed **safe** and we all agreed to determine safety by calculating each city's crime index. Crime index is calculated by summing up total crime(non-violent and violent) of each respective city then dividing that total by the population and multipying it by 100. 

These percentages were used as a metric of comparison amongst the different cities. The average crime idex fell around 5.5 so we came to conclusion to use a crime index 6% as a  as a threshold to determine a city's **safety**. The cities that were at or above this threshold were deemed **unsafe**. We used a boolean to give a true statement if yes the city is safe and a false if no the city is unsafe.

![Screen Shot 2022-11-20 at 9 47 05 PM](https://user-images.githubusercontent.com/107590706/202952529-737bd7e9-0302-4d60-8867-d7189b39f39d.png)


In `Jupyter Notebook` we arranged the data into a format acceptable for the train_test_split function in the `Scikit-learn` library for `Python`. We cleaned each dataframe for both years in the same manner by dropping the `Violent_crime_total`, `Property_Crime_total`, and `City` column. 

![cleaning_df_process](https://user-images.githubusercontent.com/107579508/203107324-4ccd88ba-7365-46da-ba82-83d15bede302.png)

Then we split the datset into train and testing sets.

![splitting_X](https://user-images.githubusercontent.com/107579508/203109073-7d1a20e2-b9fe-4273-a993-ada4d4762749.png)

![targets](https://user-images.githubusercontent.com/107579508/203109149-c3696ced-5545-48e6-85a4-e604379020dc.png)

Next we used the train_set_split function and instantiated the `Logistic Regression Model`.

![train_test_split](https://user-images.githubusercontent.com/107579508/203109260-b70ee1ac-073c-436f-a599-887cc0692b27.png)

Now we trained and tested our model to evaluate the performance.

![train_model](https://user-images.githubusercontent.com/107579508/203109605-79153b76-4b51-485d-9221-6f3afc3b96fc.png)

![test_model](https://user-images.githubusercontent.com/107579508/203109656-31bfa537-0144-4839-a9b2-14ada609ce78.png)

## Results

Our models peformed very well and were able to identify a **safe** city with **97-100%** accruacy. In the image above you can see an accuracy score of 1.0, meaning that the model was able to predict with 100% accuracy if the city is considered safe(1) or not (0).

As more data is released by the FBI we can repeat this process and continue to train our model so that we may determine a city's safety and further identify the trend of a particular city over multiple years.


# Sources
 * https://ucr.fbi.gov/crime-in-the-u.s/2019/crime-in-the-u.s.-2019/tables/table-8/table-8-state-cuts/north_carolina.xls
 * https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/tables/table-6/table-6-state-cuts/north-carolina.xls
 * https://public.tableau.com/views/FP1_16680230944460/StoryBoard?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

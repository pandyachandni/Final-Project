# Final-Project
## **What is the safest city to live in North Carolina?**
According to Josh Howarth in a recent article, North Carolina has three of the fastest growing cities. North Carolina has many booming industries such as finance, science and education to offer for those that are here and those that move to the state. With much growth coming to the state, it’s important to know where are the safest area to live are.

<img width="509" alt="Screen Shot 2022-10-31 at 7 45 27 PM" src="https://user-images.githubusercontent.com/107590706/199130099-914086e9-1151-4746-974e-36cc8f8e3466.png">
Howarth, J. (2022, September 8). 20 fastest growing cities in the US (2022). Exploding Topics. Retrieved October 31, 2022, from https://explodingtopics.com/blog/fastest-growing-cities 

Bigger cities like New York City and Los Angeles tend to have higher crimes than smaller cities. In a study done by Edward L. Glaesear, he mentions crime rates being higher in bigger cities than rural areas and that this has been a pattern for sometime now. In the figure below it shows a list of cities and projected growth from 2022 to 2060 with Raleigh projected to grow by 80% and Charlotte 58%. With the amount of growth project in North Carolina also comes crime. Majority of us hope to be safe and not come home to somewhere where we would feel uneasy at night. Even those that are from the state might want to migrate around and moving to a new city can be daunting. Having a secure feeling where you live is important because it can put yourself and loved ones at ease.

![Screen Shot 2022-10-31 at 8 07 38 PM](https://user-images.githubusercontent.com/107590706/199131776-d0f2faef-62e5-4bef-b1f8-941712f65fd2.png)
Stebbins, S. (2022, September 17). Raleigh, NC will be among the fastest growing cities by 2060. The Center Square. Retrieved October 31, 2022, from https://www.thecentersquare.com/north_carolina/raleigh-nc-will-be-among-the-fastest-growing-cities-by-2060/article_3eaa64b7-8c9f-58b3-a4d3-4f4ec3d7fcc2.html 

The reason that we choose this topic is because it relates to the majority of people in the class. Most of the class lives in North Carolina. Charlotte is one of the list cities where growth is booming especially in the finance industry. Most of us are taking this certificate class to jump start a career into data analytics. Most of us might need to move around the state to pursue that opportunity.
 
The data that we sourced was gathered from the FBI website which has tables throughout the years. We are looking at data specifically from 2016 to 2019. 2019 is the latest data that is avalible and looking over the course of years can give us an idea of safety as well as city growth. Comparing the 2 years also shows us how a city might have changed.

We are determine safety by summing up total crime(non-violent and violent) crimes then dividing it by the population in that particular city by the population and multipying it by 100. We created that percentage to then compare against other percentages. Once we have the calculated crime percentages we compare them against one another and found the average. The average fell around 5.5 so we rounded up to 6% as it was on the higher end to not dimiss majority of the cities calling them unsafe. This gave a lower threshold as any city is going to present risk regardless. The cities that were at or above this threshold were deemed unsafe. We used a boolean to give a true statement if yes the city is safe and a no if the city is unsafe.

![Screen Shot 2022-11-20 at 9 47 05 PM](https://user-images.githubusercontent.com/107590706/202952529-737bd7e9-0302-4d60-8867-d7189b39f39d.png)

Our supervised machine learning uses a logistic regression predicts binary outcomes. This model will analyze the available data, and when presented a new sample, mathematically determine its probability of belonging to a class. If the probability is above a certain cutoff point, the sample is assigned to that class. If the probability is less than the cutoff point, the sample is assigned to the other class.

We decided to clean our data as much as we could before hand so running the code would give a easier time. When we were cleaning our code what we were doing was removing columns that were double counted, titles to not count in calculations, and create the crime index score as a column. From this we uploaded that csv and identified each data type for each column. We needed to clean the data once again because total violent crimes and total property crime were double counted.

The questions we are hoping to answer:
* Which cities have the least crime in North Carolina?
* What cities are safe in North Carolina
* What is the difference in crime from 2016 and 2019?


# Sources
 * https://ucr.fbi.gov/crime-in-the-u.s/2019/crime-in-the-u.s.-2019/tables/table-8/table-8-state-cuts/north_carolina.xls
 * https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/tables/table-6/table-6-state-cuts/north-carolina.xls
 * https://public.tableau.com/views/FP1_16680230944460/Story1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

What is the difference in crime from 2016 and 2019?

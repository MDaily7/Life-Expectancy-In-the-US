# Life Expectancy in US Counties Based on Various Factors

## Team Members
* Michael Daily 
* Roxane Brown
* Angie Corrales


### Google Slides Link
Download Presentation > https://docs.google.com/presentation/d/10jV_kzB3BMsltjungju_t7-RHRZp5Px8yOZFFJbnPYM/edit#slide=id.g129e9e3480f_0_287

### Communication Protocols
The team has decided to have two main communication channels. The first one, the team has a chat on Slack channel to share information and ask quick questions. Then, on Zoom, where the team will meet when needed to review segments and to coordinate procedures and next steps of this project. We use Github to commit our changes and provide feeback on our teammates work but we also use it for the Projects feature which acts as our workspace organizer. 

### Branches
In order to work as team, we are using a branch for each team member. 

## Project Overview
### Reason for Topic
We are interested in knowing how health, race, and income factors affect life expectancy and which state or county overall has the highest life expectancy. Our hypothesis is that counties with a higher percentage of people who smoke, don't excercise regularly and suffer from obesity will have a lower life expectancy. We also predict that other factors such as high male to female pay gap and low median income will 

### Source Data
County Health Ranking & Roadmaps: https://www.countyhealthrankings.org/

County Health Rankings & Roadmaps is a program of the University of Wisconsin Population Health Institute which provides data with evidence and guidance about factors that affect health. This dataset measures health in the 50 states of the United States. Also, the 2022 County Health Rankings Data is in a xlsx file. The dataset contains seven sheets with outcomes and factors rankings, outcomes and factors sub-rankings, ranked measure data, ranked measure sources and years and additional measure data. 

### Questions to Answer With the data
* Which ethnicity in each state tends to have the higher life expectancy? 
* How do factors such as smoking, obesity, and physical inactivity affect life expectancy?
* How does the male to female pay gap affect life expectancy?
* What is the household income mean by ethnicity and what is it's relation to life expectancy?

## Exploring the Data

We focus on two tables within the larger dataset, Ranked Measure Data and Additional Measures Data. We first wanted to see how big our dataset was.

```python
# display the shape of the dataframes
print(f' Health Measures has {health_measures_df.shape[0]} rows and {health_measures_df.shape[1]} columns')
print(f' Additional Measures has {additional_measures_df.shape[0]} rows and {additional_measures_df.shape[1]} columns')
```

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/main/Images/Datasets%20Shape.png" width=400 alt="Datasets Shape" />

We looked for the best ways to visualize our findings. 

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/main/Images/LE%20by%20Adult%20Obesity.png" width=450 alt="LE by Adult Obesity" />

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/main/Images/LE%20by%20Smoking.png" width=450 alt="LE by Smoking" />

## Cleaning the Data
In our two datasets we found there were two sets of headers that made it difficult to load into the database. For instance we had a top level column header for smoking, premature death, and low birthrate (among other things) as well and a lower level column header for all the stats pertaining to those topics. In order to fix that we had to create new dataframes with the double column names combine to one. 


## Machine Learning Model
We are using the liner regression and Random Forest Classifier machine learning models. We think the Random Forest Classifier works best for our data that can predict if s person has a healthy life style or not. The liner regression model works best when we look health factors that would affect someones life expectancy. 

## The Database

The team chose to use sqalchemy in order to connect with our PostgresSQL database.

![health measures and additional measures](https://user-images.githubusercontent.com/95327338/169605640-1e0e90bd-2bd9-4386-8ada-a7f78104216f.png)


## Dashboard

Our visualizations will be created in Tableau:

https://public.tableau.com/views/LifeExpectancy_16531976712160/Story1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link


We chose 15 different health factors that had a high correlation to life expectancy to explore through visualizations using scatter plots. Each point on the chart shows the state and county along with the life expectancy and the health factor. We also have a heatmap that displays the average life expectancy in that state. Here is one example of the map. 

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/vizz_draft1/Images/LE%20by%20State.png" width=550 alt="LE by States" />


We will embed some of these visualizations to our web page.


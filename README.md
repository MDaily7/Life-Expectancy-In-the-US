# Life Expectancy in US Counties Based on Various Factors

## Team Members
* Michael Daily 
* Roxane Brown
* Angie Corrales

### Communication Protocols
The team has decided to have two main communication channels. The first one, the team has a chat on Slack channel to share information and ask quick questions. Then, on Zoom, where the team will meet when needed to review segments and to coordinate procedures and next steps of this project. We use Github to commit our changes and provide feeback on our teammates work but we also use it for the Projects feature which is acts as our workspace organizer. 

### Branches
In order to work as team, we are using a branch for each team member. 

## Project Overview
### Reason for Topic
We are interested in knowing how health, race, and income factors affect life expectancy and which state or county overall has the highest life expectancy. Our hypothesis is that counties with a higher percentage of people who smoke, don't excersise regularly and suffer from obesity will have a lower life expectancy. We also predict that other factors such as high male to female pay gap and low median income will 

### Source Data
County Health Ranking & Roadmaps: https://www.countyhealthrankings.org/

County Health Ranking & Roadmaps is a program of the University of Winsconsin Population Health Insitute which provides data with evidence and guidance about factors that affect health. This dataset measures health in the 50 states of the United States. Also, the 2022 County Health Rankings Data is in a xlsx file. The dataset contains seven sheets with outcomes and factors rankings, outcomes and factors sub-rankings, ranked measure data, ranked measure sources and years and additional measure data. 

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

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/roxane/Images/Datasets%20Shape.png" width=300 alt="Datasets Shape" />

We looked for the best ways to visualize our findings. 

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/roxane/Images/LE%20by%20Adult%20Obesity.png" width=300 alt="LE by Adult Obesity" />

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/roxane/Images/LE%20by%20Smoking.png" width=300 alt="LE by Smoking" />



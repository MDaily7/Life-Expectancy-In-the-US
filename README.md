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
### Model Selection
This project will utilize a supervised machine learning model. The target of the model is life expectancy which is a continuous variable. Therfore, a multiple linear 
regression model will be used. The primary disadvantage or limit of a linear regression model is that assumes a linear relationship between variables which is rarely true
in the real world. That being said, using multiple linear regression seeks to minimize this limitation while still retaining the benefits of this model choice. Benefits that
include simplicity in implementation, efficient to train, relatively simple to interpret, and while the model is prone to overfitting, this can be diminished employing 
dimensionality reduction techniques (removing multicollinearity as much as possible). 
### Preprocessing
Every feature being utilized in the model originally had a multitude of null values; the nulls were replaced with the mean value of the respective features. 
### Feature Engineering and Selection
Feature selection is still an ongoing process. Thus far, two methods have been employed. The first method relied heavily on removing multicollinearity between independant 
features while maintaining correlation to the target variable. The ensuing model used ten features out of the original 69 and had a mean absolute error score of 1.23. The 
second method used correlation and mutual information feature selection to determine that 15 features would be optimal. Sklearn recursive feature elimination was then used
to determine which 15 features would be best to use for the model. The resulting 15 feature model had a mean absolute error score of 1.21 a slight improvement over the first
model. More feature selection options will be explored from this point such as exploring the first method used but with 15 features rather than ten as well as exploring 
and fine tuning the amount of features with both methods that have been described.
### Splitting into Training and Testing Sets
Sklearn train_test_split was used to split the data into training and testing data sets. Currently, the default split is being utilized with 75% of the data in the training
split and 25% in the test split. This may be explored more later if it seems valuable. 
## The Database

The team chose to use sqalchemy in order to connect with our PostgresSQL database.

![health measures and additional measures](https://user-images.githubusercontent.com/95327338/169605640-1e0e90bd-2bd9-4386-8ada-a7f78104216f.png)


## Dashboard

Our visualizations will be created in Tableau:

https://public.tableau.com/app/profile/roxane.brown/viz/LifeExpectancy_16531976712160/HealthFactorsinRelationtoLifeExpectancy


We chose 15 different health factors that had a high correlation to life expectancy to explore through visualizations using scatter plots. Each point on the chart shows the state and county along with the life expectancy and the health factor. We also have a heatmap that displays the average life expectancy in that state. Here is one example of the map. 

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/vizz_draft1/Images/LE%20by%20State.png" width=550 alt="LE by States" />


We will embed some of these visualizations to our web page.


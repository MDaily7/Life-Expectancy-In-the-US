# Life Expectancy in US Counties Based on Various Factors

## Team Members
* Michael Daily 
* Roxane Brown
* Angie Corrales


### Google Slides and Vizualizations Links
Download Presentation > https://docs.google.com/presentation/d/10jV_kzB3BMsltjungju_t7-RHRZp5Px8yOZFFJbnPYM/edit#slide=id.g129e9e3480f_0_287

APP and Dashboard: https://stately-mandazi-8226c8.netlify.app

### Communication Protocols
The team has decided to have two main communication channels. The first one, the team has a chat on Slack channel to share information and ask quick questions. Then, on Zoom, where the team will meet when needed to review segments and to coordinate procedures and next steps of this project. We use Github to commit our changes and provide feeback on our teammates work but we also use it for the Projects feature which acts as our workspace organizer. 

### Branches
In order to work as team, we are using a branch for each team member. 

## Project Overview
### Reason for Topic
Each of us are interested in health data and decided it would be interesting to explore the County Health Rankings data and particularly how the various features presented in 
the data set relate to life expectancy. 

### Source Data
County Health Ranking & Roadmaps: https://www.countyhealthrankings.org/

County Health Rankings & Roadmaps is a program of the University of Wisconsin Population Health Institute which provides data with evidence and guidance about factors that affect health. This dataset measures health in the 50 states of the United States. Also, the 2022 County Health Rankings Data is in a xlsx file. The dataset contains seven sheets with outcomes and factors rankings, outcomes and factors sub-rankings, ranked measure data, ranked measure sources and years and additional measure data. 

### Questions to Answer With the data
We have approached this data set as though a county health official has asked us to determine what features would be best to fund in order to improve the life expectancy of
residents of their county. Our aim is to determine which features are most correlated with life expectancy and to utilize machine learning with those selected features in 
order to predict life expectancy within a county.

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
[Linear Regression Model](https://github.com/brown-rox20/05022022DataFinalProject/blob/main/Machine%20Learning%20Model/Life%20Expectancy%20Linear%20Regression%20Model.ipynb)
### Model Selection
This project will utilize a supervised machine learning model. The target of the model is life expectancy which is a continuous variable. Therfore, a multiple linear 
regression model will be used. The primary disadvantage or limit of a linear regression model is that assumes a linear relationship between variables which is rarely true
in the real world. That being said, using multiple linear regression seeks to minimize this limitation while still retaining the benefits of this model choice. Benefits that
include simplicity in implementation, efficient to train, relatively simple to interpret, and while the model is prone to overfitting, this can be diminished employing 
dimensionality reduction techniques (removing multicollinearity as much as possible). 
### Preprocessing
Every feature being utilized in the model originally had a multitude of null values; the nulls were replaced with the mean value of the respective features. Furthermore, 
two outliers with life expectancies exceeding 100 years were removed. Finally, the training and testing splits of the features were scaled with Sklearn Standard
Scaler. 
### Feature Engineering and Selection
Two feature selection methods were explored. The first method relied heavily on removing multicollinearity between independant 
features while maintaining correlation to the target variable. The ensuing model used ten features out of the original 69 and had a mean absolute error score of 1.23. The 
second method used correlation and mutual information feature selection to determine that 15 features would be optimal as seen in the images below. Sklearn recursive feature elimination was then used
to determine which 15 features would be best to use for the model. The resulting 15 feature model has a mean absolute error score of 1.205 a slight improvement over the first
model. The second method of feature selection consistently performs slightly better than the first even with changes to random states when splitting the data into training and
testing sets and is therefore the method of feature selection used for the final model. 
* [Correlation Feature Selection Scores](https://github.com/brown-rox20/05022022DataFinalProject/blob/main/Images/Correlation_Feature_Selection.png)
* [Mutual Information Feature Selection Scores](https://github.com/brown-rox20/05022022DataFinalProject/blob/main/Images/Mutual_Feature_Selection.png)
### Splitting into Training and Testing Sets
Sklearn train_test_split was used to split the data into training and testing data sets. Currently, the default split is being utilized with 75% of the data in the training
split and 25% in the test split. This may be explored more later if it seems valuable. 
### Training the Model
The model was trained with the sklearn fit method where the scaled feature training split and the target training split were given as parameters. Additional training could
take place using future County Health Rankings data sets in addition to the one used for this project.
### Model Performance
The current r2 score of the training split is 0.686 and the test split r2 score is 0.675. The mean absolute error of the model is 1.205.
### Future Statistical Analysis
This project utilizes a multiple linear regression model to attempt to predict life expectancy utilizing 15 different health factor features. Future statistical analysis might
include generating simple linear regression models with each of the individual features and obtaining r2 and p-values for each of those models to further confirm the feature's 
statistically significant relationship to life expectancy or to reject it. Finally, using statsmodels.api or something similar to determine the p-value for each of the 
coefficients in our current model would be a good step for future phases of the project.  
## The Database

The team chose to use sqalchemy in order to connect with our PostgresSQL database.
There are two tables in our database: health_measures and additional_health_measures. We created a master table called all_measures in order to integrate the data from both tables into one table.

![health measures and additional measures](https://user-images.githubusercontent.com/95327338/169605640-1e0e90bd-2bd9-4386-8ada-a7f78104216f.png)

![image](https://user-images.githubusercontent.com/95327338/170845995-d7b6d387-89da-4a22-b023-be288bbf0f20.png)
![image](https://user-images.githubusercontent.com/95327338/170845976-002aa495-067c-4628-b091-7a8811b52bd7.png)



## Dashboard

Our visualizations will be created in Tableau:

https://public.tableau.com/app/profile/roxane.brown/viz/LifeExpectancy_16531976712160/HealthFactorsinRelationtoLifeExpectancy


We chose 15 different health factors that had a high correlation to life expectancy to explore through visualizations using scatter plots. Each point on the chart shows the state and county along with the life expectancy and the health factor. We also have a heatmap that displays the average life expectancy in that state. Here is one example of the map. 

<img src="https://github.com/brown-rox20/05022022DataFinalProject/blob/main/Images/LE%20by%20State_County%20(w_measures).png" width=550 alt="LE by States_County(w_measures)" />


We will embed some of these visualizations to our web page.


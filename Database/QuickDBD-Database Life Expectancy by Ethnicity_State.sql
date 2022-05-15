-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/SqGLVZ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Health_Measures_3_State" (
    "State" varchar   NOT NULL,
    "Premature_death" varchar   NOT NULL,
    "Percentage_Fair_or_Poor_Health" varchar   NOT NULL,
    "Average_Number_of_Physically_Unhealthy_Days" varchar   NOT NULL,
    "Average_Number_of_Mentally_Unhealthy_Days" varchar   NOT NULL,
    "Percentage_Low_birthweight" varchar   NOT NULL,
    "Percentage_Smokers" varchar   NOT NULL,
    "Percentage_Adults_with_Obesity" varchar   NOT NULL,
    "Food_Environment_Index" varchar   NOT NULL,
    "Percentage_Physically_Inactive" varchar   NOT NULL,
    "Percentage_With_Access_to_Exercise_Opportunities" varchar   NOT NULL,
    "Alcohol_impaired_driving_deaths" varchar   NOT NULL,
    "Sexually_transmitted_infections_Chlamydia_Cases" varchar   NOT NULL,
    "Teen_Birth_Rate" varchar   NOT NULL,
    "Uninsured" varchar   NOT NULL,
    "Primary_care_physicians" varchar   NOT NULL,
    "Dentists" varchar   NOT NULL,
    "Mental_health_providers" varchar   NOT NULL,
    "Preventable_Hospitalization_Rate" varchar   NOT NULL,
    "Percentage_With_Annual_Mammogram" varchar   NOT NULL,
    "Percentage_Vaccinated" varchar   NOT NULL,
    "High_school_completion" varchar   NOT NULL,
    "Some_college" varchar   NOT NULL,
    "Unemployment" varchar   NOT NULL,
    "Percentage_Children_in_Poverty" varchar   NOT NULL,
    "Income_inequality_80th_Percentile_Income" varchar   NOT NULL,
    "Children_in_single-parent_households" varchar   NOT NULL,
    "Social_associations" varchar   NOT NULL,
    "Annual_Average_Violent_Crimes" varchar   NOT NULL,
    "Injury_deaths" varchar   NOT NULL,
    "Air_pollution_particulate_matter_Average_Daily_PM" varchar   NOT NULL,
    "Drinking_water_violations" varchar   NOT NULL,
    "Percentage_Severe_Housing_Problems" varchar   NOT NULL,
    "Percentage_Drive_Alone_to_Work" varchar   NOT NULL,
    "Long_commute_driving_alone" varchar   NOT NULL,
    CONSTRAINT "pk_Health_Measures_3_State" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "Additional_Health_Measures_4_State" (
    "State" varchar   NOT NULL,
    "Life_expectancy" varchar   NOT NULL,
    "Deaths_Premature_age_adjusted_mortality" varchar   NOT NULL,
    "Child_mortality_deaths" varchar   NOT NULL,
    "Infant_mortality_deaths" varchar   NOT NULL,
    "percentage_Frequent_Physical_Distress" varchar   NOT NULL,
    "percentage_Adults_with_Diabetes" varchar   NOT NULL,
    "HIV_Cases" varchar   NOT NULL,
    "Food_insecurity" varchar   NOT NULL,
    "Limited_access_to_healthy_foods" varchar   NOT NULL,
    "Drug_overdose_deaths" varchar   NOT NULL,
    "Motor_vehicle_crash_deaths" varchar   NOT NULL,
    "percentage_Insufficient_Sleep" varchar   NOT NULL,
    "Uninsured_adults" varchar   NOT NULL,
    "Other_Primary_Care_Provider_Rate" varchar   NOT NULL,
    "High_School_Graduation_Rate" varchar   NOT NULL,
    "percentage_Disconnected_Youth" varchar   NOT NULL,
    "Average_Grade_Performance_Reading_scores" varchar   NOT NULL,
    "Average_Grade_Performance_Math_scores" varchar   NOT NULL,
    "Segregation_index_School_segregation" varchar   NOT NULL,
    "Spending_perpupil_School_funding_adequacy" varchar   NOT NULL,
    "Gender_pay_gap" varchar   NOT NULL,
    "Median_household_income" varchar   NOT NULL,
    "percentage_Enrolled_in_Free_or_Reduced_Lunch_Children_eligible_for_free_or_reduced_price_lunch" varchar   NOT NULL,
    "Segregation_index_Residential_segregation_Black/white" varchar   NOT NULL,
    "percentage_household_income_required_for_childcare_expenses_Childcare_cost_burden" varchar   NOT NULL,
    "Childcare_centers" varchar   NOT NULL,
    "Homicide_Rate" varchar   NOT NULL,
    "Suicides" varchar   NOT NULL,
    "Firearm_fatalities" varchar   NOT NULL,
    "Juvenile_Arrest_Rate" varchar   NOT NULL,
    "Traffic_Volume" varchar   NOT NULL,
    "Homeowners" varchar   NOT NULL,
    "Severe_housing_cost_burden" varchar   NOT NULL,
    "percentage_Broadband_Access" varchar   NOT NULL,
    "Population" varchar   NOT NULL,
    "percentage_female" varchar   NOT NULL,
    "rural_residents" varchar   NOT NULL
);

ALTER TABLE "Health_Measures_3_State" ADD CONSTRAINT "fk_Health_Measures_3_State_State" FOREIGN KEY("State")
REFERENCES "Additional_Health_Measures_4_State" ("State");


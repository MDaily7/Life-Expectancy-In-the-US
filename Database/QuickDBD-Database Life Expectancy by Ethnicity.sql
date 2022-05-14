-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/SqGLVZ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Health_Measures" (
    "State" varchar   NOT NULL,
    "County" varchar   NOT NULL,
    "Premature_Deaths" int   NOT NULL,
    "Premature_Deaths_AIAN" int   NOT NULL,
    "Premature_Deaths_Asian" int   NOT NULL,
    "Premature_Deaths_Black" int   NOT NULL,
    "Premature_Deaths_Hispanic" int   NOT NULL,
    "Premature_Deaths_White" int   NOT NULL,
    "%_Poor_Fair_Health" int   NOT NULL,
    CONSTRAINT "pk_Health_Measures" PRIMARY KEY (
        "County"
     )
);

CREATE TABLE "Additional_Health_Measures" (
    "State" varchar   NOT NULL,
    "County" varchar   NOT NULL,
    "Life_Expentancy" int   NOT NULL,
    "Life_Expentancy_AIAN" int   NOT NULL,
    "Life_Expentancy_Black" int   NOT NULL,
    "Life_Expentancy_Hispanic" int   NOT NULL,
    "Life_Expentancy_White" int   NOT NULL,
    CONSTRAINT "pk_Additional_Health_Measures" PRIMARY KEY (
        "County"
     )
);

ALTER TABLE "Health_Measures" ADD CONSTRAINT "fk_Health_Measures_County" FOREIGN KEY("County")
REFERENCES "Additional_Health_Measures" ("County");


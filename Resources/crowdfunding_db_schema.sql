-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

-- create contacts table with primary key as contact_id
CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(15)   NOT NULL,
    "last_name" VARCHAR(15)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

-- create category table with primary key as category_id
CREATE TABLE "Category" (
    "category_id" VARCHAR(4)   NOT NULL,
    "category" VARCHAR(15)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

-- create subcategory table with primary key as subcategory_id
CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(8)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

-- create campaign table with primary key as cf_id
CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(40)   NOT NULL,
    "description" VARCHAR(60)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(10)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(3)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" VARCHAR(4)   NOT NULL,
    "subcategory_id" VARCHAR(8)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

-- Add foreign key constraint to link Campaign table with Contacts table
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

-- Add foreign key constraint to link Campaign table with Category table
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

-- Add foreign key constraint to link Campaign table with Subcategory table
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

-- Verify the table creation by running a SELECT statement for each table

--Import CSV files in the same order of the tables created:
--1.contacts.csv  2.category.csv  3.subcategory.csv  4.campaign.csv

--Verify that each table has the correct data by running a SELECT statement for each

SELECT * FROM "Contacts";

SELECT * FROM "Category";

SELECT * FROM "Campaign";

SELECT * FROM "Subcategory";





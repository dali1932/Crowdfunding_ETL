# Crowdfunding ETL
These are the sources we used to help write our codes: [QuickDBD](http://www.quickdatabasediagrams.com/) and BCS — watching our cloud recordings, using instructor activity solutions and the class activities as references.

## Crowdfunding Data Processing
This repository contains Python scripts for processing crowdfunding data extracted from an Excel file named crowdfunding.xlsx. The scripts utilize pandas, a powerful data manipulation library, to organize and transform the raw data into structured CSV files. Below are the steps followed in this data processing pipeline:

## ETL_Mini_Project_AChand_DChen_DJindal.ipynb
We were given two options to create the contacts dataframe using pandas or regex and our group chose to use pandas (option 1).

### Dependencies
* **pandas:** A Python library for data manipulation and analysis.
* **numpy:** A fundamental package for scientific computing with Python.

Make sure to install these dependencies before running the scripts.

### 1. Extracting Data
* The data from crowdfunding.xlsx is read into a Pandas DataFrame named crowdfunding_info_df.
* A summary of the DataFrame's structure is displayed using the info() method.
### 2. Creating Category and Subcategory DataFrames
Two DataFrames, category.csv and subcategory.csv, are created from the original data:
- **Category DataFrame:** Contains sequential category IDs and category names.
- **Subcategory DataFrame:** Contains sequential subcategory IDs and subcategory names.
### 3. Campaign DataFrame
A Campaign DataFrame (campaign.csv) is constructed from the original data with the following columns:
- cf_id
- contact_id
- company_name
- description
- goal
- pledged
- backers_count
- country, currency
- launch_date
- end_date
- category_id
- subcategory_id

Additionally, a unique four-digit contact ID number from the contact.xlsx file is added.
### 4. Contacts DataFrame
A Contacts DataFrame (contacts.csv) is created from the contacts.xlsx file with columns:
- contact_id
- first_name
- last_name
- email


## Crowdfunding Database

We sketched an Entity Relationship Diagram (ERD) of the tables using Quick DBD.
We set contact_id as the primary key on the Contacts table, category_id as the primary key on the Category table, subcategory_id as the primary key on the Subcategory table, and cf_id as the primary key on the Campaign table. 
To establish relationships between the Campaign table and the other 3 tables, we set the columns contact_id, category_id, and subcategory_id in the Campaign table as foreign keys referencing the primary keys of the Contacts, Category, and Subcategory tables respectively.

<img width="708" alt="image" src="https://github.com/dali1932/Crowdfunding_ETL/assets/149288692/ff32a285-eb19-43ab-be18-bf6eef4b865c">

By exporting the file to Postgres, we used the schema and import the CSV files to create the tables on Postgres and named the database crowdfunding_db. Finally, we verified that each table has the correct data by running a SELECT statement for each. Below are the screenshots of the sample result for each table:

### SELECT * FROM "Contacts";
![image](https://github.com/dali1932/Crowdfunding_ETL/assets/151655013/8aec3891-3090-4802-935f-fd6be360c412)

### SELECT * FROM "Category";
![image](https://github.com/dali1932/Crowdfunding_ETL/assets/151655013/9912a70c-796e-4c0d-b968-e2f79fabc137)

### SELECT * FROM "Subcategory";
![image](https://github.com/dali1932/Crowdfunding_ETL/assets/151655013/c6ffcb62-5b5f-4578-912c-5efb7a8a2739)

### SELECT * FROM "Campaign";
![image](https://github.com/dali1932/Crowdfunding_ETL/assets/151655013/b8d88be1-7899-460b-9329-7aa39b86de7b)








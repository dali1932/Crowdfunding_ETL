# Crowdfunding_ETL



Create a new Postgres database, named crowdfunding_db.

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table.

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each.


We sketched an Entity Relationship Diagram (ERD) of the tables using Quick DBD.
We set contact_id as the primary key on the Contacts table, category_id as the primary key on the Category table, subcategory_id as the primary key on the Subcategory table, and cf_id as the primary key on the Campaign table. 
To establish relationships between the Campaign table and the other 3 tables, we set the columns contact_id, category_id, and subcategory_id in the Campaign table as foreign keys referencing the primary keys of the Contacts, Category, and Subcategory tables respectively.
<img width="708" alt="image" src="https://github.com/dali1932/Crowdfunding_ETL/assets/149288692/ff32a285-eb19-43ab-be18-bf6eef4b865c">

By exporting the file to Postgres, we used the schema to create the tables on Postgres and named the database crowdfunding_db.


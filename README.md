![oracle-plsql](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/e67f8cfc-c6e1-42de-bd19-94c98831c91d)

# Oracle PL/SQL

This is a presentation portfolio for a reduced example of a DB that controls the registration of Customers, Products and Sales.

All the tables have a primary key, a foreign key, indexes on the main fields and sequences to avoid problems with the primary key.

There are also triggers to automatically record the date and time for creating and updating each record.

There is a logging process for each record creation and change, so triggers and a specific table for logs were used.

## Triggers ##
Triggers were created in all tables to automatically record "when a record was created" and "when a record was updated", this is important in situations where it is necessary to do data exports only of new or changed records from a date onwards.

## Procedure and Job ##
A procedure **DeleteOldLogs** was created to clean up the log table and a daily schedule was scheduled to run this procedure.

## Function ##
A function **GetStockStatus** has been created to calculate whether the stock of a product needs any attention, for example, if it is zero, with excesses or if it is ok.

### Scalar ###
In the VW_Customers view, some scalar functions were used, such as CONCAT and EXTRACT, to make it easier to see the month and day of the customer's birthday

### Aggregate ###
In the VW_CUSTOMERS_SALES view was created in order to create a view of the customers with the count of orders for each customer and the sum of all the orders for each customer, using COUNT and SUM functions.

## View ##
Two Views were created (VW_PRODUCTS, VW_SALES) to make it easier to search for data related to Sale and also to search for data related to Product registration. By creating these views, it is possible to centralize business rules that are consumed by various sources such as procedures, functions, applications, manual queries, etc.

## Log ##
A generic table was created to record Insert, Update and Delete logs for any table, using a JSON format. To record in this table it is necessary to create a trigger for each table, in this trigger a process was used to generate a JSON structure, where only the fields that have changed will be recorded, thus leaving cleaner and leaner information.

## Primary Key PK ##
All tables have a PK of just a single field, as this facilitates relationships between tables and consumption by languages such as Java.

## Indexes ##
As this is a small DB and an experiment, simple indexes have been created on the main field of each table.

## Foreign Key FK ##
FKs were created for all the necessary fields.

## Advanced queries:
- [Advanced queries](docs/advanced_queries.md)

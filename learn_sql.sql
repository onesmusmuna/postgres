-- Database is a collection of data stored in a format that can easily be accessed.

-- get help before connecting.
`psql --help`

-- connecting to a database, If you dont input the 'DBnameToConnectTo', it defaults to postgres database.
`psql -h <hostname|localhost> -p <port|5432> -U <username|postgres> <DBnameToConnectTo>` 


-- postgres commands.
\?  --> help with psql commands.
\h  --> help with SQL commands.
\l  --> list all database.
\c <DBname> --> connect to another DB.
\d  --> list all tables.
\d <table_name> --> see the table, its columns, data types and constraints.
\i <file_path>  --> execute commands from file.
\q  --> quit.


-- creating database.
CREATE DATABASE <dbname> ;

-- drop database. dangerous! 
DROP DATABASE <dbname> ;

-- create table. With example.
CREATE TABLE <table_name> (
    <column_name> <data_type> <constraints_if_any>
);

CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL
);

-- BIGSERIAL -> auto-incrementing eight-byte interger.
-- NOT NULL  -> not empty.
-- PRIMARY KEY -> uniquely identifies an item on a table.

-- how to insert records into tables.
INSERT INTO person (first_name, last_name, gender, date_of_birth)
VALUES ('John', 'Doe', 'Female', date '1990-01-20');

-- update a record. 
UPDATE <table_name> SET <column_name> = '<some_value>' WHERE '<some_value>|ID' = '<some_value>';

-- drop table. dangerous! 
DROP TABLE <table_name>;

-- delete a record | row in a table.
DELETE FROM <table_name> WHERE <column_name> = '<some_value>';


-- select command  ------------------------------------------------

-- all records in table.
SELECT * FROM <table_name>;

* --> means we are selecting every column in the table.

-- select single column
SELECT <column_name> FROM <table_name>;

-- select multiple column
SELECT <column_name>, <last_name> FROM <table_name>;

-- order by, ASC-ascending | DESC-descending.
SELECT * FROM <table_name> ORDER BY <column_name> <ASC|DESC>;

-- distinct, removes duplicates | returns unique items in the column.
-- this will return only unique items in the named column.
SELECT DISTINCT <column_name> FROM <table_name>;

-- using distinct with order by.
SELECT DISTINCT <column_name> FROM <table_name> ORDER BY <column_name> ASC;

-- WHERE clause. filter.
SELECT * FROM <table_name> WHERE <column_name> = '<some_value>';

-- WHERE clause and AND. filter.
SELECT * FROM <table_name> WHERE <column_name> = '<some_value>' AND <column_name> = '<some_value>';

-- using OR. with 3 columns.
SELECT * FROM <table_name> WHERE <column_name> = '<some_value>' AND (<column_name> = '<some_value>' OR <column_name> = '<some_value>');



-- limit
SELECT * FROM <table_name> LIMIT <no_of_records>


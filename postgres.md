### Create a database in postgresql

	$ createdb mydb

### Delete a database in postgresql

	$ dropdb mydb

### Know psql

	$ psql --help # shows all commands available


### Login to database

	$ psql --username postgres  # Enter password when prompted. Logins to the default database for the given user

### List of databases after login

	defaultdb=# \l

### List of schema names

	defaultdb=# \dn

### To write sql in vim editor instead of command line

	defaultdb=# \e

### Create a Table
```sql
CREATE TABLE weather (
	city varchar(80), -- this is comment
	temp_lo int, -- low temprature
	temp_hi int -- high temprature
);
```

### Display tables of public schema along with column names

	=# \d

### Display tables of specified schema along with column names

	=# \d schema.*

### Display tables of specified schema

	=# \dt schema.*


### Display table columns

	=# \d tablename

### Drop a table

	=# DROP TABLE tablename

### Execute commands from a sql file from inside psql prompt

	=# \i ./myfile.sql

where i stands for input file

### Execute commands from a sql file from outside psql prompt

	$ psql -U dbusername -d dbname -f filename
	$ psql -U postgres -d postgres -f ./myfile.sql

### Replace new line charcter
	Update tablename set fieldname=regexp_replace(fieldname, E'[\\n\\r]+', '', 'g');

### Import file
	\copy zmis.tb from '/Users/koteswara-0347/Downloads/Final_TB_IC.csv' with delimiter ',' CSV HEADER encoding 'windows-1252';

### Import file by specifying column names
	\copy zmis.tb(field1, field2, ...) from '/Users/koteswara-0347/Downloads/Final_TB_IC.csv' with delimiter ',' CSV HEADER encoding 'windows-1252';

### Export from database
	\copy (select * from hr.psp) TO './psp.csv' WITH CSV HEADER

#### Rename a Column
	ALTER TABLE hr.employee RENAME COLUMN pspf TO pspamt;

#### Creating new data type
```sql 
-- It accepts upper case alphabets and numers only e.g 'K1234J'
CREATE DOMAIN alnum AS text CHECK( value ~ '^[A-Z0-9]+$');

-- It accepts one special character '-' along wiht upper case alpha and numeric
CREATE DOMAIN alnumh AS text CHECK( value ~ '^[A-Z0-9\-]+$');

CREATE TABLE Employee (
	Id alnum not null,
	Name text
);
```

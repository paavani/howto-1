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

### Create a Table

	=# CREATE TABLE weather (
	=# city varchar(80), -- this is comment
	=# temp_lo int, -- low temprature
	=# temp_hi int -- high temprature
	=# );

### Display tables

	=# \d

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


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



### PSQL Commands

	//Login as user postgres
	psql -h localhost -U postgres
	
	// To (c)onnect to other db
	mysql: use db_name
	postgresql: \c db_name

	mysql: SHOW TABLES
	postgresql: \d
	postgresql: SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

	mysql: SHOW DATABASES
	postgresql: \l
	postgresql: SELECT datname FROM pg_database;

	mysql: SHOW COLUMNS
	postgresql: \d table
	postgresql: SELECT column_name FROM information_schema.columns WHERE table_name ='table';

	mysql: DESCRIBE TABLE
	postgresql: \d+ table
	postgresql: SELECT column_name FROM information_schema.columns WHERE table_name ='table';

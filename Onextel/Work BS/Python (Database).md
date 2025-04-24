
Important: 
1. Date
2. Number of entries in the database. 
3. 1000 (count at which we commit)


Install postgres:
	apt install postgresql
Switch to postgres user: 
	sudo su - postgres
start postgres sql:
	psql


Create user: 
	createuser -P {username}
	prompted for password: 
		1234
Create database: 
	createdb {db_name} -O {username}

Loginto particular database: 
	psql -h 127.0.0.1 -U {aviuser} {avi_db}

Delete Table: 
```
DO $$ 
BEGIN
    EXECUTE (
        SELECT string_agg('DROP TABLE IF EXISTS "' || tablename || '" CASCADE;', ' ')
        FROM pg_tables
        WHERE schemaname = 'public'
    );
END $$;
```

|            | 5000 (1000 chunks) | 20000 (1000 chunks) |
| :--------: | :----------------: | :-----------------: |
| Sequential |      29.10 s       |   0:01:58.487998    |
|  Parallel  |      15.78 s       |    62.79 seconds    |
|            |                    |                     |

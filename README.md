DEVELOPMENT SETUP
1. start database: 

- create a file in the same directory as package.json named '.env' containing the following:
```
NODE_ENV={development or production}
PGUSER={name of database user}
PGHOST=localhost
PGPASSWORD={password for database user}
PGDATABASE={name you want to give to database}
PGPORT={Port where you want database to be hosted}
```
- in command prompt under db/ folder run ```build_image.bat``` then ```run_container.bat```
- database will be setup and should be running at localhost:PGPORT
- recommended: connect to database using [pgadmin](https://www.pgadmin.org/) to test

2. from root of folder (where package.json exists) run ```npm start``` to run backend 



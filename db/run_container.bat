for /f "delims== tokens=1,2" %%G in (../.env) do set %%G=%%H
docker run --name financial-db-container -e POSTGRES_PASSWORD=%PGPASSWORD% -e POSTGRES_USER=%PGUSER% -e POSTGRES_DB="%PGDATABASE%" -d -p %PGPORT%:5432 financial-db:1.0.0 
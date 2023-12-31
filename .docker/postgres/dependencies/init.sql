CREATE DATABASE prefect;
\c prefect
CREATE USER prefect WITH ENCRYPTED PASSWORD 'prefectpass';
GRANT ALL ON DATABASE prefect TO prefect;
GRANT ALL PRIVILEGES ON SCHEMA public TO prefect;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO prefect;
GRANT ALL ON ALL TABLES IN SCHEMA public TO prefect;
CREATE DATABASE metabase;
\c metabase
CREATE USER metabase WITH ENCRYPTED PASSWORD 'metabasepass';
GRANT ALL ON DATABASE metabase TO metabase;
GRANT ALL PRIVILEGES ON SCHEMA public TO metabase;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO metabase;
GRANT ALL ON ALL TABLES IN SCHEMA public TO metabase;
CREATE DATABASE redshift;
\c redshift
CREATE USER redshift WITH ENCRYPTED PASSWORD 'redshiftpass';
CREATE USER buss WITH ENCRYPTED PASSWORD 'busspass';
CREATE SCHEMA raw;
CREATE SCHEMA processed;
CREATE SCHEMA business;
GRANT ALL ON DATABASE redshift TO redshift;
GRANT ALL PRIVILEGES ON SCHEMA public TO redshift;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO redshift;
GRANT ALL ON ALL TABLES IN SCHEMA public TO redshift;
GRANT ALL PRIVILEGES ON SCHEMA raw TO redshift;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA raw TO redshift;
GRANT ALL ON ALL TABLES IN SCHEMA raw TO redshift;
GRANT ALL PRIVILEGES ON SCHEMA processed TO redshift;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA processed TO redshift;
GRANT ALL ON ALL TABLES IN SCHEMA processed TO redshift;
GRANT ALL PRIVILEGES ON SCHEMA business TO redshift;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA business TO redshift;
GRANT ALL ON ALL TABLES IN SCHEMA business TO redshift;
GRANT USAGE  ON SCHEMA processed TO buss;
GRANT SELECT ON ALL TABLES IN SCHEMA processed TO buss;
GRANT USAGE  ON SCHEMA business TO buss;
GRANT SELECT ON ALL TABLES IN SCHEMA business TO buss;

-- functions --

CREATE FUNCTION current_group() RETURNS varchar
    AS 'select rolname from pg_user
join pg_auth_members on (pg_user.usesysid=pg_auth_members.member)
join pg_roles on (pg_roles.oid=pg_auth_members.roleid)
where
pg_user.usename=current_user;'
    LANGUAGE SQL;


--create ETL user
CREATE USER etl WITH PASSWORD 'etlpass';
--grant connect
GRANT CONNECT ON DATABASE "AdventureWorks" TO etl;
--grant table permissions
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO etl;
GRANT USAGE ON SCHEMA public TO etl;
GRANT CREATE ON SCHEMA public TO etl;

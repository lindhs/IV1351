# IV1351
Project work, dumps , schemas for course.

In the files, we have separated the project into each seminar.
Sem1 contains unidb_schema.sql wich is our db-schema, exported from Astah.
              unidb_dump.sql contains our data, dumped with pg_dump in DataGrip, it uses INSERT.

to create the project for Sem1. Please do the following:
- Create new DB with PostGres
  psql# CREATE DATABASE unidb;
  connect to it use /c unidb
- Make sure you have the files in current folder
  psql# \! pwd, unidb_dump.sql & unidb_schema.sql should be present, if not, move to folder with
  psql# \cs ../.../...
- **OBS** import the schema first
  psql# \i unidb_schema.sql
  then insert all data.
  psql# \i unidb_dump.sql

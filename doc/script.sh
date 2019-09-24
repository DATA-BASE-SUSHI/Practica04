#! /bin/bash

sudo docker exec -it sql1 "bash"

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "<kerberoskero1A@>"

CREATE DATABASE lab_db;

GO

USE lab_db;

GO
#Changed database context to 'lab_db'.

CREATE LOGIN log_lab_p4 WITH PASSWORD = 'queso-sushi1A';

GO

CREATE USER lab_p4 FOR LOGIN log_lab_p4;

GO

EXIT

/opt/mssql-tools/bin/sqlcmd -S localhost -U log_lab_p4 -P "queso-sushi1A"

USE lab_db;

GO

#Changed database context to 'lab_db'.

SELECT CURRENT_USER;

GO

#lab_p4

SELECT DB_NAME() AS [CURRENT DATABASE];

GO

CURRENTE DATABASE

#lab_db

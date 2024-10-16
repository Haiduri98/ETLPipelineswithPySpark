USE [master]
GO
CREATE LOGIN [etl] with password ='root', DEFAULT_DATABASE = [AdventureWorksDW2019], CHECK_EXPIRATION = off, CHECK_POLICY = off
go
use [AdventureWorksDW2019]
go
create user [etl] for login [etl]
go
USE [AdventureWorksDW2019]
go
alter role [db_datareader] add member [etl]
go
use [master]
go
grant connect sql to [etl]
go
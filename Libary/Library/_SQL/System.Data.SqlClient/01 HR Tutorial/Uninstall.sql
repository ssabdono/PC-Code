if exists (select * from sysobjects where id = object_id('dbo.Employees'))
	drop table "dbo"."Employees"
GO

if exists (select * from sysobjects where id = object_id('dbo.Jobs'))
	drop table "dbo"."Jobs"
GO

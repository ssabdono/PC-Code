SET NOCOUNT ON
GO

set quoted_identifier on
GO

CREATE TABLE [dbo].[Jobs](
	[JobID] [int] identity NOT NULL primary key,
	[Title] [nvarchar](50) NULL,
	[Description] [ntext] NULL,
)

GO


CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] identity primary key NOT NULL,
	[LastName] [nvarchar](30) NULL,
	[FirstName] [nvarchar](50) NULL,
	[JobID] [int] NULL,
	[Salary] [money] NULL,
	[Notes] [ntext] NULL,
	[Photo] [image] NULL,
	[HireDate] [datetime] NULL,
)

GO

ALTER TABLE [dbo].[Employees]  ADD  CONSTRAINT [Employees_Jobs_FK] FOREIGN KEY([JobID])
REFERENCES [dbo].[Jobs] ([JobID])
GO


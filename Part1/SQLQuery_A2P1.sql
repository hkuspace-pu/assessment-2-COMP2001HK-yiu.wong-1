SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [A2P1].[Programmes](
	[Code] [int] IDENTITY(201,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [A2P1].[Aduiting] on [A2P1].[Programmes] after UPDATE as 
begin
	insert into A2P1.Audit (
		Change,
		Code,
		Title
	)
	values(
		'Update',
		(select code from deleted),
		(select title from deleted)
	);
end
GO
ALTER TABLE [A2P1].[Programmes] ENABLE TRIGGER [Aduiting]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [A2P1].[Projects](
	[ProjectId] [int] IDENTITY(301,1) NOT NULL,
	[Title] [varchar](20) NOT NULL,
	[Description] [varchar](100) NULL,
	[Year] [char](4) NULL,
	[Thumbnail] [varchar](255) NULL,
	[Poster] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [A2P1].[Students](
	[StudentId] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Code] [int] NULL,
	[ProjectId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [A2P1].[Students]  WITH CHECK ADD FOREIGN KEY([Code])
REFERENCES [A2P1].[Programmes] ([Code])
GO
ALTER TABLE [A2P1].[Students]  WITH CHECK ADD FOREIGN KEY([ProjectId])
REFERENCES [A2P1].[Projects] ([ProjectId])
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [A2P1].[Student_Programme](
	[Student_Id] [int] NOT NULL,
	[Programme_Code] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Student_Id] ASC,
	[Programme_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [A2P1].[Audit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Change] [varchar](50) NOT NULL,
	[Code] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [A2P1].[StuProgView] AS
	SELECT 
		V1.StudentId,
		V1.Name AS StudentName,
		v.Code AS ProgrammeCode,
		v.Title AS ProgrammeTitle
	FROM A2P1.Students V1
		LEFT JOIN A2P1.Student_Programme s ON s.Student_Id = V1.StudentId
		LEFT JOIN A2P1.Programmes v ON v.Code = s.Programme_Code;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [A2P1].[Create_Programme]
	@title varchar(50)
as
begin
	insert into A2P1.Programmes (Title) values (@title);
	print 'A new programme is created successfully!';
end

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [A2P1].[Update_Programme]
	@programmeCode int,
	@title varchar(50)
as
begin
	if exists (select * from A2P1.Programmes where Code = @programmeCode)
	begin
		update A2P1.Programmes set Title=@title where Code = @programmeCode
		print 'The programme is updated!';
	end
	else
	begin
		print 'Programme NOT exist!';
	end
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [A2P1].[Delete_Programme]
	@programmeCode int
as
begin
	if exists (select * from A2P1.Programmes where Code = @programmeCode)
	begin
		delete from A2P1.Programmes where Code = @programmeCode
		print 'Programme is deleted successfully!';
	end
	else
	begin
		print 'Programme NOT found!'
	end	
end
GO

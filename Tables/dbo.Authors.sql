CREATE TABLE [dbo].[Authorss]
(
[AuthorID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BirthDate] [date] NULL,
[Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authors] ADD CONSTRAINT [PK__Authors__70DAFC14B3E31971] PRIMARY KEY CLUSTERED ([AuthorID]) ON [PRIMARY]
GO

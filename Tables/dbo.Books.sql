CREATE TABLE [dbo].[Books]
(
[BookID] [int] NOT NULL IDENTITY(1, 1),
[Title] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Genre] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PublishYear] [int] NULL,
[AuthorID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books] ADD CONSTRAINT [PK__Books__3DE0C227D0394CCC] PRIMARY KEY CLUSTERED ([BookID]) ON [PRIMARY]
GO

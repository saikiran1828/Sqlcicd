CREATE TABLE [dbo].[Members]
(
[MemberID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateOfBirth] [date] NULL,
[JoinDate] [date] NULL CONSTRAINT [DF__Members__JoinDat__3D5E1FD2] DEFAULT (CONVERT([date],getdate()))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Members] ADD CONSTRAINT [PK__Members__0CF04B38811AF745] PRIMARY KEY CLUSTERED ([MemberID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Members] ADD CONSTRAINT [UQ__Members__A9D10534F0654F8E] UNIQUE NONCLUSTERED ([Email]) ON [PRIMARY]
GO

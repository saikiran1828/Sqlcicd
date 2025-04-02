CREATE TABLE [dbo].[BorrowedBooks]
(
[BorrowID] [int] NOT NULL IDENTITY(1, 1),
[MemberID] [int] NULL,
[BookID] [int] NULL,
[BorrowDate] [date] NULL CONSTRAINT [DF__BorrowedB__Borro__403A8C7D] DEFAULT (CONVERT([date],getdate())),
[ReturnDate] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BorrowedBooks] ADD CONSTRAINT [PK__Borrowed__4295F85F86EAEB42] PRIMARY KEY CLUSTERED ([BorrowID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BorrowedBooks] ADD CONSTRAINT [FK__BorrowedB__BookI__4222D4EF] FOREIGN KEY ([BookID]) REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[BorrowedBooks] ADD CONSTRAINT [FK__BorrowedB__Membe__412EB0B6] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[Members] ([MemberID])
GO

CREATE TABLE [dbo].[Invoice] (
    [Id]         INT   IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT   NOT NULL,
    [TotalItbis] MONEY CONSTRAINT [DF_Invoice_TotalItbis] DEFAULT ((0)) NOT NULL,
    [SubTotal]   MONEY NOT NULL,
    [Total]      MONEY NOT NULL,
    CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Invoice_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);


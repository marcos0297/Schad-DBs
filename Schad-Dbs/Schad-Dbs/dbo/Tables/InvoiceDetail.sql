CREATE TABLE [dbo].[InvoiceDetail] (
    [Id]         INT   IDENTITY (1, 1) NOT NULL,
    [InvoiceId]  INT   NOT NULL,
    [Qty]        INT   CONSTRAINT [DF_InvoiceDetail_TotalItbis1] DEFAULT ((0)) NOT NULL,
    [Price]      MONEY NOT NULL,
    [TotalItbis] MONEY CONSTRAINT [DF_InvoiceDetail_TotalItbis] DEFAULT ((0)) NOT NULL,
    [SubTotal]   MONEY NOT NULL,
    [Total]      MONEY NOT NULL,
    CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);


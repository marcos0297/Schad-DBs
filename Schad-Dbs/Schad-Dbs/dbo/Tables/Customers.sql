CREATE TABLE [dbo].[Customers] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [CustName]       NVARCHAR (70)  NOT NULL,
    [Adress]         NVARCHAR (120) NOT NULL,
    [Status]         BIT            CONSTRAINT [DF_Customers_Status] DEFAULT ((1)) NOT NULL,
    [CustomerTypeId] INT            CONSTRAINT [DF_Customers_CustomerType] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Customers_CustomerTypes] FOREIGN KEY ([CustomerTypeId]) REFERENCES [dbo].[CustomerTypes] ([Id]) ON UPDATE CASCADE
);


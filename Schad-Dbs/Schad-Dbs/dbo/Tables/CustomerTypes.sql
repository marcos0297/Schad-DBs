CREATE TABLE [dbo].[CustomerTypes] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (70) NOT NULL,
    CONSTRAINT [PK_CustomerType] PRIMARY KEY CLUSTERED ([Id] ASC)
);


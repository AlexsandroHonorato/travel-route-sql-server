
CREATE TABLE [dbo].[rotas](
	[id] [uniqueidentifier] NOT NULL,
	[origem] [varchar](3) NOT NULL,
	[destino] [varchar](3) NOT NULL,
	[valor] [money] NOT NULL
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[rotas] ADD  DEFAULT (newid()) FOR [id]


CREATE TABLE [dbo].[usuarios](
	[id] [uniqueidentifier] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[senha] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (newid()) FOR [id]
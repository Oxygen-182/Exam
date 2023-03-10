USE [University_Родионов]
GO

/****** Object:  Table [dbo].[Kafedra]    Script Date: 12.02.2023 16:38:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Kafedra](
	[kod_kafedru] [int] NOT NULL,
	[kod_faculteta] [int] NULL,
	[name_kafedra] [nvarchar](50) NULL,
	[fio_zavkaf] [nvarchar](50) NULL,
	[nomer_komnatu] [nvarchar](50) NULL,
	[num_korpusa] [nvarchar](50) NULL,
	[tel_kafedru] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kafedra] PRIMARY KEY CLUSTERED 
(
	[kod_kafedru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Kafedra]  WITH CHECK ADD  CONSTRAINT [CK_Kafedra] CHECK  (([num_korpusa]='12' OR [num_korpusa]='11' OR [num_korpusa]='10' OR [num_korpusa]='9' OR [num_korpusa]='8' OR [num_korpusa]='7' OR [num_korpusa]='6' OR [num_korpusa]='5' OR [num_korpusa]='4' OR [num_korpusa]='3' OR [num_korpusa]='2' OR [num_korpusa]='1'))
GO

ALTER TABLE [dbo].[Kafedra] CHECK CONSTRAINT [CK_Kafedra]
GO

ALTER TABLE [dbo].[Kafedra]  WITH CHECK ADD FOREIGN KEY([kod_faculteta])
REFERENCES [dbo].[Facultet] ([kod_faculteta])
GO

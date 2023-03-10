USE [University_Родионов]
GO

/****** Object:  Table [dbo].[Facultet]    Script Date: 12.02.2023 16:32:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Facultet](
	[kod_faculteta] [int] NOT NULL,
	[name_faculteta] [nvarchar](225) NULL,
	[fio_decana] [nvarchar](225) NULL,
	[nomer_komnatu] [nvarchar](50) NULL,
	[tel_decanata] [bigint] NULL,
 CONSTRAINT [PK_Facultet] PRIMARY KEY CLUSTERED 
(
	[kod_faculteta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Facultet]  WITH CHECK ADD  CONSTRAINT [CK_Facultet] CHECK  (([tel_decanata]<(1000000)))
GO

ALTER TABLE [dbo].[Facultet] CHECK CONSTRAINT [CK_Facultet]
GO



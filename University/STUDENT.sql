USE [University_Родионов]
GO

/****** Object:  Table [dbo].[STUDENT]    Script Date: 12.02.2023 17:02:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STUDENT](
	[STUDENT_ID] [int] NOT NULL,
	[SUTNAME] [nvarchar](100) NOT NULL,
	[SUTFNAME] [nvarchar](100) NOT NULL,
	[STIPEND] [decimal](18, 0) NULL,
	[KURS] [int] NULL,
	[CITY] [nvarchar](100) NULL,
	[BIRTDAY] [datetime] NULL,
	[SGROUP] [nvarchar](100) NULL,
	[kod_kafedru] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[STUDENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD FOREIGN KEY ([kod_kafedru])
REFERENCES [dbo].[Kafedra] ([kod_kafedru])
GO

ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD CHECK  (((1)<=[KURS] AND [KURS]<=(5)))
GO

ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD CHECK  (([STIPEND]<(500)))
GO



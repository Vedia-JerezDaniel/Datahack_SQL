USE [centro_4]
GO

/****** Object:  Table [dbo].[PACIENT]    Script Date: 11/04/2024 19:09:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PACIENT](
	[ID_PACIENT] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[LAST_NAME] [varchar](50) NOT NULL,
	[BIRTHDAY] [date] NOT NULL,
	[LOCATION] [varchar](50) NOT NULL,
	[COUNTRY] [char](5) NULL,
	[PHONE] [int] NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[OBSERVATIONS] [varchar](50) NULL,
 CONSTRAINT [PK_PACIENT] PRIMARY KEY CLUSTERED 
(
	[ID_PACIENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



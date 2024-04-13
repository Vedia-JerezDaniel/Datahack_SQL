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
	[OBSERVATION] [varchar](50) NULL,
 CONSTRAINT [PK_PACIENT] PRIMARY KEY CLUSTERED 
(
	[ID_PACIENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, 
ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [centro_4]
GO

/****** Object:  Table [dbo].[HISTORY]    Script Date: 12/04/2024 15:01:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HISTORY](
	[ID_HISTORY] [int] IDENTITY(1,1) NOT NULL,
	[TIMESTAMP] [datetime] NULL,
	[OBSERVATION] [varchar](2000) NULL,
 CONSTRAINT [PK_HISTORY] PRIMARY KEY CLUSTERED 
(
	[ID_HISTORY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [centro_4]
GO

/****** Object:  Table [dbo].[RECORDS]    Script Date: 12/04/2024 15:07:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RECORDS](
	[ID_HISTORY] [int] NOT NULL,
	[ID_PACIENT] [int] NOT NULL,
	[ID_DOCTOR] [int] NOT NULL,
 CONSTRAINT [PK_RECORDS] PRIMARY KEY CLUSTERED 
(
	[ID_HISTORY] ASC,
	[ID_PACIENT] ASC,
	[ID_DOCTOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [centro_4]
GO

/****** Object:  Table [dbo].[COUNTRY]    Script Date: 12/04/2024 15:11:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[COUNTRY](
	[ID_COUNTRY] [char](3) NOT NULL,
	[COUNTRY] [varchar](50) NULL,
 CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[ID_COUNTRY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [centro_4]
GO

/****** Object:  Table [dbo].[WORK]    Script Date: 12/04/2024 15:16:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WORK](
	[ID_WORK] [int] IDENTITY(1,1) NOT NULL,
	[ETL_WORK] [datetime] NULL,
	[STATUS] [smallint] NULL,
	[OBSERVACION] [varchar](1000) NULL,
 CONSTRAINT [PK_WORK] PRIMARY KEY CLUSTERED 
(
	[ID_WORK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [centro_4]
GO

/****** Object:  Table [dbo].[WORK_PACIENT]    Script Date: 12/04/2024 15:19:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WORK_PACIENT](
	[ID_WORK] [int] NOT NULL,
	[ID_PACIENT] [int] NOT NULL,
	[ID_DOCTOR] [int] NOT NULL,
 CONSTRAINT [PK_WORK_PACIENT] PRIMARY KEY CLUSTERED 
(
	[ID_WORK] ASC,
	[ID_PACIENT] ASC,
	[ID_DOCTOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [centro_4]
GO

/****** Object:  Table [dbo].[STATUS]    Script Date: 13/04/2024 17:21:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STATUS](
	[ID_STATUS] [smallint] NOT NULL,
	[DESCRIPTION] [varchar](50) NULL,
 CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED 
(
	[ID_STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [centro_4]
GO

/****** Object:  Table [dbo].[SPECIALITY]    Script Date: 13/04/2024 17:25:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SPECIALITY](
	[ID_SPECIALITY] [int] IDENTITY(1,1) NOT NULL,
	[SPECIALITY] [varchar](30) NULL,
 CONSTRAINT [PK_SPECIALITY] PRIMARY KEY CLUSTERED 
(
	[ID_SPECIALITY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [DBO].[PAYMENTS] (
[ID_PAYMENT] [INT] IDENTITY (1,1) NOT NULL PRIMARY KEY,
[CONCEPT] [TINYINT] NOT NULL,
[TIMESTAMP] [DATETIME] NOT NULL,
[COST] [MONEY] NOT NULL,
[STATUS] [TINYINT],
[OBSERVATION] [VARCHAR](1000)
)

USE [centro_4]
GO

/****** Object:  Table [dbo].[PAYMENTS]    Script Date: 13/04/2024 17:32:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PAYMENTS](
	[ID_PAYMENT] [int] IDENTITY(1,1) NOT NULL,
	[CONCEPT] [tinyint] NOT NULL,
	[TIMESTAMP] [datetime] NOT NULL,
	[COST] [money] NOT NULL,
	[STATUS] [tinyint] NULL,
	[OBSERVATION] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PAYMENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE PAYMENT_PACIENT (
ID_PAYMENT INT NOT NULL,
ID_PACIENT INT NOT NULL,
ID_WORK INT NOT NULL 

PRIMARY KEY (ID_PAYMENT, ID_PACIENT, ID_WORK)
)

USE [centro_4]
GO

/****** Object:  Table [dbo].[PAYMENT_PACIENT]    Script Date: 13/04/2024 17:38:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PAYMENT_PACIENT](
	[ID_PAYMENT] [int] NOT NULL,
	[ID_PACIENT] [int] NOT NULL,
	[ID_WORK] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PAYMENT] ASC,
	[ID_PACIENT] ASC,
	[ID_WORK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [centro_4]
GO

/****** Object:  Table [dbo].[DOCTOR]    Script Date: 13/04/2024 17:41:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DOCTOR](
	[ID_DOCTOR] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[LASTNAME] [varchar](50) NULL,
 CONSTRAINT [PK_DOCTOR] PRIMARY KEY CLUSTERED 
(
	[ID_DOCTOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE DOCTOR_SPECIALITY(
ID_DOCTOR INT NOT NULL,
ID_SPECIALITY INT NOT NULL,
DESCRIPTION VARCHAR(50) NOT NULL 

PRIMARY KEY (ID_DOCTOR, ID_SPECIALITY)
)

USE [centro_4]
GO

/****** Object:  Table [dbo].[DOCTOR_SPECIALITY]    Script Date: 13/04/2024 17:43:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DOCTOR_SPECIALITY](
	[ID_DOCTOR] [int] NOT NULL,
	[ID_SPECIALITY] [int] NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DOCTOR] ASC,
	[ID_SPECIALITY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE CONCEPT (
ID_CONCEPT TINYINT IDENTITY (1,1) NOT NULL PRIMARY KEY,
DESCRIPTION VARCHAR(100)
)

USE [centro_4]
GO

/****** Object:  Table [dbo].[CONCEPT]    Script Date: 13/04/2024 18:03:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CONCEPT](
	[ID_CONCEPT] [tinyint] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CONCEPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


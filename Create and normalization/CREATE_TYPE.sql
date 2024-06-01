CREATE TYPE DOCTOR FROM INT NOT NULL
CREATE TYPE WORK FROM INT NOT NULL
CREATE TYPE HISTORY FROM INT NOT NULL

USE [centro_4]
GO

/****** Object:  UserDefinedDataType [dbo].[HISTORY]    Script Date: 13/04/2024 18:32:20 ******/
CREATE TYPE [dbo].[HISTORY] FROM [int] NOT NULL
GO

USE [centro_4]
GO

/****** Object:  UserDefinedDataType [dbo].[OBSERVATION]    Script Date: 13/04/2024 18:39:12 ******/
CREATE TYPE [dbo].[OBSERVATION] FROM [varchar](1000) NOT NULL
GO




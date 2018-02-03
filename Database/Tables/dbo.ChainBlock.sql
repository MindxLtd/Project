USE [Ayiza_DB]
GO

/****** Object:  Table [dbo].[Environment]    Script Date: 1/26/2018 8:44:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Block_Chain](
	
	
	
	[AY_F_BLCKCHAIN_ID] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] [int] NULL,
	[AY_F_BLCKCHAIN_YEAR] [varchar](6) NULL,
	[AY_F_BLCKCHAIN_FR] [varchar](100) NULL,
	[AY_F_BLCKCHAIN_TO] [varchar](100) NULL,
	[AY_F_BLCKCHAIN_GEN] [varchar](1) NULL,
	[AY_F_BLCKCHAIN_CN] [varchar](100) NULL,
	[AY_F_CREATE_TIME] [varchar](10) NULL,
	[AY_F_CREATED_BY] [int] NULL,
	[AY_F_LAST_CHG_DATE] [varchar](10) NULL,
	[AY_F_LAST_CNG_TIME] [varchar](10) NULL,
	[AY_F_LAST_CHG_BY] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ayiza_DB]
GO

/****** Object:  Table [dbo].[Environment]    Script Date: 1/26/2018 8:44:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Environment](
	[AY_ENV_ID] [int] IDENTITY(1,1) NOT NULL,
	[AY_F_ENV_TEXT] [varchar](70) NULL,
	[AY_F_CREATE_DATE] [varchar](10) NULL,
	[AY_F_CREATE_TIME] [varchar](10) NULL,
	[AY_F_CREATED_BY] [int] NULL,
	[AY_F_LAST_CHG_DATE] [varchar](10) NULL,
	[AY_F_LAST_CNG_TIME] [varchar](10) NULL,
	[AY_F_LAST_CHG_BY] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



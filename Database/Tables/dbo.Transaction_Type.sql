USE [AYIZA_DB]
GO

/****** Object:  Table [dbo].[Language]    Script Date: 11/6/2017 12:20:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Transaction_Type](
	[AY_F_Transaction_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] int NULL,
	[AY_F_TRANS_TYPE] [nvarchar](max) NULL,
	[AY_F_LANG_CODE] [nvarchar](max) NULL,
	[AY_F_APPL_TYPE] [nvarchar](max) NULL,
	[AY_F_FXRATE_TYPE] [nvarchar](max) NULL,
	[AY_F_LANG_Id] int NULL,
	[AY_F_APPL_Id] int null,
	[AY_FX_RATE_TYPE_ID] int null,
	[AY_F_TRANSTY_TEXT] [nvarchar](max) NULL,
	[AY_F_NUMRNG_ID] [nvarchar](max) NULL,
	[AY_F_BLOCKCHAIN_ID] [nvarchar](max) NULL,
	[AY_F_CREATE_DATE] [nvarchar](max) NULL,
	[AY_F_CREATE_TIME] [nvarchar](max) NULL,
	[AY_F_CREATED_BY] int NULL,
	[AY_F_LAST_CHG_DATE] [nvarchar](max) NULL,
	[AY_F_LAST_CNG_TIME] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_BY] int NULL,
	FOREIGN KEY ([AY_F_LANG_Id]) REFERENCES [Language]([AY_F_LANG_Id]),
	FOREIGN KEY ([AY_F_APPL_Id]) REFERENCES [Application_Type]([AY_F_APPL_Id]),
	FOREIGN KEY ([AY_FX_RATE_TYPE_ID]) REFERENCES [FX_Rate_Type]([AY_FX_RATE_TYPE_ID]),
 CONSTRAINT [PK_Transaction_Type] PRIMARY KEY CLUSTERED 
(
	[AY_F_Transaction_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
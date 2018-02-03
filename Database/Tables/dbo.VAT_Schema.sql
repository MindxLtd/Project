USE [AYIZA_DB]
GO

/****** Object:  Table [dbo].[Language]    Script Date: 11/6/2017 12:20:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[VAT_Schema](
	[AY_F_VAT_Schema_Id] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] int NULL,
	[AY_F_VAT_SCHEME] [nvarchar](max) NULL,
	[AY_F_CTRY_CODE] [nvarchar](max) NULL,
	[AY_F_LANG_CODE] [nvarchar](max) NULL,
	[AY_F_FREQ_CODE] [nvarchar](max) NULL,
	[AY_F_Country_Id] int NULL,
	[AY_F_LANG_ID] int NULL,
	[AY_Frequency_Id] int null,
	[AY_F_VATSCH_TEXT] [nvarchar](max) NULL,
	[AY_F_CASH_BASIS] [nvarchar](max) NULL,
	[AY_F_ACCRUAL_BASIS] [nvarchar](max) NULL,
	[AY_F_CREATE_DATE] [nvarchar](max) NULL,
	[AY_F_CREATE_TIME] [nvarchar](max) NULL,
	[AY_F_CREATED_BY] int NULL,
	[AY_F_LAST_CHG_DATE] [nvarchar](max) NULL,
	[AY_F_LAST_CNG_TIME] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_BY] int NULL,
	FOREIGN KEY ([AY_F_Country_Id]) REFERENCES [Country]([AY_F_Country_Id]),
	FOREIGN KEY ([AY_F_LANG_ID]) REFERENCES [Language]([AY_F_LANG_Id]),
	FOREIGN KEY ([AY_Frequency_Id]) REFERENCES [Frequency]([AY_Frequency_Id]),
 CONSTRAINT [PK_VAT_Schema] PRIMARY KEY CLUSTERED 
(
	[AY_F_VAT_Schema_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
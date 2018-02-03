USE [AYIZA_DB]
GO

/****** Object:  Table [dbo].[Language]    Script Date: 11/6/2017 12:20:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Time_Zone](
	[AY_Time_Zone_Id] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] int NULL,
	[AY_F_TIMZ_CODE] [nvarchar](max) NULL,
	[AY_F_LANG_ID] int NULL,
	[AY_F_LANG_CODE] [nvarchar](max) NULL,
	[AY_F_TIMZ_TEXT] [nvarchar](max) NULL,
	[AY_F_UTC_DIFF] [nvarchar](max) NULL,
	[AY_F_UTC_DIFF_SIGN] [nvarchar](max) NULL,
	[AY_F_SUM_TIM_DIFF] [nvarchar](max) NULL,
	[AY_F_CREATE_DATE] [nvarchar](max) NULL,
	[AY_F_CREATE_TIME] [nvarchar](max) NULL,
	[AY_F_CREATED_BY] int NULL,
	[AY_F_LAST_CHG_DATE] [nvarchar](max) NULL,
	[AY_F_LAST_CNG_TIME] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_BY] int NULL,
	FOREIGN KEY ([AY_F_LANG_ID]) REFERENCES [Language]([AY_F_LANG_Id]),
 CONSTRAINT [PK_Time_Zone] PRIMARY KEY CLUSTERED 
(
	[AY_Time_Zone_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
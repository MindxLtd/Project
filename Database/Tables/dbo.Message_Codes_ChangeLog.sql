USE [AYIZA_DB]
GO

/****** Object:  Table [dbo].[Language]    Script Date: 11/6/2017 12:20:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Message_Codes_ChangeLog](
	[AY_F_Message_Codes_ChangeLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] int NULL,
	[AY_Field_ID] varchar(20) null,
	[AY_OLD_VALUE] [nvarchar](max) NULL,
	[AY_NEW_VALUE] [nvarchar](max) NULL,
	[AY_ACTION] [nvarchar](max) NULL,
	[AY_F_CREATE_DATE] [nvarchar](max) NULL,
	[AY_F_CREATE_TIME] [nvarchar](max) NULL,
	[AY_F_CREATED_BY] int NULL,
	[AY_F_LAST_CHG_DATE] [nvarchar](max) NULL,
	[AY_F_LAST_CNG_TIME] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_BY] int NULL,
 CONSTRAINT [PK_Message_Codes_ChangeLog] PRIMARY KEY CLUSTERED 
(
	[AY_F_Message_Codes_ChangeLog_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
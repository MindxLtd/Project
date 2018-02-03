USE [AYIZA_DB]
GO

/****** Object:  Table [dbo].[Language]    Script Date: 11/6/2017 12:20:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Message_Codes](
	[AY_F_Message_Codes_Id] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] int NULL,
	[AY_F_MESSGC_TYPE] [nvarchar](max) NULL,
	[AY_F_MESSG_TYPE] [nvarchar](max) NULL,
	[AY_F_APPL_TYPE] [nvarchar](max) NULL,
	[AY_F_Message_Type_Id] int NULL,
	[AY_F_APPL_Id] int null,
	[AY_F_MESSGC_TEXT] [nvarchar](max) NULL,
	[AY_F_CREATE_DATE] [nvarchar](max) NULL,
	[AY_F_CREATE_TIME] [nvarchar](max) NULL,
	[AY_F_CREATED_BY] int NULL,
	[AY_F_LAST_CHG_DATE] [nvarchar](max) NULL,
	[AY_F_LAST_CNG_TIME] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_BY] int NULL,
	FOREIGN KEY ([AY_F_Message_Type_Id]) REFERENCES [Message_Type]([AY_F_Message_Type_Id]),
	FOREIGN KEY ([AY_F_APPL_Id]) REFERENCES [Application_Type]([AY_F_APPL_Id]),
 CONSTRAINT [PK_Message_Codes] PRIMARY KEY CLUSTERED 
(
	[AY_F_Message_Codes_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
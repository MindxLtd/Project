USE [AYIZA_DB]
GO

/****** Object:  Table [dbo].[Language]    Script Date: 11/6/2017 12:20:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Users](
	[AY_F_Users_Id] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] int NULL,
	[AY_F_FR_DATE] [nvarchar](max) NULL,
	[AY_F_TO_DATE] [nvarchar](max) NULL,
	[AY_F_USER_ID] [nvarchar](max) NULL,
	[AY_F_USER_LOCKED] int NULL,
	[AY_T_FOA_TYPE] [nvarchar](max) NULL,
	[AY_Form_Of_Address_Type_Id] INT NULL,
	[AY_F_USER_FN] [nvarchar](max) NULL,
	[AY_F_USER_LN] [nvarchar](max) NULL,
	[AY_F_USER_PW] [nvarchar](max) NULL,
	[AY_F_CTRY_CODE] [nvarchar](max) NULL,
	[AY_F_CREATE_DATE] [nvarchar](max) NULL,
	[AY_F_CREATE_TIME] [nvarchar](max) NULL,
	[AY_F_CREATED_BY] INT NULL,
	[AY_F_LAST_CHG_DATE] [nvarchar](max) NULL,
	[AY_F_LAST_CNG_TIME] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_BY] int NULL,
	[AY_F_LANG_CODE] [nvarchar](max) NULL,
	[AY_F_LANG_Id] int NULL,
	[AY_F_UT_CODE] [nvarchar](max) NULL,
	[AY_User_Type_Id] INT NULL,
	[AY_F_UG_CODE] [nvarchar](max) NULL,
	[AY_User_Group_Id] INT NULL,
	[AY_F_DF_CODE] [nvarchar](max) NULL,
	[AY_F_DF_Id] INT NULL,
	[AY_F_DEC_CODE] [nvarchar](max) NULL,
	[AY_F_DEC_Id] INT NULL,
	[AY_F_STATUS_CODE] [nvarchar](max) NULL,
	[AY_F_Status_Id] INT NULL,
	[AY_F_TIMZ_CODE] [nvarchar](max) NULL,
	[AY_Time_Zone_Id] INT NULL
	FOREIGN KEY ([AY_F_LANG_Id]) REFERENCES [Language]([AY_F_LANG_Id]),
	FOREIGN KEY ([AY_User_Type_Id]) REFERENCES [User_Type]([AY_User_Type_Id]),
	FOREIGN KEY ([AY_User_Group_Id]) REFERENCES [User_Group]([AY_User_Group_Id]),
	FOREIGN KEY ([AY_F_DF_Id]) REFERENCES [Date_Format]([AY_F_DF_Id]),
	FOREIGN KEY ([AY_F_DEC_Id]) REFERENCES [Decimal_Format]([AY_F_DEC_Id]),
	FOREIGN KEY ([AY_F_Status_Id]) REFERENCES [Status]([AY_F_Status_Id]),
	FOREIGN KEY ([AY_Time_Zone_Id]) REFERENCES [Time_Zone]([AY_Time_Zone_Id]),
	FOREIGN KEY ([AY_Form_Of_Address_Type_Id]) REFERENCES [Form_Of_Address_Type]([AY_Form_Of_Address_Type_Id]),
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[AY_F_Users_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
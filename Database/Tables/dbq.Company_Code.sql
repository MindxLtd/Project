USE [AYIZA_DB]
GO

/****** Object:  Table [dbo].[Language]    Script Date: 11/6/2017 12:20:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Company_Code](
	[AY_F_Company_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[AY_ENV_ID] int NULL,
	[AY_F_COMP_CODE] [nvarchar](max) NULL,
	[AY_F_LANG_CODE] [nvarchar](max) NULL,
	[AY_F_LANG_Id] int null,
	[AY_F_BUST_TYPE] [nvarchar](max) NULL,
	[AY_Business_Type_Id] int NULL,
	[AY_F_AYIZA_NETCODE] [nvarchar](max) NULL,
	[AY_F_COA_CODE] [nvarchar](max) NULL,
	[AY_Chart_Of_Accounts_ID]int NULL,
	[AY_F_LCOA_CODE] [nvarchar](max) NULL,
	[AY_Chart_Of_Accounts_ID_LCOA] int NULL,
	[AY_F_BCURR_CODE] [nvarchar](max) NULL,
	[AY_F_CURR_Id] int NULL,
	[AY_F_BFXRATE_TYPE] [nvarchar](max) NULL,
	[AY_FX_RATE_TYPE_ID] int NULL,
	[AY_F_GCURR_CODE] [nvarchar](max) NULL,
	[AY_F_CURR_Id_GCURR]int NULL,
	[AY_F_GFXRATE_TYPE] [nvarchar](max) NULL,
	[AY_FX_RATE_TYPE_ID_GFXRATE]INT NULL,
	[AY_F_FINYEAR_CODE] [nvarchar](max) NULL,
	[AY_Financial_Year_Id]int NULL,
	[AY_F_ACCREF_DATE] [nvarchar](max) NULL,
	[AY_F_VAT_REG] [nvarchar](max) NULL,
	[AY_F_VAT_COUNTRY] [nvarchar](max) NULL,
	[AY_F_Country_Id]int NULL,
	[AY_F_VAT_REGNO] [nvarchar](max) NULL,
	[AY_F_VREG_DATE] [nvarchar](max) NULL,
	[AY_F_VEFF_DATE] [nvarchar](max) NULL,
	[AY_F_VAT_SCHEME] [nvarchar](max) NULL,
	[AY_F_VAT_Schema_Id] int NULL,
	[AY_F_VFRET_DATE] [nvarchar](max) NULL,
	[AY_F_VAT_STATUS] [nvarchar](max) NULL,
	[AY_F_Status_Id] int NULL,
	[AY_F_VAT_STDATE] [nvarchar](max) NULL,
	[AY_F_CORP_COUNTRY] [nvarchar](max) NULL,
	[AY_F_Country_Id_CORP] int NULL,
	[AY_F_TAX_REG] [nvarchar](max) NULL,
	[AY_F_CORP_REGNO] [nvarchar](max) NULL,
	[AY_F_CORP_REFNO] [nvarchar](max) NULL,
	[AY_F_CORP_OFFICE] [nvarchar](max) NULL,
	[AY_F_Tax_Office_Id] int NULL,
	[AY_F_CORPLF_DATE] [nvarchar](max) NULL,
	[AY_F_CORPNF_DATE] [nvarchar](max) NULL,
	[AY_F_CORP_STATUS] [nvarchar](max) NULL,
	[AY_F_Status_Id_CORP]int NULL,
	[AY_F_CORP_STDATE] [nvarchar](max) NULL,
	[AY_F_PAYROLL_REG] [nvarchar](max) NULL,
	[AY_F_PAYE_COUNTRY] [nvarchar](max) NULL,
	[AY_F_Country_Id_PAYE]int NULL,
	[AY_F_PAYE_CODE] [nvarchar](max) NULL,
	[AY_F_PAYE_ACCREF] [nvarchar](max) NULL,
	[AY_F_PAYE_OFFICE] [nvarchar](max) NULL,
	[AY_F_Tax_Office_Id_PAYE]int NULL,
	[AY_F_PAYE_STATUS] [nvarchar](max) NULL,
	[AY_F_Status_Id_PAYE]int NULL,
	[AY_F_PAYE_STDATE] [nvarchar](max) NULL,
	[AY_F_COMP_TYPE] [nvarchar](max) NULL,
	[AY_COMPANY_TYPE_ID]int NULL,
	[AY_F_CH_REGCTRY] [nvarchar](max) NULL,
	[AY_F_Country_Id_REGCTRY]int NULL,
	[AY_F_CH_REGNO] [nvarchar](max) NULL,
	[AY_F_CH_REGDATE] [nvarchar](max) NULL,
	[AY_F_CH_STATUS] [nvarchar](max) NULL,
	[AY_F_Status_Id_CH]int NULL,
	[AY_F_CHSTAT_DATE] [nvarchar](max) NULL,
	[AY_F_CHLRMUT_DATE] [nvarchar](max) NULL,
	[AY_F_CHNRMUTO_DATE] [nvarchar](max) NULL,
	[AY_F_CHNRDUE_DATE] [nvarchar](max) NULL,
	[AY_F_CHLAMUT_DATE] [nvarchar](max) NULL,
	[AY_F_CHNAMUTO_DATE] [nvarchar](max) NULL,
	[AY_F_CHNADUE_DATE] [nvarchar](max) NULL,
	[AY_F_CHLML_DATE] [nvarchar](max) NULL,
	[AY_F_TIMZ_CODE] [nvarchar](max) NULL,
	[AY_Time_Zone_Id_CODE]int NULL,
	[AY_F_CREATE_DATE] [nvarchar](max) NULL,
	[AY_F_CREATE_TIME] [nvarchar](max) NULL,
	[AY_F_CREATED_BY] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_DATE ] [nvarchar](max) NULL,
	[AY_F_LAST_CNG_TIME ] [nvarchar](max) NULL,
	[AY_F_LAST_CHG_BY  ] [nvarchar](max) NULL,
	
	FOREIGN KEY ([AY_F_LANG_Id]) REFERENCES [Language]([AY_F_LANG_Id]),
	FOREIGN KEY ([AY_Business_Type_Id]) REFERENCES [Business_Type]([AY_Business_Type_Id]),
	FOREIGN KEY ([AY_Chart_Of_Accounts_ID]) REFERENCES [Chart_Of_Accounts]([AY_Chart_Of_Accounts_ID]),
	FOREIGN KEY ([AY_Chart_Of_Accounts_ID_LCOA]) REFERENCES [Chart_Of_Accounts]([AY_Chart_Of_Accounts_ID]),
	FOREIGN KEY ([AY_FX_RATE_TYPE_ID]) REFERENCES [FX_Rate_Type]([AY_FX_RATE_TYPE_ID]),
	FOREIGN KEY ([AY_F_CURR_Id_GCURR]) REFERENCES [Currency]([AY_F_CURR_Id]),
	FOREIGN KEY ([AY_FX_RATE_TYPE_ID_GFXRATE]) REFERENCES [FX_Rate_Type]([AY_FX_RATE_TYPE_ID]),
	FOREIGN KEY ([AY_Financial_Year_Id]) REFERENCES [Financial_Year]([AY_Financial_Year_Id]),
	FOREIGN KEY ([AY_F_Country_Id]) REFERENCES [Country]([AY_F_Country_Id]),
	FOREIGN KEY ([AY_F_VAT_Schema_Id]) REFERENCES [VAT_Schema]([AY_F_VAT_Schema_Id]),
	FOREIGN KEY ([AY_F_Status_Id]) REFERENCES [Status]([AY_F_Status_Id]),
	FOREIGN KEY ([AY_F_Country_Id_CORP]) REFERENCES [Country]([AY_F_Country_Id]),
	FOREIGN KEY ([AY_F_Tax_Office_Id]) REFERENCES [Tax_Office]([AY_F_Tax_Office_Id]),
	FOREIGN KEY ([AY_F_Status_Id]) REFERENCES [Status]([AY_F_Status_Id]),
	FOREIGN KEY ([AY_F_Country_Id_PAYE]) REFERENCES [Country]([AY_F_Country_Id]),
	FOREIGN KEY ([AY_F_Tax_Office_Id_PAYE]) REFERENCES [Tax_Office]([AY_F_Tax_Office_Id]),
	FOREIGN KEY ([AY_F_Status_Id_PAYE]) REFERENCES [Status]([AY_F_Status_Id]),
	FOREIGN KEY ([AY_COMPANY_TYPE_ID]) REFERENCES [Company_Type]([AY_COMPANY_TYPE_ID]),
	FOREIGN KEY ([AY_F_Country_Id_REGCTRY]) REFERENCES [Country]([AY_F_Country_Id]),
	FOREIGN KEY ([AY_F_Status_Id_CH]) REFERENCES [Status]([AY_F_Status_Id]),

FOREIGN KEY ([AY_Time_Zone_Id_CODE]) REFERENCES [Time_Zone]([AY_Time_Zone_Id]),


 CONSTRAINT [PK_Company_Code] PRIMARY KEY CLUSTERED 
(
	[AY_F_Company_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [CMS_Cloudy_database]GO/****** Object:  Table [dbo].[Sys_Message]    Script Date: 02/27/2018 17:23:59 ******/SET ANSI_NULLS ONGOSET QUOTED_IDENTIFIER ONGOCREATE TABLE [dbo].[Sys_Message](	[id] [bigint] IDENTITY(1,1) NOT NULL,	[msg_type] [nvarchar](100) NULL,	[msg_tittle] [nvarchar](100) NULL,	[msg_content] [nvarchar](200) NULL,	[msg_level] [nvarchar](50) NULL,	[launch_person] [nvarchar](50) NULL,	[receiver_person] [nvarchar](50) NULL,	[whether_read] [bit] NULL,	[launch_time] [datetime] NULL,	[read_time] [datetime] NULL,	[cdefine1] [nvarchar](100) NULL,	[cdefine2] [nvarchar](100) NULL,	[cdefine3] [nvarchar](100) NULL,	[cdefine4] [int] NULL,	[cdefine5] [datetime] NULL, CONSTRAINT [PK_Sys_Message] PRIMARY KEY CLUSTERED (	[id] ASC)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]) ON [PRIMARY]GO
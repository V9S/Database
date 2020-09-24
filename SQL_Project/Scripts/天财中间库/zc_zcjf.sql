/*
 Navicat Premium Data Transfer

 Source Server         : 天财中间库
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : 10.150.11.123:1433
 Source Catalog        : zcdj6
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 03/01/2020 10:23:41
*/


-- ----------------------------
-- Table structure for zc_zcjf
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_zcjf]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_zcjf]
GO

CREATE TABLE [dbo].[zc_zcjf] (
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NOT NULL,
  [bmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NOT NULL,
  [xmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NOT NULL,
  [je] decimal(18,2) DEFAULT ((0)) NULL,
  [fylb] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [modifytime] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [inputtime] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf3] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf4] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf5] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf6] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf7] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf8] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf9] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf10] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [df1] decimal(18,2) DEFAULT ((0)) NULL,
  [df2] decimal(18,2) DEFAULT ((0)) NULL,
  [df3] decimal(18,2) DEFAULT ((0)) NULL,
  [df4] decimal(18,2) DEFAULT ((0)) NULL,
  [df5] decimal(18,2) DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[zc_zcjf] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作时间',
'SCHEMA', N'dbo',
'TABLE', N'zc_zcjf',
'COLUMN', N'modifytime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资产数据推入时间',
'SCHEMA', N'dbo',
'TABLE', N'zc_zcjf',
'COLUMN', N'inputtime'
GO


-- ----------------------------
-- Primary Key structure for table zc_zcjf
-- ----------------------------
ALTER TABLE [dbo].[zc_zcjf] ADD CONSTRAINT [PK_zc_zcjf] PRIMARY KEY CLUSTERED ([ywdh], [bmbh], [xmbh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


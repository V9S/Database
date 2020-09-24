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

 Date: 03/01/2020 10:24:03
*/


-- ----------------------------
-- Table structure for zc_zczj_yt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_zczj_yt]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_zczj_yt]
GO

CREATE TABLE [dbo].[zc_zczj_yt] (
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [bh] int  NOT NULL,
  [fylb] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [bmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [xmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [je] decimal(18,2) DEFAULT ((0)) NULL,
  [inputtime] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf2] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
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

ALTER TABLE [dbo].[zc_zczj_yt] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'资产数据推入时间',
'SCHEMA', N'dbo',
'TABLE', N'zc_zczj_yt',
'COLUMN', N'inputtime'
GO


-- ----------------------------
-- Primary Key structure for table zc_zczj_yt
-- ----------------------------
ALTER TABLE [dbo].[zc_zczj_yt] ADD CONSTRAINT [PK_zc_zczj_yt] PRIMARY KEY CLUSTERED ([ywdh], [bh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


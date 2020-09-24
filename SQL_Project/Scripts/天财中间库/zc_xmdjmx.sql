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

 Date: 03/01/2020 10:23:09
*/


-- ----------------------------
-- Table structure for zc_xmdjmx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_xmdjmx]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_xmdjmx]
GO

CREATE TABLE [dbo].[zc_xmdjmx] (
  [pllsh] varchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [rq] varchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [bmbh] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [xmbh] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [zy] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [jdje] decimal(18,2)  NULL,
  [llr] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [issh] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [shrq] varchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [shr] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [sbr] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [sbrq] varchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf1] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf2] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf3] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf4] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf5] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf6] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf7] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf8] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf9] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf10] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [df1] decimal(18,2)  NULL,
  [df2] decimal(18,2)  NULL,
  [df3] decimal(18,2)  NULL,
  [df4] decimal(18,2)  NULL,
  [df5] decimal(18,2)  NULL
)
GO

ALTER TABLE [dbo].[zc_xmdjmx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table zc_xmdjmx
-- ----------------------------
ALTER TABLE [dbo].[zc_xmdjmx] ADD CONSTRAINT [PK_zc_xmdjmx] PRIMARY KEY CLUSTERED ([pllsh], [ywdh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


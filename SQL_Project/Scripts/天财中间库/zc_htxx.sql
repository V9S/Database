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

 Date: 03/01/2020 10:22:33
*/


-- ----------------------------
-- Table structure for zc_htxx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_htxx]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_htxx]
GO

CREATE TABLE [dbo].[zc_htxx] (
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [htbh] varchar(60) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [htmc] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [dwmc] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [qsrq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [jsrq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [htje] decimal(18,2) DEFAULT ((0)) NULL,
  [je1] decimal(18,2) DEFAULT ((0)) NULL,
  [je2] decimal(18,2) DEFAULT ((0)) NULL,
  [je3] decimal(18,2) DEFAULT ((0)) NULL,
  [je4] decimal(18,2) DEFAULT ((0)) NULL,
  [je5] decimal(18,2) DEFAULT ((0)) NULL,
  [bz] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf1] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
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

ALTER TABLE [dbo].[zc_htxx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table zc_htxx
-- ----------------------------
ALTER TABLE [dbo].[zc_htxx] ADD CONSTRAINT [PK_zc_htxx] PRIMARY KEY CLUSTERED ([ywdh], [htbh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


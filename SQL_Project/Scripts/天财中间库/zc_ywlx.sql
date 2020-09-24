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

 Date: 03/01/2020 10:23:32
*/


-- ----------------------------
-- Table structure for zc_ywlx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_ywlx]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_ywlx]
GO

CREATE TABLE [dbo].[zc_ywlx] (
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ywlx] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [ywms] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [jsr] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [bmmc] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [issh] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cwclrq] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cwzdzt] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cwshr] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cwsm] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [pzrq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [pzlxbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [pzbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [ztdm] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [inputtime] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [modifytime] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [billdefine] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT (CONVERT([varchar],getdate(),(121))) NULL,
  [billid] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
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

ALTER TABLE [dbo].[zc_ywlx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table zc_ywlx
-- ----------------------------
ALTER TABLE [dbo].[zc_ywlx] ADD CONSTRAINT [PK_zc_ywlx] PRIMARY KEY CLUSTERED ([ywdh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


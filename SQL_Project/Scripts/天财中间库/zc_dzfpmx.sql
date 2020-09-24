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

 Date: 03/01/2020 10:22:18
*/


-- ----------------------------
-- Table structure for zc_dzfpmx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_dzfpmx]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_dzfpmx]
GO

CREATE TABLE [dbo].[zc_dzfpmx] (
  [dzfph] varchar(60) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [bh] int  NOT NULL,
  [xmmc] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [dw] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [shul] int DEFAULT ((0)) NULL,
  [dj] decimal(18,2) DEFAULT ((0)) NULL,
  [je] decimal(18,2) DEFAULT ((0)) NULL,
  [sl] decimal(18,2) DEFAULT ((0)) NULL,
  [se] decimal(18,2) DEFAULT ((0)) NULL,
  [zje] decimal(18,2) DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[zc_dzfpmx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table zc_dzfpmx
-- ----------------------------
ALTER TABLE [dbo].[zc_dzfpmx] ADD CONSTRAINT [PK_zc_dzfpmx] PRIMARY KEY CLUSTERED ([dzfph], [bh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


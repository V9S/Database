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

 Date: 03/01/2020 10:22:45
*/


-- ----------------------------
-- Table structure for zc_htxx_fj
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_htxx_fj]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_htxx_fj]
GO

CREATE TABLE [dbo].[zc_htxx_fj] (
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [htbh] varchar(60) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [fileidlist] varchar(4000) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL
)
GO

ALTER TABLE [dbo].[zc_htxx_fj] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table zc_htxx_fj
-- ----------------------------
ALTER TABLE [dbo].[zc_htxx_fj] ADD CONSTRAINT [PK_zc_htxx_fj] PRIMARY KEY CLUSTERED ([ywdh], [htbh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


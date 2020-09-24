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

 Date: 03/01/2020 10:22:27
*/


-- ----------------------------
-- Table structure for zc_gwkjyxx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_gwkjyxx]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_gwkjyxx]
GO

CREATE TABLE [dbo].[zc_gwkjyxx] (
  [YWDH] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jyrq] varchar(8) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jysj] varchar(12) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jdbz] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT '' NOT NULL,
  [je] decimal(18,2) DEFAULT ((0)) NULL,
  [wbje] decimal(18,2) DEFAULT ((0)) NULL,
  [bzdm] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [ckrxm] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [yhkh] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [shmc] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [yhbz] varchar(120) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [bz] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gkyslxdm] varchar(4) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gklkxdm] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gkjjfldm] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gkzclxdm] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gkfzdm] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gkyssxdm] varchar(4) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf1] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf2] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf3] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf4] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf5] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [cf6] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [sjrq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [fhh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [jzrq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [jylx] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [shh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [zdh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [lsh] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jyhb] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [jym] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [sqh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [dljg] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [zfjg] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [ckh] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [qsrq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [xfje] decimal(18,2) DEFAULT '' NULL
)
GO

ALTER TABLE [dbo].[zc_gwkjyxx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table zc_gwkjyxx
-- ----------------------------
ALTER TABLE [dbo].[zc_gwkjyxx] ADD CONSTRAINT [PK_zc_zc_gwkjyxx] PRIMARY KEY CLUSTERED ([jyrq], [jysj], [yhkh], [lsh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


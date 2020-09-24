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

 Date: 03/01/2020 10:22:10
*/


-- ----------------------------
-- Table structure for zc_dzfp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_dzfp]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_dzfp]
GO

CREATE TABLE [dbo].[zc_dzfp] (
  [dzfph] varchar(60) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [fpdm] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [fphm] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [hyfl] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [swlx] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [kprq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT ('19700101') NULL,
  [fkfsbh] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [fkdwmc] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [fkdzdh] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [fkkhh] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [kpfsbh] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [kpdwmc] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [kpdzdh] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [kpkhh] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [jbr] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [bz] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [pznm] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [zdr] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [lrr] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [lrrq] varchar(8) COLLATE Chinese_PRC_CI_AS DEFAULT ('19700101') NULL,
  [lybh] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [kjnd] varchar(4) COLLATE Chinese_PRC_CI_AS DEFAULT ('1970') NULL,
  [kjqj] varchar(2) COLLATE Chinese_PRC_CI_AS DEFAULT ('01') NULL,
  [pjlx] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [bmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [xmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [isbx] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [fpnr] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [je] decimal(18,2) DEFAULT ((0)) NULL,
  [se] decimal(18,2) DEFAULT ((0)) NULL,
  [zje] decimal(18,2) DEFAULT ((0)) NULL,
  [yzm] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [ischeck] varchar(1) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [ssdq] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL
)
GO

ALTER TABLE [dbo].[zc_dzfp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table zc_dzfp
-- ----------------------------
ALTER TABLE [dbo].[zc_dzfp] ADD CONSTRAINT [PK_zc_dzfp] PRIMARY KEY CLUSTERED ([dzfph])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


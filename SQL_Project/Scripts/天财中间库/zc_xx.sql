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

 Date: 03/01/2020 10:23:23
*/


-- ----------------------------
-- Table structure for zc_xx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[zc_xx]') AND type IN ('U'))
	DROP TABLE [dbo].[zc_xx]
GO

CREATE TABLE [dbo].[zc_xx] (
  [ywdh] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [bh] int  NOT NULL,
  [zclbdm] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [zclbdm1] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gdzcdm] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [gdzcmc] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [dj] decimal(18,2) DEFAULT ((0)) NULL,
  [sl] decimal(18,2) DEFAULT ((0)) NULL,
  [je] decimal(18,2) DEFAULT ((0)) NULL,
  [rzrq] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [jsr] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [bmmc] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [bmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [xmbh] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [iszcjz] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [iszt] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [synx] int DEFAULT ((0)) NULL,
  [zjff] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [zjfs] varchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [isdl] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT ('0') NULL,
  [zclbmxdm] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [zclbmxdm1] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [inputtime] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
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

ALTER TABLE [dbo].[zc_xx] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'资产类别明细代码（财政部）',
'SCHEMA', N'dbo',
'TABLE', N'zc_xx',
'COLUMN', N'zclbmxdm'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资产类别明细代码（教育部）',
'SCHEMA', N'dbo',
'TABLE', N'zc_xx',
'COLUMN', N'zclbmxdm1'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资产数据推入时间',
'SCHEMA', N'dbo',
'TABLE', N'zc_xx',
'COLUMN', N'inputtime'
GO


-- ----------------------------
-- Primary Key structure for table zc_xx
-- ----------------------------
ALTER TABLE [dbo].[zc_xx] ADD CONSTRAINT [PK_zc_xx] PRIMARY KEY CLUSTERED ([ywdh], [bh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


/*
 Navicat Premium Data Transfer

 Source Server         : 正式服务导出
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : 10.150.11.123:1433
 Source Catalog        : zcdj6
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 15/12/2020 17:55:50
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
  [cf1] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [modifytime] varchar(60) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [billdefine] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (CONVERT([varchar],getdate(),(121))) NULL,
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
  [df5] decimal(18,2) DEFAULT ((0)) NULL,
  [cf2] varbinary(60)  NULL,
  [cf3] varchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [cf4] varchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [inputtime] varchar(60) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[zc_ywlx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of zc_ywlx
-- ----------------------------
INSERT INTO [dbo].[zc_ywlx] VALUES (N'202001', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:45:15', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'ac9422d3-c399-419c-b037-ff0033987852', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:45:15')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202002', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:46:57', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'c7456bab-0fb3-4720-b82b-384b6cdeffd4', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:46:57')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202003', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:47:11', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'4b0a4414-4e94-4e1b-9ddb-68e0f7201e65', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:47:11')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202004', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:47:29', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'29c7f709-4bc7-4125-b4a2-64cbaf12db0e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:47:29')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202005', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:47:51', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'f56c4ef4-a858-4a2b-863b-d85ed3303b65', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:47:51')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202006', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:48:08', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'4654f487-c69e-4429-a4f5-3d10cf9c6a30', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:48:08')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202007', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:48:28', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'0b975da2-a8e6-4ffd-b77c-7fb718262e65', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:48:28')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202008', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:48:43', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'3312f9be-083b-447e-9efb-ad46fa663ec4', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:48:43')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202009', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-27 21:15:41', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'66c080da-bebf-4090-ba26-0e8a5df307ab', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-27 21:15:41')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'202010', N'51', N'资产折旧', N'199907006', N'重庆电子工程职业学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-03 09:49:02', N'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill', N'359cb27a-a309-4a42-9a4a-b5889f60fcd9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:49:02')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'TKSQ2020000001', N'43', N'资产当年跨月退库', N'赵竹', N'软件学院实训中心', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-07 22:16:10', N'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine', N'daffd908-e161-4858-bf36-101570651880', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-07 22:16:10')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'TKSQ2020000006', N'43', N'资产当年跨月退库', N'郭渝', N'通信工程学院党政科', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-28 09:39:15', N'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine', N'29320b09-e4d7-4240-9ac4-298f3db9a202', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-28 09:39:15')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'XWCZZX2020000001', N'23', N'资产盘亏、报废等', N'彭美固', N'财务处资产科', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-04 21:50:34', N'com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine', N'65d55e17-b17f-40a5-9f08-44080e3895d4', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-04 21:50:34')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2019000286', N'11', N'资产购入', N'刘源', N'财经管理学院', N'2', N'20201111', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201111', N'01', N'00788', N' ', N'2020-11-11 10:36:16', N'2020-10-12 15:45:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'878b8281-6025-4744-8999-b66f1a50d4d5', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-12 15:45:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000100', N'11', N'资产购入', N'刘鹤群', N'通信工程学院实训中心', N'2', N'20201105', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201105', N'01', N'00371', N' ', N'2020-11-05 09:40:19', N'2020-10-16 09:07:45', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'7f87d828-7117-4a2e-988a-c5df63d893d7', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-16 09:07:45')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000116', N'11', N'资产购入', N'马巾凌', N'网络安全与信息化办公室', N'2', N'20201111', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201111', N'01', N'00780', N' ', N'2020-11-11 10:20:43', N'2020-10-20 08:54:49', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e734c932-cd5b-48ca-97ee-a71fb99ea009', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-20 08:54:49')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000231', N'11', N'资产购入', N'余明毅', N'法律综合科', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e5d3fa95-69a7-4d7a-8bf6-2d6808d8c498', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000233', N'11', N'资产购入', N'刘国维', N'治安室', N'2', N'20200917', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20200917', N'01', N'00327', N' ', N'2020-09-18 13:42:47', N'2020-09-17 08:44:38', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'2f4efed9-0022-48ea-b661-b92a26a6fb20', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000235', N'11', N'资产购入', N'黄小君', N'教务处综合科', N'2', N'20201005', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201005', N'01', N'00113', N' ', N'2020-10-05 11:05:07', N'2020-09-17 08:44:22', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd481fdc2-1f84-4e77-9415-a31573a1fb63', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000241', N'11', N'资产购入', N'谢添', N'保障科', N'2', N'20200929', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20200929', N'01', N'00955', N' ', N'2020-09-29 09:47:03', N'2020-09-28 16:18:56', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c0c1f23b-b1d9-4eb8-b63f-d53d018611aa', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-28 16:18:56')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000242', N'11', N'资产购入', N'龚颖春', N'网络安全与信息化办公室', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 11:02:32', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'fe7433ba-b25d-4066-b806-050132b96202', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 11:02:32')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000243', N'11', N'资产购入', N'龚颖春', N'网络安全与信息化办公室', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'82af7a5c-cbb8-4837-b19e-bb817d0bd210', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000244', N'11', N'资产购入', N'余明毅', N'法律综合科', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'39a3b315-036a-4ec4-b4a2-63f4d7645d37', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000245', N'11', N'资产购入', N'余明毅', N'法律综合科', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'3d2d3a2f-83e4-4249-bc0d-396a02f20a13', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000246', N'11', N'资产购入', N'余明毅', N'法律综合科', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'b4aeb2b8-6854-46f4-94cf-4f3980c37e9c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000247', N'11', N'资产购入', N'刘国维', N'治安室', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5012aeff-2e7e-477d-bd93-b9e5b54f7227', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000248', N'11', N'资产购入', N'赵姣奕', N'课题与项目管理科', N'2', N'20200928', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20200928', N'01', N'00879', N' ', N'2020-09-28 14:50:05', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'7fa6c3a8-1645-4786-9f02-e181046458da', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000249', N'11', N'资产购入', N'赵姣奕', N'课题与项目管理科', N'2', N'20200928', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20200928', N'01', N'00881', N' ', N'2020-09-28 14:52:37', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e2314b5c-de55-42fc-8c26-63b81439dd84', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000250', N'11', N'资产购入', N'路亚', N'云计算与大数据系', N'2', N'20201013', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201013', N'01', N'00490', N' ', N'2020-10-13 08:49:45', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'42f252b4-2973-4609-a22d-dfcd78688b1d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000252', N'11', N'资产购入', N'林勇', N'通信系统运行与管理教研室', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-09-24 12:09:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'4659ca7b-6c6f-4fd6-9aa6-92b27fbba53b', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-24 12:09:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000253', N'11', N'资产购入', N'童世华', N'人工智能与大数据学院办公室', N'2', N'20200928', N'1', N'胡佩', N'制单成功,制单人:胡佩', N'20200928', N'01', N'00852', N' ', N'2020-09-28 10:52:48', N'2020-09-28 09:38:08', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'b53aa9b5-2b5e-415e-85b6-8cb7ed95a4ff', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-28 09:38:08')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000254', N'11', N'资产购入', N'童世华', N'人工智能与大数据学院办公室', N'2', N'20200928', N'1', N'胡佩', N'制单成功,制单人:胡佩', N'20200928', N'01', N'00850', N' ', N'2020-09-28 10:48:14', N'2020-09-28 09:37:58', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0da5f0c9-33f9-4439-8462-f7cc15a171f2', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-28 09:37:58')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000255', N'11', N'资产购入', N'童世华', N'人工智能与大数据学院办公室', N'2', N'20200928', N'1', N'胡佩', N'制单成功,制单人:胡佩', N'20200928', N'01', N'00851', N' ', N'2020-09-28 10:50:56', N'2020-09-28 09:37:45', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'2ec53b3b-03d3-4012-9b05-78e239802689', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-28 09:37:45')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000256', N'11', N'资产购入', N'李饶', N'通信系统运行与管理教研室', N'2', N'20201005', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201005', N'01', N'00152', N' ', N'2020-10-05 15:35:42', N'2020-09-28 09:53:25', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'06bf3eeb-fe5e-419d-b52d-cd53b07c6edf', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-28 09:53:25')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000257', N'11', N'资产购入', N'谢光辉', N'智慧健康学院办公室', N'2', N'20200929', N'1', N'苏曼璐', N'制单成功,制单人:', N'20200929', N'01', N'01065', N' ', N'2020-09-29 16:12:33', N'2020-09-28 16:19:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ed71fadd-5ac2-428c-b5fb-ce1dfece2205', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-28 16:19:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000258', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201005', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201005', N'01', N'00129', N' ', N'2020-10-05 14:33:20', N'2020-09-30 09:25:14', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'4c9c44e5-2034-496b-a28c-92f0c0c1eece', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-09-30 09:25:14')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000261', N'11', N'资产购入', N'陈良', N'物联网应用系', N'2', N'20201006', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201006', N'01', N'00204', N' ', N'2020-10-06 11:10:52', N'2020-10-06 10:26:47', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'de794770-9bce-43c4-85ff-ae71b6e1ea97', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-06 10:26:47')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000262', N'11', N'资产购入', N'陈良', N'物联网应用系', N'2', N'20201006', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201006', N'01', N'00205', N' ', N'2020-10-06 11:12:53', N'2020-10-06 10:26:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1ba4b6ed-0d5d-4f2a-864e-b0b2a9610396', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-06 10:26:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000263', N'11', N'资产购入', N'伯霖', N'培训与继续教育中心', N'2', N'20201109', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201109', N'01', N'00479', N' ', N'2020-11-09 09:10:31', N'2020-11-06 10:18:05', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'185f6174-9d36-4f70-8ae9-3032561c9046', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-06 10:18:05')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000264', N'11', N'资产购入', N'伯霖', N'培训与继续教育中心', N'2', N'20201109', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201109', N'01', N'00479', N' ', N'2020-11-09 09:10:31', N'2020-11-03 11:08:26', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'19e42e10-ec78-4cde-9e63-eeaa70cbe862', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-03 11:08:26')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000265', N'11', N'资产购入', N'伯霖', N'培训与继续教育中心', N'2', N'20201102', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201102', N'01', N'00046', N' ', N'2020-11-02 10:14:27', N'2020-10-21 16:16:36', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'dde93d5a-f94c-4f00-a5fe-8d37adcdc14a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-21 16:16:36')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000266', N'11', N'资产购入', N'苏科', N'科研与社会服务处办公室', N'2', N'20201005', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201005', N'01', N'00157', N' ', N'2020-10-05 16:05:37', N'2020-10-04 11:10:37', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'68fed97c-b7d4-4c60-adef-a13960c51a45', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-04 11:10:37')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000267', N'11', N'资产购入', N'谭博文', N'云计算与大数据系', N'2', N'20201013', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201013', N'01', N'00512', N' ', N'2020-10-13 09:49:55', N'2020-10-12 15:44:43', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'342a51d0-c30c-4524-8e91-bcf08a202a1a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-12 15:44:43')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000272', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201012', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201012', N'01', N'00477', N' ', N'2020-10-12 16:03:15', N'2020-10-09 09:38:34', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ed52a0ba-f046-4844-8dd1-f1b156934100', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-09 09:38:34')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000273', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201014', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201014', N'01', N'00587', N' ', N'2020-10-14 08:50:37', N'2020-10-12 10:44:16', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'410287ee-0ed4-40aa-9c35-ddec5fb3de34', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-12 10:44:16')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000274', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201014', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201014', N'01', N'00586', N' ', N'2020-10-14 08:43:21', N'2020-10-12 10:42:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c79a5b89-7098-42f4-aa5c-cf3c791ece1a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-12 10:42:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000277', N'11', N'资产购入', N'向宇婷', N'形策教研室', N'2', N'20201007', N'1', N'胡佩', N'制单成功,制单人:胡佩', N'20201007', N'01', N'00264', N' ', N'2020-10-07 11:35:09', N'2020-10-07 10:53:33', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ca7334ba-b315-46ac-b0d5-d796d2ab7577', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-07 10:53:33')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000278', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201013', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201013', N'01', N'00542', N' ', N'2020-10-13 11:16:37', N'2020-10-12 15:44:22', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'b077ebf5-7af9-424c-b7a0-adf2601cbb0d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-12 15:44:22')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000279', N'11', N'资产购入', N'张亚利', N'培训与继续教育中心', N'2', N'20201013', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201013', N'01', N'00513', N' ', N'2020-10-13 10:00:24', N'2020-10-12 15:45:07', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'77d12cb6-9012-4e6c-a133-c9990ffe1182', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-12 15:45:07')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000280', N'11', N'资产购入', N'许姚', N'团委办公室', N'2', N'20201123', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201123', N'01', N'01573', N' ', N'2020-11-23 11:03:09', N'2020-11-11 10:54:37', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'61177bdf-2955-446f-9c35-cbf4393ec589', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 10:54:37')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000281', N'11', N'资产购入', N'骆剑华', N'财经管理学院', N'2', N'20201012', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201012', N'01', N'00390', N' ', N'2020-10-12 09:15:37', N'2020-10-08 15:31:58', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'84434a3b-1e0a-4f5b-b8b1-0c0073e8ec7a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-08 15:31:58')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000282', N'11', N'资产购入', N'邓剑勋', N'人工智能系', N'2', N'20201019', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201019', N'01', N'00847', N' ', N'2020-10-19 15:15:45', N'2020-10-19 08:46:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1d810274-0808-4cbf-8965-a560a536c5c5', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-19 08:46:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000283', N'11', N'资产购入', N'周叶露', N'形策教研室', N'2', N'20201119', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201119', N'01', N'01397', N' ', N'2020-11-19 15:26:39', N'2020-10-27 10:51:41', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1d36d787-2bfe-445c-805a-8eef009e70c6', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-27 10:51:41')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000284', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201012', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201012', N'01', N'00462', N' ', N'2020-10-12 15:34:32', N'2020-10-09 09:38:11', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'237672f4-7c5e-4732-89a9-a3115b32f0ce', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-09 09:38:11')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000285', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201012', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201012', N'01', N'00476', N' ', N'2020-10-12 16:01:14', N'2020-10-09 09:38:22', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'811c3075-5122-4027-9578-e3fe6a1496fb', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-09 09:38:22')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000288', N'11', N'资产购入', N'郑卉', N'软件工程系', N'2', N'20201020', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201020', N'01', N'00935', N' ', N'2020-10-20 15:02:10', N'2020-10-16 09:07:26', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'57e76197-6d98-4875-beaa-97e379aab903', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-16 09:07:26')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000290', N'11', N'资产购入', N'蒋寒宇', N'财经管理学院', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-10-16 14:23:49', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'dba348ad-302c-4e6a-b9b4-e9c534419a5c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-16 14:23:49')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000291', N'11', N'资产购入', N'张贵英', N'电子商务系', N'2', N'20201026', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201026', N'01', N'01244', N' ', N'2020-10-26 14:16:48', N'2020-10-16 11:31:09', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ff344cdc-ef19-4ec2-b08f-c8f50b409433', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-16 11:31:09')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000293', N'11', N'资产购入', N'管亚风', N'物流系', N'2', N'20201027', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201027', N'01', N'01374', N' ', N'2020-10-27 14:40:30', N'2020-10-15 08:51:09', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'21e6e307-069f-48be-982b-587007906324', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-15 08:51:09')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000294', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201027', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201027', N'01', N'01299', N' ', N'2020-10-27 08:44:11', N'2020-10-19 10:36:30', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f4a8423f-e983-4765-95cc-5d84977f46df', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-19 10:36:30')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000295', N'11', N'资产购入', N'罗路', N'通识教育与国际学院办公室', N'2', N'20201015', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201015', N'01', N'00718', N' ', N'2020-10-15 15:35:02', N'2020-10-13 09:46:46', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f1174af6-ecc1-4897-95be-a860f7f77fc1', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-13 09:46:46')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000296', N'11', N'资产购入', N'罗小锁', N'建筑智能化', N'2', N'20201112', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201112', N'01', N'00942', N' ', N'2020-11-12 10:58:33', N'2020-10-20 09:43:06', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f61157d3-2ceb-4854-8fa9-9be0ded41825', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-20 09:43:06')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000299', N'11', N'资产购入', N'郑卉', N'软件工程系', N'2', N'20201021', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201021', N'01', N'00990', N' ', N'2020-10-21 10:11:24', N'2020-10-20 15:58:53', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'944e071b-40de-41a6-829c-493d48623a30', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-20 15:58:53')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000300', N'11', N'资产购入', N'赵宇', N'语文教研室', N'2', N'20201026', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201026', N'01', N'01218', N' ', N'2020-10-26 10:33:23', N'2020-10-21 16:14:52', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'3bc19efd-ad09-465c-b5af-41414a074bae', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-21 16:14:52')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000301', N'11', N'资产购入', N'谢佳佳', N'物流系', N'2', N'20201022', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201022', N'01', N'01066', N' ', N'2020-10-22 08:57:42', N'2020-10-21 16:10:10', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'84649170-18ad-4737-bbdd-ba842f35563a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-21 16:10:10')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000302', N'11', N'资产购入', N'罗路', N'通识教育与国际学院办公室', N'2', N'20201112', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201112', N'01', N'00910', N' ', N'2020-11-12 09:50:57', N'2020-10-21 16:14:24', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd7d90f2d-a427-471a-bd2b-f8481ba19cf5', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-21 16:14:24')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000303', N'11', N'资产购入', N'罗路', N'通识教育与国际学院办公室', N'2', N'20201026', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201026', N'01', N'01220', N' ', N'2020-10-26 10:38:37', N'2020-10-21 16:13:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'6552b09f-d9f6-476f-9d96-d40a0e3dfc54', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-21 16:13:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000304', N'11', N'资产购入', N'李斌', N'保障科', N'2', N'20201102', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201102', N'01', N'00021', N' ', N'2020-11-02 09:37:16', N'2020-10-27 16:58:30', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5d71797c-ec8a-446e-bca7-d18366b294eb', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-27 16:58:30')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000307', N'11', N'资产购入', N'任振林', N'宿舍管理中心', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-10-28 09:48:27', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'9668562d-b2e7-4e7f-9c2a-ebd5201c11b2', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-28 09:48:27')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000308', N'11', N'资产购入', N'郑孝宗', N'工程与鉴定中心', N'2', N'20201028', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201028', N'01', N'01468', N' ', N'2020-10-28 15:05:59', N'2020-10-27 10:51:53', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'54845f06-44c3-4cdc-b6f1-75c1ae57e983', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-27 10:51:53')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000310', N'11', N'资产购入', N'唐云', N'工程中心', N'2', N'20201029', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201029', N'01', N'01508', N' ', N'2020-10-29 09:41:19', N'2020-10-26 16:18:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'af2f2161-75da-4b72-90f3-6ec1575961dc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-26 16:18:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000311', N'11', N'资产购入', N'刘莉', N'人工智能与大数据学院党政科', N'2', N'20201109', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201109', N'01', N'00592', N' ', N'2020-11-09 15:42:48', N'2020-11-06 09:52:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0081aada-e3fa-4fb8-914f-79ec342b7e54', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-06 09:52:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000312', N'11', N'资产购入', N'刘鹤群', N'通信工程学院实训中心', N'2', N'20201104', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201104', N'01', N'00314', N' ', N'2020-11-04 14:37:14', N'2020-11-04 08:44:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ffc92bea-edc5-404d-852c-60bd02b29049', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-04 08:44:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000313', N'11', N'资产购入', N'毛沥悦', N'电子商务系', N'2', N'20201103', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201103', N'01', N'00196', N' ', N'2020-11-03 14:22:43', N'2020-11-02 09:12:45', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'8d8d3e99-7548-49ff-b968-c41bc4706f45', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-02 09:12:45')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000314', N'11', N'资产购入', N'敬官旭', N'概论教研室', N'2', N'20201118', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201118', N'01', N'01326', N' ', N'2020-11-18 10:30:03', N'2020-11-05 10:52:42', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0c8df735-396e-42fd-ac05-cd42a77db6a2', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-05 10:52:42')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000315', N'11', N'资产购入', N'钟翼', N'数字媒体学院', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-10-26 16:11:44', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'4a726d13-c169-450c-a601-e681e7b50bf4', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-26 16:11:44')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000316', N'11', N'资产购入', N'钟翼', N'数字媒体学院办公室', N'2', N'20201130', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201130', N'01', N'02071', N' ', N'2020-11-30 13:46:36', N'2020-11-23 14:48:03', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0246c25c-5a6b-497a-899c-5903bfdf85bb', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 14:48:03')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000317', N'11', N'资产购入', N'钟翼', N'数字媒体学院', N'2', N' ', N'1', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-10-26 16:11:35', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'a5f9f43f-27c8-4f55-849d-8a195452953f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-26 16:11:35')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000318', N'11', N'资产购入', N'钟翼', N'数字媒体学院', N'2', N'20201102', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201102', N'01', N'00089', N' ', N'2020-11-02 11:35:55', N'2020-10-26 16:11:53', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'30c1e416-45e7-4a8a-8462-81021fff0fe3', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-26 16:11:53')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000319', N'11', N'资产购入', N'聂振华', N'智能制造系', N'2', N'20201029', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201029', N'01', N'01515', N' ', N'2020-10-29 09:55:00', N'2020-10-28 15:21:03', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'39b87f53-8805-4959-9769-ca7fcbf6f22e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-28 15:21:03')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000320', N'11', N'资产购入', N'黄忠阳', N'数字媒体保障中心', N'2', N'20201130', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201027', N'01', N'01377', N' ', N'2020-11-30 09:19:34', N'2020-10-27 14:35:32', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'a4b7b0c3-5703-49bf-856a-e4131d21a0d5', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-27 14:35:32')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000321', N'11', N'资产购入', N'赵小刚', N'会计系', N'2', N'20201117', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201117', N'01', N'01262', N' ', N'2020-11-17 15:14:19', N'2020-11-17 10:54:11', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ccce5efa-75db-4d1f-a6c6-8d94d5b36995', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-17 10:54:11')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000322', N'11', N'资产购入', N'xs', N'资产管理科', N'2', N'20201105', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201105', N'01', N'00431', N' ', N'2020-11-05 15:31:51', N'2020-10-29 16:15:30', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'bc929efa-c46b-4f95-98b2-9507fee5b4de', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-10-29 16:15:30')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000324', N'11', N'资产购入', N'郑孝宗', N'工程与鉴定中心', N'2', N'20201109', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201109', N'01', N'00524', N' ', N'2020-11-09 10:18:18', N'2020-11-04 14:11:03', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'50fcb458-f313-4cab-bd75-171d609b79f2', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-04 14:11:03')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000325', N'11', N'资产购入', N'郑孝宗', N'工程与鉴定中心', N'2', N'20201109', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201109', N'01', N'00526', N' ', N'2020-11-09 10:19:39', N'2020-11-04 14:10:51', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c79c0091-97e9-48bb-8dc6-a0ec8d9fb0b9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-04 14:10:51')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000331', N'11', N'资产购入', N'陈世江', N'汽车工程系', N'2', N'20201126', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201126', N'01', N'01985', N' ', N'2020-11-26 10:23:14', N'2020-11-23 10:05:29', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'18dae479-c021-46bf-b04a-00d2699a1530', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 10:05:29')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000335', N'11', N'资产购入', N'冯国锋', N'数学教研室', N'2', N'20201105', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201105', N'01', N'00420', N' ', N'2020-11-05 15:07:41', N'2020-11-04 11:04:35', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'34adef80-37cf-47dc-beb6-b252fd87b178', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-04 11:04:35')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000336', N'11', N'资产购入', N'汪麟', N'思修教研室', N'2', N'20201116', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201116', N'01', N'01076', N' ', N'2020-11-16 10:44:34', N'2020-11-06 14:33:09', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'af8c1fa2-da68-4294-87e7-43d2c64e3209', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-06 14:33:09')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000338', N'11', N'资产购入', N'刘京威', N'物联网应用系', N'2', N'20201201', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201201', N'01', N'00070', N' ', N'2020-12-01 10:12:44', N'2020-11-23 14:48:27', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'30506955-cf53-4c79-8006-4353a313322a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 14:48:27')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000341', N'11', N'资产购入', N'杨仁强', N'健康技术系', N'2', N'20201125', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201125', N'01', N'01929', N' ', N'2020-11-25 15:36:16', N'2020-11-23 14:50:12', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'8346f9ab-2ac9-4884-968d-d8090650aba3', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 14:50:12')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000344', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201109', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201109', N'01', N'00581', N' ', N'2020-11-09 15:07:39', N'2020-11-09 08:54:45', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c53d8759-850b-4b10-a80d-4d609a2081f0', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 08:54:45')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000345', N'11', N'资产购入', N'董征宇', N'电子商务系', N'2', N'20201112', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201112', N'01', N'00961', N' ', N'2020-11-12 11:24:45', N'2020-11-09 08:55:11', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1c332c1f-7585-4094-9a08-3ab23027faa2', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 08:55:11')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000346', N'11', N'资产购入', N'黄忠阳', N'数字媒体保障中心', N'2', N'20201109', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201109', N'01', N'00469', N' ', N'2020-11-09 09:00:33', N'2020-11-05 10:52:23', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'244c7bac-533b-4cd0-8b8f-399a563c5471', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-05 10:52:23')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000347', N'11', N'资产购入', N'黄忠阳', N'数字媒体保障中心', N'2', N'20201109', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201109', N'01', N'00470', N' ', N'2020-11-09 09:02:45', N'2020-11-05 10:52:32', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'05b2140c-8fd3-431d-9711-9a0c54b2985f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-05 10:52:32')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000348', N'11', N'资产购入', N'黄忠阳', N'数字媒体保障中心', N'2', N'20201109', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201109', N'01', N'00467', N' ', N'2020-11-09 08:59:02', N'2020-11-05 10:52:11', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1e20e745-57a5-4c66-9884-5e53f5a4b70f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-05 10:52:11')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000349', N'11', N'资产购入', N'罗香', N'继续教育科', N'2', N'20201123', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201123', N'01', N'01640', N' ', N'2020-11-23 15:51:30', N'2020-11-19 16:13:30', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'15d82e8b-2196-4ab5-b8fc-03a249bcbd15', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-19 16:13:30')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000351', N'11', N'资产购入', N'王景珍', N'思修教研室', N'2', N'20201112', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201112', N'01', N'00902', N' ', N'2020-11-12 09:37:26', N'2020-11-05 14:42:28', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'31b96b57-1f88-4e12-becc-f905ae7a8353', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-05 14:42:28')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000352', N'11', N'资产购入', N'徐凤娇', N'智能制造与汽车学院学管科', N'2', N'20201109', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201109', N'01', N'00511', N' ', N'2020-11-09 09:54:38', N'2020-11-09 08:54:31', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c5182154-d96b-4f27-9156-35866ac1c462', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 08:54:31')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000353', N'11', N'资产购入', N'叶灵艳', N'审计处办公室', N'2', N'20201109', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201109', N'01', N'00486', N' ', N'2020-11-09 09:14:35', N'2020-11-06 09:56:08', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'67613659-0745-445a-be99-c0ce60920b63', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-06 09:56:08')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000354', N'11', N'资产购入', N'余明毅', N'法律综合科', N'2', N'20201111', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201111', N'01', N'00787', N' ', N'2020-11-11 10:36:16', N'2020-11-09 11:07:01', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'96426eae-e904-4dac-8969-6813237cf4e9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 11:07:01')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000355', N'11', N'资产购入', N'刘瑶', N'马克思主义学院办公室', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-24 09:02:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'067173eb-76e0-421e-a0dd-cf6db3e82d5e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-24 09:02:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000356', N'11', N'资产购入', N'刘竞一', N'智能制造系', N'2', N'20201109', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201109', N'01', N'00517', N' ', N'2020-11-09 10:01:14', N'2020-11-09 08:53:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'66348b8b-ea45-460d-a9d5-97fcc77d0579', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 08:53:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000357', N'11', N'资产购入', N'董征宇', N'电子商务系', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-11 10:54:26', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c8e0c3bf-2896-44b9-bd9a-75232e31dabc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 10:54:26')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000358', N'11', N'资产购入', N'赵红利', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:06:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'8bf5198f-c796-4411-bb10-a5d1f47647eb', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:06:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000359', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:06:38', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'485d540a-ea29-455d-a85a-adfee54d26b1', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:06:38')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000360', N'11', N'资产购入', N'赵红利', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:06:21', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'18a43714-9f60-4460-8381-6bc9f7cd2dfe', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:06:21')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000361', N'11', N'资产购入', N'张俊峰', N'智能制造与汽车学院项目办', N'2', N'20201111', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201111', N'01', N'00720', N' ', N'2020-11-11 09:03:39', N'2020-11-09 08:53:35', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e31243dd-450b-4152-9c87-32af2913f2f2', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 08:53:35')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000363', N'11', N'资产购入', N'张俊峰', N'智能制造与汽车学院项目办', N'2', N'20201109', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201109', N'01', N'00534', N' ', N'2020-11-09 10:30:58', N'2020-11-09 08:53:48', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'628bae9d-face-4c56-8c2d-d1e14d1aefa5', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 08:53:48')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000364', N'11', N'资产购入', N'姚晶晶', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:06:07', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'9fd6408a-a648-427f-8941-0ba1d9ae5c1e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:06:07')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000365', N'11', N'资产购入', N'赵红利', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:05:52', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c48b7faf-5c26-4ae0-ab4f-a026695e2bb4', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:05:52')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000366', N'11', N'资产购入', N'姚晶晶', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:05:37', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'343f0e25-b372-4d15-8c4d-6ae8c1578640', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:05:37')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000367', N'11', N'资产购入', N'赵红利', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:05:25', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1b12b716-7b8b-42f6-b580-4905254a2109', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:05:25')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000368', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:05:14', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'9f8866a9-7e47-40c1-a43d-184bd563723a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:05:14')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000369', N'11', N'资产购入', N'姚晶晶', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:04:40', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'de9938c1-eee6-4598-8a09-c1c1dbb0cb6d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:04:40')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000370', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:04:29', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f4575b6b-131f-4fa8-b0fa-efd1afb59779', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:04:29')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000371', N'11', N'资产购入', N'赵红利', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:04:51', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e428223d-a70a-4639-ab9f-35ea58bfd735', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:04:51')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000372', N'11', N'资产购入', N'姚晶晶', N'汽车工程系', N'2', N'20201110', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201110', N'01', N'00669', N' ', N'2020-11-10 10:38:57', N'2020-11-09 14:04:20', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1175a446-f715-43a4-982b-418cfa920584', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:04:20')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000373', N'11', N'资产购入', N'文婷', N'对外汉语教研室', N'2', N'20201112', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201112', N'01', N'00912', N' ', N'2020-11-12 09:53:19', N'2020-11-09 11:06:46', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'956d6bbb-a112-44e7-99ad-383ec698ef4c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 11:06:46')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000374', N'11', N'资产购入', N'毛朝庆', N'工程中心', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-10 17:00:08', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5610b714-1532-4004-aa79-50c70137e9a8', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-10 17:00:08')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000375', N'11', N'资产购入', N'毛朝庆', N'工程中心', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-10 16:48:51', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1fc025ae-3cb1-468c-acac-aff39cd8d22d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-10 16:48:51')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000376', N'11', N'资产购入', N'舒春明', N'后勤处综合科', N'2', N'20201111', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201111', N'01', N'00859', N' ', N'2020-11-11 15:46:34', N'2020-11-11 09:10:22', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c3ee9905-2581-4c74-806b-ebb5abecfb4b', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 09:10:22')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000377', N'11', N'资产购入', N'毛朝庆', N'工程中心', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-10 16:47:40', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e6d4fca9-c3d1-48d6-a36b-4ced249b246b', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-10 16:47:40')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000378', N'11', N'资产购入', N'任振林', N'宿舍管理中心', N'2', N'20201110', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201110', N'01', N'00710', N' ', N'2020-11-10 15:59:44', N'2020-11-10 15:15:23', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ad7c36ae-9f5e-4d83-85f0-9fd880cf1520', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-10 15:15:23')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000379', N'11', N'资产购入', N'冯国锋', N'数学教研室', N'2', N'20201116', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201116', N'01', N'01134', N' ', N'2020-11-16 15:35:06', N'2020-11-09 14:07:10', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5c75e0bd-f407-4fb9-8cdb-5ad92a3e571b', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 14:07:10')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000381', N'11', N'资产购入', N'黄忠阳', N'数字媒体保障中心', N'2', N'20201112', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201112', N'01', N'00906', N' ', N'2020-11-12 09:46:23', N'2020-11-11 16:48:45', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'63656b66-eb51-4272-8ffe-ee9e9c080bf6', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 16:48:45')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000382', N'11', N'资产购入', N'黄忠阳', N'数字媒体保障中心', N'2', N'20201112', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201112', N'01', N'00900', N' ', N'2020-11-12 09:31:41', N'2020-11-09 18:38:51', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0dda80f0-7b45-43e9-a7c5-de71832896eb', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-09 18:38:51')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000383', N'11', N'资产购入', N'刘江林', N'人工智能与大数据学院', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 16:19:32', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'3b9e231e-9d30-436e-a7a5-e39d022d2e67', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 16:19:32')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000384', N'11', N'资产购入', N'郑博', N'财务管理系', N'2', N'20201116', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201116', N'01', N'01098', N' ', N'2020-11-16 14:30:53', N'2020-11-11 09:11:05', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'89a707a7-0437-4e33-9631-42125b0f13c6', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 09:11:05')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000385', N'11', N'资产购入', N'罗安', N'体育教研室', N'2', N'20201111', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201111', N'01', N'00730', N' ', N'2020-11-11 14:37:47', N'2020-11-11 09:11:19', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1e5e375f-c283-4c15-be72-86d8faec8ef1', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 09:11:19')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000387', N'11', N'资产购入', N'李智博', N'物流系', N'2', N'20201119', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201119', N'01', N'01465', N' ', N'2020-11-19 14:33:35', N'2020-11-16 10:40:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'7586e914-e079-4938-90ad-eff70b676865', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 10:40:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000388', N'11', N'资产购入', N'王伟强', N'健康技术系', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-10 14:28:52', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'24ebf4a7-4261-4142-bc67-e1eb0435974c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-10 14:28:52')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000389', N'11', N'资产购入', N'郑博', N'财务管理系', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-11 09:10:40', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1b7cba04-6d3d-443b-a7d7-f292b3d6a303', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 09:10:40')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000390', N'11', N'资产购入', N'袁俊锋', N'培训科', N'2', N'20201116', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201116', N'01', N'01035', N' ', N'2020-11-16 09:21:55', N'2020-11-11 09:10:52', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'2e0ab6fd-20b2-4844-a29a-431b867c4899', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 09:10:52')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000391', N'11', N'资产购入', N'唐荣地', N'体育教研室', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01081', N' ', N'2020-11-16 10:54:32', N'2020-11-12 14:35:57', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f3e7cf3e-eb22-4eae-baf6-f139e55a8625', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-12 14:35:57')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000392', N'11', N'资产购入', N'朱游兵', N'智能制造与汽车学院', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-23 16:19:32', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5cbc6e81-d54b-42e1-813f-b72f0917cc7c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 16:19:32')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000393', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'0', N' ', N'', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-11-23 16:19:50', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e1e211f2-2f17-4606-9da8-296ea772c000', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 16:19:50')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000394', N'11', N'资产购入', N'蒋艺', N'体育教研室', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01085', N' ', N'2020-11-16 10:57:35', N'2020-11-12 14:35:48', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'dca07a80-7277-4d2a-8f01-650861a12753', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-12 14:35:48')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000395', N'11', N'资产购入', N'陈彬郎', N'收费科', N'2', N'20201112', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201112', N'01', N'00890', N' ', N'2020-11-12 09:13:46', N'2020-11-11 16:48:26', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'fe489796-20e9-4f2c-8b63-8ce146fb6cea', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-11 16:48:26')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000396', N'11', N'资产购入', N'陈方艺', N'信息服务系', N'2', N'20201117', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201117', N'01', N'01284', N' ', N'2020-11-17 16:49:49', N'2020-11-17 09:37:38', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd9658031-43b0-4dee-8582-5f5b17345026', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-17 09:37:38')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000397', N'11', N'资产购入', N'刘国维', N'治安室', N'2', N'20201117', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201117', N'01', N'01178', N' ', N'2020-11-17 09:01:49', N'2020-11-16 09:06:51', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'13c36683-2fe4-44f2-80c0-de119b39242b', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 09:06:51')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000398', N'11', N'资产购入', N'邓飞', N'教学运行科', N'2', N'20201123', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201123', N'01', N'01552', N' ', N'2020-11-23 10:08:54', N'2020-11-19 10:43:40', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'932dc88e-1a4b-4857-b51e-d6b07fc4ddcf', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-19 10:43:40')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000399', N'11', N'资产购入', N'黄忠阳', N'数字媒体保障中心', N'1', N'20201126', N'0', N'', N'凭证删除', N'', N'', N'', N' ', N'2020-11-26 14:30:40', N'2020-11-16 14:48:43', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'cedd5fbb-3ad2-49ad-be5d-716fd92009e4', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 14:48:43')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000401', N'11', N'资产购入', N'陈政佳', N'通识教育与国际学院办公室', N'2', N'20201125', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201125', N'01', N'01902', N' ', N'2020-11-25 15:09:44', N'2020-11-23 08:58:42', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'76a176ba-2818-47cf-82d7-0013599548d8', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 08:58:42')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000402', N'11', N'资产购入', N'郭建军', N'图文信息中心', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01054', N' ', N'2020-11-16 09:56:23', N'2020-11-16 09:39:29', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'b75e5f19-1fe7-4fda-933b-7681133d91bc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 09:39:29')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000403', N'11', N'资产购入', N'郭建军', N'图文信息中心', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01055', N' ', N'2020-11-16 09:59:46', N'2020-11-16 09:39:18', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'7e032b1e-9f9c-4503-9582-8973e8cbc57d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 09:39:18')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000404', N'11', N'资产购入', N'郭建军', N'资源建设部', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01056', N' ', N'2020-11-16 10:01:38', N'2020-11-16 09:39:03', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'de97988c-82c7-4a9f-acd5-fd352329bca6', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 09:39:03')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000405', N'11', N'资产购入', N'郭建军', N'图文信息中心', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01057', N' ', N'2020-11-16 10:03:29', N'2020-11-16 09:38:56', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'516ba32f-20de-44ba-a10b-fba8ec6562be', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 09:38:56')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000406', N'11', N'资产购入', N'郭建军', N'图文信息中心', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01060', N' ', N'2020-11-16 10:15:29', N'2020-11-16 09:38:48', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'961861d5-f4f5-4e4e-82c7-ccc08eb6183f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 09:38:48')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000407', N'11', N'资产购入', N'郭建军', N'图文信息中心', N'2', N'20201116', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201116', N'01', N'01058', N' ', N'2020-11-16 10:09:04', N'2020-11-16 09:38:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'425da954-948e-4541-a333-483c0ef27cd7', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-16 09:38:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000414', N'11', N'资产购入', N'代杨', N'数字媒体保障中心', N'2', N'20201125', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201125', N'01', N'01796', N' ', N'2020-11-25 09:07:42', N'2020-11-24 15:19:08', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f122929a-c3be-4437-855b-619bc96df451', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-24 15:19:08')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000415', N'11', N'资产购入', N'祝骎钦', N'工程造价', N'2', N'20201117', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201117', N'01', N'01214', N' ', N'2020-11-17 10:21:25', N'2020-11-17 09:48:48', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'2ad024a5-1a14-4a7a-aa92-4d4492d31879', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-17 09:48:48')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000416', N'11', N'资产购入', N'田晔非', N'电子与物联网学院', N'2', N'20201119', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201119', N'01', N'01486', N' ', N'2020-11-19 15:15:30', N'2020-11-19 10:43:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'6ddbff04-5657-436b-8d42-e2b62368ca57', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-19 10:43:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000417', N'11', N'资产购入', N'邵有为', N'建筑智能化', N'2', N'20201118', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201118', N'01', N'01329', N' ', N'2020-11-18 10:37:29', N'2020-11-18 08:46:35', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'af9070cd-b88d-4c76-b4c4-8f5b76e1ecbf', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-18 08:46:35')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000419', N'11', N'资产购入', N'鲁伟', N'图文信息中心办公室', N'2', N'20201125', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201125', N'01', N'01849', N' ', N'2020-11-25 09:57:03', N'2020-11-18 11:02:40', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'3601ea29-d236-4417-aa09-381352a5a927', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-18 11:02:40')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000420', N'11', N'资产购入', N'张伟', N'智能制造系', N'2', N'20201124', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201124', N'01', N'01688', N' ', N'2020-11-24 10:05:11', N'2020-11-19 10:06:35', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'fd89923e-78d9-413a-855d-175aad2b8cf2', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-19 10:06:35')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000421', N'11', N'资产购入', N'王伟强', N'健康技术系', N'2', N'20201125', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201125', N'01', N'01857', N' ', N'2020-11-25 10:12:46', N'2020-11-23 14:48:15', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd5ecc7bc-0a1c-4ea3-be95-66db34423b83', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-23 14:48:15')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000423', N'11', N'资产购入', N'毛朝庆', N'工程中心', N'2', N'20201126', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201126', N'01', N'02008', N' ', N'2020-11-26 14:35:24', N'2020-11-18 08:46:57', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'be80ec21-5b37-4aa7-8e53-d8551485b553', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-18 08:46:57')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000424', N'11', N'资产购入', N'冉小彬', N'网络安全与信息化办公室', N'2', N'20201124', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201124', N'01', N'01763', N' ', N'2020-11-24 15:44:34', N'2020-11-24 15:18:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'3d8c67cc-ecb9-4266-8164-c1eaf36cdbb5', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-24 15:18:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000425', N'11', N'资产购入', N'冉小彬', N'网络安全与信息化办公室', N'2', N'20201124', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201124', N'01', N'01760', N' ', N'2020-11-24 15:38:18', N'2020-11-24 15:19:00', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd61b1e2e-c330-4657-b094-2f30ef1ecf0c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-24 15:19:00')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000426', N'11', N'资产购入', N'余明毅', N'法律综合科', N'2', N'20201126', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201126', N'01', N'02013', N' ', N'2020-11-26 14:43:01', N'2020-11-24 09:02:33', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ac4b7162-e4b2-4b95-b95b-df5308f22504', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-24 09:02:33')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000427', N'11', N'资产购入', N'余月华', N'通信工程学院实训中心', N'2', N'20201119', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201119', N'01', N'01463', N' ', N'2020-11-19 14:28:41', N'2020-11-19 10:06:43', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e18703a3-d6ed-43e2-9f97-a5544437104a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-19 10:06:43')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000428', N'11', N'资产购入', N'刘鹤群', N'通信工程学院实训中心', N'2', N'20201201', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201201', N'01', N'00214', N' ', N'2020-12-01 15:52:57', N'2020-11-27 09:00:41', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5cd98830-593f-4c95-b8fe-1ac282365c1e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-27 09:00:41')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000429', N'11', N'资产购入', N'郑博', N'财务管理系', N'1', N'20201215', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201215', N'01', N'02002', N' ', N'2020-12-15 11:32:12', N'2020-12-11 17:03:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e6c132cf-7fcb-4f9d-8c01-7259aa538c02', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 17:03:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000430', N'11', N'资产购入', N'任勇', N'汽车工程系', N'1', N'20201214', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201214', N'01', N'01707', N' ', N'2020-12-14 09:56:02', N'2020-12-07 09:08:38', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'888bde83-e18b-4e41-bada-008f59d82050', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-07 09:08:38')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000431', N'11', N'资产购入', N'洪慧慧', N'自动化系', N'1', N'20201214', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201214', N'01', N'01837', N' ', N'2020-12-14 16:10:12', N'2020-11-25 16:03:46', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'94aeaac5-7f90-4bb7-9362-fc26e41c06c9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-25 16:03:46')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000432', N'11', N'资产购入', N'袁燕', N'自动化系', N'0', N'20201215', N'0', N'', N'凭证删除', N'', N'', N'', N' ', N'2020-12-15 16:23:35', N'2020-12-14 16:20:49', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'991e924c-2b0f-49f5-98ea-e0c5b6b2aa16', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 16:20:49')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000433', N'11', N'资产购入', N'祝骎钦', N'工程造价', N'2', N'20201125', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201117', N'01', N'01239', N' ', N'2020-11-25 14:57:13', N'2020-11-25 10:50:27', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'73f2a3fb-666e-4993-a6b9-d74f0c4d9445', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-25 10:50:27')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000434', N'11', N'资产购入', N'马巾凌', N'网络安全与信息化办公室', N'1', N'20201203', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201203', N'01', N'00539', N' ', N'2020-12-03 15:17:29', N'2020-12-01 11:17:46', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'2759be7c-9c57-407d-9c17-86087befb250', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 11:17:46')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000435', N'11', N'资产购入', N'姚先友', N'通信技术教研室', N'2', N'20201126', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201126', N'01', N'01963', N' ', N'2020-11-26 09:44:12', N'2020-11-26 09:23:28', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1eb59d34-2c6d-4b1a-8694-07a7e3921690', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-26 09:23:28')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000436', N'11', N'资产购入', N'任振林', N'宿舍管理中心', N'2', N'20201126', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201126', N'01', N'02042', N' ', N'2020-11-26 15:57:43', N'2020-11-26 14:04:21', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'84106467-c9e5-4df0-969b-8df38e6db792', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-26 14:04:21')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000437', N'11', N'资产购入', N'肖罕', N'宣传部办公室', N'1', N'20201215', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201215', N'01', N'01910', N' ', N'2020-12-15 09:41:20', N'2020-12-07 10:48:30', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'457fee2c-4ecc-4a8f-a5c8-0ef5e9e96601', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-07 10:48:30')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000438', N'11', N'资产购入', N'郭景全', N'智能制造系', N'1', N'20201207', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201207', N'01', N'00692', N' ', N'2020-12-07 10:30:51', N'2020-11-30 11:30:19', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5d9b2017-2eda-4f79-9dd5-fff7a73ce589', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-30 11:30:19')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000439', N'11', N'资产购入', N'张慧敏', N'通信工程设计与实施教研室', N'2', N'20201201', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201201', N'01', N'00185', N' ', N'2020-12-01 15:25:14', N'2020-12-01 14:56:16', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e6fb8439-51f3-4a0c-b6d0-adecef5e0bfc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 14:56:16')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000440', N'11', N'资产购入', N'张慧敏', N'通信工程设计与实施教研室', N'2', N'20201201', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201201', N'01', N'00187', N' ', N'2020-12-01 15:27:56', N'2020-12-01 14:56:02', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'a2c651c5-c33a-477e-9a07-791f76d5738c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 14:56:02')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000441', N'11', N'资产购入', N'张慧敏', N'通信工程设计与实施教研室', N'2', N'20201201', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201201', N'01', N'00186', N' ', N'2020-12-01 15:26:14', N'2020-12-01 14:55:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'fb9b6687-469a-40e4-a8f3-4c5a228d6dd8', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 14:55:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000442', N'11', N'资产购入', N'佟莹', N'自动化系', N'1', N'20201214', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201214', N'01', N'01780', N' ', N'2020-12-14 14:19:20', N'2020-11-30 11:30:03', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'6bf040a1-c354-4c3f-80a6-4bb49f400668', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-30 11:30:03')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000443', N'11', N'资产购入', N'陈涛', N'产教融合办公室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-10 15:34:14', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'38c25f79-a6b9-49d4-bda1-c8a8f268a2bc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-10 15:34:14')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000444', N'11', N'资产购入', N'姚奕', N'财经管理学院办公室', N'1', N'20201210', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201210', N'01', N'01492', N' ', N'2020-12-10 15:41:08', N'2020-12-09 10:49:21', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'190ee6e2-fa83-4e5a-beb4-9f0575e0ca3d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 10:49:21')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000445', N'11', N'资产购入', N'姚奕', N'财经管理学院办公室', N'1', N'20201210', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201210', N'01', N'01492', N' ', N'2020-12-10 15:41:08', N'2020-12-09 10:48:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'29b6d5b5-8319-4918-a2dd-430e47070644', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 10:48:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000446', N'11', N'资产购入', N'伯霖', N'培训与继续教育中心综合科', N'1', N'20201207', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201207', N'01', N'00635', N' ', N'2020-12-07 09:28:09', N'2020-12-01 08:46:18', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'af8947f2-5f11-4e5b-acbf-58fdd15fb409', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 08:46:18')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000447', N'11', N'资产购入', N'王伟强', N'健康技术系', N'2', N'20201202', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201202', N'01', N'00280', N' ', N'2020-12-02 10:03:47', N'2020-11-27 10:46:57', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'72702679-89fd-42b8-840d-21017f82b118', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-27 10:46:57')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000448', N'11', N'资产购入', N'毛朝庆', N'工程中心', N'2', N'20201126', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201126', N'01', N'02012', N' ', N'2020-11-26 14:43:01', N'2020-11-26 11:15:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'139748d1-4e59-45bb-8464-36401158031f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-26 11:15:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000449', N'11', N'资产购入', N'郭心毅', N'健康管理系', N'2', N'20201201', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201201', N'01', N'00113', N' ', N'2020-12-01 11:17:38', N'2020-11-27 10:47:15', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'942576b1-3b5b-4cbd-b129-b40f79a2d0fc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-27 10:47:15')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000450', N'11', N'资产购入', N'郭景全', N'智能制造系', N'1', N'20201207', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201207', N'01', N'00690', N' ', N'2020-12-07 10:29:10', N'2020-12-03 09:37:28', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f6ced9de-1297-49a1-8c2e-218a0efd37cf', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 09:37:28')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000451', N'11', N'资产购入', N'毛朝庆', N'工程中心', N'2', N'20201201', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201201', N'01', N'00057', N' ', N'2020-12-01 09:54:19', N'2020-11-27 10:47:07', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1a4933fb-7c2d-4c73-92a7-ed88cdb04805', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-11-27 10:47:07')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000452', N'11', N'资产购入', N'陆学勤', N'电子商务系', N'1', N'20201209', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201209', N'01', N'01138', N' ', N'2020-12-09 09:56:24', N'2020-12-08 14:57:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f1e0ae44-6095-4b79-b912-e9fcbb663aaf', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 14:57:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000453', N'11', N'资产购入', N'胡朝晖', N'资源建设部', N'2', N'20201201', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201201', N'01', N'00020', N' ', N'2020-12-01 09:03:26', N'2020-12-01 08:41:36', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'bea20f16-4552-4761-8f51-34c668dbee5c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 08:41:36')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000455', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'2', N'20201201', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201201', N'01', N'00212', N' ', N'2020-12-01 15:52:26', N'2020-12-01 11:22:13', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'49d82286-6b08-4697-bf9e-e8f6fe4b59c7', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 11:22:13')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000456', N'11', N'资产购入', N'黄婧雯', N'人工智能与大数据学院学管科', N'1', N'20201207', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201207', N'01', N'00653', N' ', N'2020-12-07 09:44:43', N'2020-12-02 15:23:30', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ce7a5441-056d-4405-bc74-8483ae93bab1', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-02 15:23:30')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000457', N'11', N'资产购入', N'刘瑶', N'马克思主义学院办公室', N'1', N'20201203', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201203', N'01', N'00542', N' ', N'2020-12-03 15:20:42', N'2020-12-03 10:00:10', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'6df1179c-4916-4d3a-8d1c-13eab4ebf86a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-03 10:00:10')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000458', N'11', N'资产购入', N'邹冰倩', N'智能制造系', N'1', N'20201207', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201207', N'01', N'00815', N' ', N'2020-12-07 15:19:51', N'2020-12-04 16:03:42', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0493095d-e8fd-4286-92cc-4e9bc70c938a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-04 16:03:42')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000459', N'11', N'资产购入', N'邹冰倩', N'智能制造系', N'1', N'20201207', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201207', N'01', N'00678', N' ', N'2020-12-07 15:15:07', N'2020-12-04 16:40:35', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0b424092-2256-4ff4-a489-7d559d9a6cb9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-04 16:40:35')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000460', N'11', N'资产购入', N'王荣辉', N'科研与社会服务处办公室', N'1', N'20201202', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201202', N'01', N'00264', N' ', N'2020-12-02 09:31:10', N'2020-12-02 08:44:08', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'86b3fdfa-2b5f-44a5-bb98-ed179950754a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-02 08:44:08')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000461', N'11', N'资产购入', N'邓剑勋', N'人工智能系', N'2', N'20201201', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201201', N'01', N'00219', N' ', N'2020-12-01 16:02:14', N'2020-12-01 14:46:00', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd7febcf7-3dd8-4122-a2d1-10a1b7383c6b', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-01 14:46:00')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000462', N'11', N'资产购入', N'龚颖春', N'网络安全与信息化办公室', N'1', N'20201209', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201209', N'01', N'01145', N' ', N'2020-12-09 10:10:05', N'2020-12-08 14:55:14', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'32f7a2ba-5c52-49b9-97f5-4d19dd0868a9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 14:55:14')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000464', N'11', N'资产购入', N'冯国锋', N'数学教研室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 14:18:05', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e72b090c-f5e0-4281-9062-d67cb810820e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 14:18:05')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000465', N'11', N'资产购入', N'郑博', N'财务管理系', N'1', N'20201215', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201215', N'01', N'01997', N' ', N'2020-12-15 11:27:18', N'2020-12-11 09:15:19', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5f2e585f-d994-4ccf-b095-2627164ff9bc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 09:15:19')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000466', N'11', N'资产购入', N'周华春', N'工程中心', N'1', N'20201208', N'1', N'潘文', N'制单成功,制单人:潘文', N'20201208', N'01', N'00862', N' ', N'2020-12-08 09:18:31', N'2020-12-07 09:08:07', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c0de3b25-aea8-40d9-b2fb-ed13a48c06b0', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-07 09:08:07')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000469', N'11', N'资产购入', N'陈宗霞', N'财经管理学院学管科', N'1', N'20201209', N'1', N'魏文力', N'制单成功,制单人:魏文力', N'20201209', N'01', N'01179', N' ', N'2020-12-09 10:44:44', N'2020-12-08 16:23:34', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'cea1afcd-b4ca-47b9-8576-1bffa67e364e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 16:23:34')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000470', N'11', N'资产购入', N'方伟', N'国防教研室', N'1', N'20201208', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201208', N'01', N'00909', N' ', N'2020-12-08 10:21:23', N'2020-12-07 14:29:24', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'df2bb225-7cb4-4974-9282-06db4c68c7da', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-07 14:29:24')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000471', N'11', N'资产购入', N'余明毅', N'法律综合科', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-14 14:16:46', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1790f620-c4d1-4522-bf4a-6f731ba324d3', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 14:16:46')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000472', N'11', N'资产购入', N'余明毅', N'法律综合科', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-14 10:04:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'3e1673e6-5cc2-46f8-bec4-4cdda2e1f64c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 10:04:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000474', N'11', N'资产购入', N'袁俊锋', N'培训科', N'1', N'20201208', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201208', N'01', N'00999', N' ', N'2020-12-08 15:01:46', N'2020-12-07 09:08:22', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'033e92e8-6ab4-414a-84a4-4740aa9ca981', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-07 09:08:22')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000476', N'11', N'资产购入', N'赵君梅', N'网络安全与信息化办公室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-10 15:30:40', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'fa8f5a21-4f37-48b9-a60b-cabd653c0e2d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-10 15:30:40')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000477', N'11', N'资产购入', N'陈甫', N'健康技术系', N'1', N'20201209', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201209', N'01', N'01105', N' ', N'2020-12-09 09:22:36', N'2020-12-08 09:07:27', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'7eb41d72-e724-41ac-9f1f-1000240df138', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 09:07:27')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000478', N'11', N'资产购入', N'陈甫', N'健康技术系', N'1', N'20201208', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201208', N'01', N'01018', N' ', N'2020-12-08 15:22:33', N'2020-12-08 09:51:02', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1bac92a0-562b-417a-a34c-07a92b8af24f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 09:51:02')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000479', N'11', N'资产购入', N'陈甫', N'健康技术系', N'1', N'20201208', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201208', N'01', N'01023', N' ', N'2020-12-08 15:28:39', N'2020-12-08 09:11:07', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'28edcb79-f4f6-4383-819a-32001cf2c710', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 09:11:07')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000480', N'11', N'资产购入', N'陈甫', N'健康技术系', N'1', N'20201208', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201208', N'01', N'01022', N' ', N'2020-12-08 15:26:17', N'2020-12-08 09:09:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd2380527-5f10-4141-bb69-ca596a038cc9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 09:09:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000481', N'11', N'资产购入', N'邓飞', N'教学运行科', N'1', N'20201209', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201209', N'01', N'01248', N' ', N'2020-12-09 15:10:15', N'2020-12-09 11:10:23', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'a9fa892e-56fe-410c-9cf2-01aabab4990e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 11:10:23')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000482', N'11', N'资产购入', N'许姚', N'团委办公室', N'1', N'20201210', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201210', N'01', N'01476', N' ', N'2020-12-10 15:13:45', N'2020-12-09 10:48:16', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'208dd2e3-a30e-4973-9f3c-3480b3c49e51', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 10:48:16')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000485', N'11', N'资产购入', N'王伟强', N'健康技术系', N'1', N'20201209', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201209', N'01', N'01121', N' ', N'2020-12-09 09:35:37', N'2020-12-08 16:23:55', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd1df3f16-c6e9-4af9-8374-9cea2731d729', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 16:23:55')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000487', N'11', N'资产购入', N'陈涛', N'产教融合办公室', N'1', N'20201214', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201214', N'01', N'01715', N' ', N'2020-12-14 10:13:46', N'2020-12-08 14:57:25', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e1ca2561-9af3-4bfc-a136-e0a232c5478e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 14:57:25')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000488', N'11', N'资产购入', N'陈甫', N'健康技术系', N'1', N'20201208', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201208', N'01', N'01025', N' ', N'2020-12-08 15:30:00', N'2020-12-08 09:06:25', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f0846308-887c-4424-b1d1-ab5634977b63', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 09:06:25')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000489', N'11', N'资产购入', N'龚颖春', N'网络安全与信息化办公室', N'1', N'20201208', N'1', N'向小玲', N'制单成功,制单人:向小玲', N'20201208', N'01', N'00992', N' ', N'2020-12-08 14:52:39', N'2020-12-08 10:56:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'8dbd86a3-456d-4e3b-9bfa-a7c6334d7415', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 10:56:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000490', N'11', N'资产购入', N'王立和', N'宿舍管理中心', N'1', N'20201209', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201209', N'01', N'01241', N' ', N'2020-12-09 15:01:58', N'2020-12-09 10:00:23', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'66a996ad-06dd-4680-8049-338f1f12b281', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 10:00:23')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000491', N'11', N'资产购入', N'董征宇', N'电子商务系', N'1', N'20201211', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201211', N'01', N'01570', N' ', N'2020-12-11 09:40:19', N'2020-12-10 16:44:02', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'457e1ed7-61b8-4f21-8960-64a72e426beb', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-10 16:44:02')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000492', N'11', N'资产购入', N'董征宇', N'电子商务系', N'1', N'20201211', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201211', N'01', N'01567', N' ', N'2020-12-11 09:36:36', N'2020-12-10 16:43:53', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'0cbef09f-ac95-4d0c-bb69-f7fdde5a2258', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-10 16:43:53')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000493', N'11', N'资产购入', N'董征宇', N'电子商务系', N'1', N'20201211', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201211', N'01', N'01569', N' ', N'2020-12-11 09:38:28', N'2020-12-10 16:43:24', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ac0d3fd3-65e5-4a5c-8d3b-751edf429026', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-10 16:43:24')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000495', N'11', N'资产购入', N'陈甫', N'健康技术系', N'1', N'20201209', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201209', N'01', N'01105', N' ', N'2020-12-09 09:22:36', N'2020-12-08 16:01:41', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'20a30265-31d5-43e2-a8ac-ed574c01146f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-08 16:01:41')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000497', N'11', N'资产购入', N'黄玮雯', N'艺术设计系', N'1', N'20201210', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201210', N'01', N'01483', N' ', N'2020-12-10 15:19:19', N'2020-12-09 17:11:32', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'66562ff2-886f-48c5-ad39-8f592c4598a9', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 17:11:32')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000498', N'11', N'资产购入', N'钟翼', N'数字媒体学院办公室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-11 09:14:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'942c512b-3f38-49f5-8b50-434e92a172ea', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 09:14:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000499', N'11', N'资产购入', N'刘雅涵', N'宣传部办公室', N'1', N'20201209', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201209', N'01', N'01249', N' ', N'2020-12-09 15:12:27', N'2020-12-09 10:47:58', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'8b1677f0-48bb-4a8a-8c19-f3a59445311c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 10:47:58')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000500', N'11', N'资产购入', N'吴梁洲', N'智能制造与汽车学院学管科', N'1', N'20201211', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201211', N'01', N'01607', N' ', N'2020-12-11 10:41:00', N'2020-12-09 14:52:07', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'ee12f7ef-4189-4d15-8df6-0438ef4c19a3', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 14:52:07')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000501', N'11', N'资产购入', N'林婧', N'教务处综合科', N'1', N'20201211', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201211', N'01', N'01630', N' ', N'2020-12-11 11:19:22', N'2020-12-09 08:46:21', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'b5f3764c-ca5e-486e-bc78-df8fafeee86c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 08:46:21')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000502', N'11', N'资产购入', N'冯朝军', N'物流系', N'1', N'20201214', N'1', N'金敉娜', N'制单成功,制单人:金敉娜', N'20201214', N'01', N'01825', N' ', N'2020-12-14 15:49:46', N'2020-12-11 17:03:50', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'07ab68a0-408a-4dfb-9a26-d14e092b881f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 17:03:50')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000503', N'11', N'资产购入', N'陈涛', N'产教融合办公室', N'1', N'20201211', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201211', N'01', N'01571', N' ', N'2020-12-11 09:41:51', N'2020-12-10 15:18:12', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd8329b63-0f2b-43c8-b898-56aed25e3c83', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-10 15:18:12')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000504', N'11', N'资产购入', N'黄玮雯', N'艺术设计系', N'1', N'20201210', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201210', N'01', N'01481', N' ', N'2020-12-10 15:17:38', N'2020-12-09 17:11:21', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'c2013694-e333-4a13-8c58-ced5b88c96c3', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-09 17:11:21')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000505', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 09:14:25', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'82aaa681-f385-4654-bce3-a1d560a373c7', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 09:14:25')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000506', N'11', N'资产购入', N'刘晓燕', N'自动化系', N'1', N'20201215', N'1', N'金敉娜', N'制单成功,制单人:金敉娜', N'20201215', N'01', N'02084', N' ', N'2020-12-15 16:39:58', N'2020-12-15 11:25:17', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'1d97ee39-1c21-4e27-8ca6-1a1d25b62cc0', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 11:25:17')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000507', N'11', N'资产购入', N'姚先友', N'通信技术教研室', N'1', N'20201214', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201214', N'01', N'01733', N' ', N'2020-12-14 10:34:44', N'2020-12-11 17:03:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'9b03d179-45e5-450d-bc7d-e6d53a7b73db', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 17:03:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000509', N'11', N'资产购入', N'李庆', N'自动化系', N'1', N'20201215', N'1', N'金敉娜', N'制单成功,制单人:金敉娜', N'20201215', N'01', N'01920', N' ', N'2020-12-15 09:56:33', N'2020-12-10 16:43:04', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'623d0683-3c62-402f-8597-50e571449353', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-10 16:43:04')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000510', N'11', N'资产购入', N'谢佳佳', N'物流系', N'1', N'20201214', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201214', N'01', N'01688', N' ', N'2020-12-14 09:00:05', N'2020-12-11 17:04:25', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'758c88af-8f51-4942-a20b-de9c99271908', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 17:04:25')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000511', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 09:13:50', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'2da9a8d4-fcd1-4c14-9f6f-68c22e31c4eb', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 09:13:50')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000512', N'11', N'资产购入', N'毛朝庆', N'工程中心', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-14 08:32:59', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e61c2014-68bf-44bc-8d25-9c08929b9527', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 08:32:59')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000513', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 09:13:26', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'605c05c0-933e-4049-a45e-f5211ce3cb1e', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 09:13:26')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000518', N'11', N'资产购入', N'李斌', N'保障科', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-11 17:04:12', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'b9cb8edc-09fe-4fbf-b980-0c65be302f40', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 17:04:12')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000519', N'11', N'资产购入', N'陈志勇', N'智能电子系', N'1', N'20201214', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201214', N'01', N'01836', N' ', N'2020-12-14 16:07:51', N'2020-12-14 15:13:46', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5e0d7a39-2ffb-4d4b-845e-91c6d87377e7', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 15:13:46')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000520', N'11', N'资产购入', N'陈志勇', N'智能电子系', N'1', N'20201214', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201214', N'01', N'01834', N' ', N'2020-12-14 16:07:00', N'2020-12-14 15:13:31', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'9d0fed0a-aff5-4a50-ac78-531a07c281f6', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 15:13:31')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000521', N'11', N'资产购入', N'何开洋', N'纪检监察室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 15:58:01', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e57b4094-3759-43ea-8301-b4c42664a337', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 15:58:01')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000522', N'11', N'资产购入', N'邓家彬', N'汽车工程系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 09:12:54', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'95a22721-6e1b-4700-87a4-cd3bd6c590b0', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 09:12:54')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000523', N'11', N'资产购入', N'许翀', N'体育教研室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-14 17:01:38', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'f72cf8b9-0a9e-4ee9-8313-628c727c44e1', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 17:01:38')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000524', N'11', N'资产购入', N'刘利夫', N'体育教研室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 10:05:04', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd891c969-07ec-4d1c-994b-abe46dd4d49c', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 10:05:04')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000530', N'11', N'资产购入', N'陈彬郎', N'收费科', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-14 16:37:15', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'e5627eec-5dde-495b-a38b-12f0bb1b7e4b', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 16:37:15')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000531', N'11', N'资产购入', N'邵有为', N'建筑智能化', N'1', N'20201215', N'1', N'赵子晓', N'制单成功,制单人:赵子晓', N'20201215', N'01', N'01882', N' ', N'2020-12-15 09:10:24', N'2020-12-14 15:10:18', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'98ba0075-ef24-459d-b827-5a50930b5518', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-14 15:10:18')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000533', N'11', N'资产购入', N'张慧敏', N'通信工程设计与实施教研室', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 16:37:00', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'd35b2775-a4ad-4d84-b338-f4308ba509ce', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 16:37:00')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000534', N'11', N'资产购入', N'王伟强', N'健康技术系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 14:11:39', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'461faa22-f7d1-4f9b-94cc-fa0f2d528d9f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 14:11:39')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000537', N'11', N'资产购入', N'张正俊', N'资产管理科', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 11:36:48', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'6c11f0f6-ef67-4901-929c-bd5bbcd595b6', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 11:36:48')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000539', N'11', N'资产购入', N'林涛', N'信息服务系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 17:16:48', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'83f5cf08-f2a6-4063-9eb7-c37fd1dd1e6f', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 17:16:48')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000541', N'11', N'资产购入', N'刘宇凌', N'影视动画系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 17:25:11', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'fcf09923-b754-4668-9e39-fa8ad38bf80d', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 17:25:11')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000544', N'11', N'资产购入', N'王伟强', N'健康技术系', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-15 17:14:50', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'81600686-1439-45df-a6ca-fb11c27af605', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-15 17:14:50')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'ZCDB2020000001', N'31', N'资产内部调拨', N'罗伦', N'软件学院实训中心', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-04 22:05:08', N'com.jiuqi.np.gams2.business.bill.TransferBillDefine', N'930ae048-b292-4b52-b7a3-1f563cc4e44a', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-04 22:05:08')
GO

INSERT INTO [dbo].[zc_ywlx] VALUES (N'ZYBD2020000001', N'11', N'资产购入', N'赵竹', N'软件学院实训中心', N'0', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'2020-12-04 21:46:23', N'com.jiuqi.np.gams2.business.bill.ImportantAssetChangeBillDefine', N'8901cbcb-a861-456d-8cc2-749a811b5d69', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-04 21:46:23')
GO


-- ----------------------------
-- Primary Key structure for table zc_ywlx
-- ----------------------------
ALTER TABLE [dbo].[zc_ywlx] ADD CONSTRAINT [PK_zc_ywlx] PRIMARY KEY CLUSTERED ([ywdh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


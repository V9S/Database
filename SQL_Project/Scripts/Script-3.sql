INSERT INTO zc_ywlx VALUES ('YSSZ2020000465', '11', '资产购入', '郑博', '财务管理系', '1', '20201215', '1', '苏曼璐', '制单成功,制单人:苏曼璐', '20201215', '01', '01997', ' ', '2020-12-15 11:27:18', '2020-12-11 09:15:19', 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', '5f2e585f-d994-4ccf-b095-2627164ff9bc', '', '', '', '', '', '', .00, .00, .00, .00, .00, NULL, NULL, NULL, '2020-12-11 09:15:19'); 


INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000465', N'11', N'资产购入', N'郑博', N'财务管理系', N'1', N'20201215', N'1', N'苏曼璐', N'制单成功,制单人:苏曼璐', N'20201215', N'01', N'01997', N' ', N'2020-12-15 11:27:18', N'2020-12-11 09:15:19', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5f2e585f-d994-4ccf-b095-2627164ff9bc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 09:15:19')


select * from zc_ywlx where ywdh = 'YSSZ2020000465';

delete from zc_ywlx where ywdh = 'YSSZ2020000399';

ALTER TABLE [dbo].[zc_ywlx] ADD CONSTRAINT [PK_zc_ywlx] PRIMARY KEY CLUSTERED ([ywdh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]

select YWDH,PZBH,PZRQ,BILLID,BILLDEFINE from ZC_YWLX where ISSH = '1'

select YWDH,PZBH,PZRQ,BILLID,BILLDEFINE from ZC_YWLX where ISSH = '1' and 
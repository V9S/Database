INSERT INTO zc_ywlx VALUES ('YSSZ2020000465', '11', '�ʲ�����', '֣��', '�������ϵ', '1', '20201215', '1', '�����', '�Ƶ��ɹ�,�Ƶ���:�����', '20201215', '01', '01997', ' ', '2020-12-15 11:27:18', '2020-12-11 09:15:19', 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', '5f2e585f-d994-4ccf-b095-2627164ff9bc', '', '', '', '', '', '', .00, .00, .00, .00, .00, NULL, NULL, NULL, '2020-12-11 09:15:19'); GO


INSERT INTO [dbo].[zc_ywlx] VALUES (N'YSSZ2020000465', N'11', N'�ʲ�����', N'֣��', N'�������ϵ', N'1', N'20201215', N'1', N'�����', N'�Ƶ��ɹ�,�Ƶ���:�����', N'20201215', N'01', N'01997', N' ', N'2020-12-15 11:27:18', N'2020-12-11 09:15:19', N'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine', N'5f2e585f-d994-4ccf-b095-2627164ff9bc', N'', N'', N'', N'', N'', N'', N'.00', N'.00', N'.00', N'.00', N'.00', NULL, NULL, NULL, N'2020-12-11 09:15:19')


SELECT * FROM GAMS_JC_TCJKCONFIG gjt ;

select YWDH,PZBH,PZRQ,BILLID,BILLDEFINE from ZC_YWLX where ISSH = '1';;

SELECT caiwrzrq ,KUAIJPZH ,PUSHMAKE FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE  = 'YSSZ2020000465';



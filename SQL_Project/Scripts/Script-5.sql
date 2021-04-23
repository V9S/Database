CREATE TABLESPACE jlgsnpds LOGGING DATAFILE '/home/database/jlgsnpds.DBF' size 1000m autoextend on next 10m maxsize unlimited;

alter table GAMS2_WORKFLOW_DEFINITION drop column ORG_ID;
alter table GAMS2_WORKFLOW_DEFINITION add ORG_ID clob;
alter table GAMS2_WORKFLOW drop column ORG_ID;
alter table GAMS2_WORKFLOW add ORG_ID clob;
alter table GAMS2_WORKFLOW_CONFIG drop column USINGUNIT;
alter table GAMS2_WORKFLOW_CONFIG add USINGUNIT clob;

SELECT * FROM NP_PASSWORD np ;

UPDATE NP_PASSWORD SET PASSWORD = '51bb9611a9874a4d870631fafe138657';

DELETE FROM GAMS_USER_LASTLOGIN gul ;

SELECT * FROM GAMS_USER_LOGIN_POLICY gulp ;

SELECT * FROM GAMS_SYSTEMOPTION gs ;

DROP TABLE GAMS_SYSTEMOPTION

CREATE TABLE GAMS_SYSTEMOPTION  AS SELECT * FROM NP_ZICHAN2.GAMS_SYSTEMOPTION;

SELECT * FROM GAMS_USER_LOGIN_POLICY gulp ;

SELECT * FROM GAMS_USER_TRYLOGININFO gut ;

DELETE FROM GAMS_USER_LASTLOGIN gul ;


delete from gams2_workflow_opinion where billid = (select id from GAMS_TRANSFER gt  where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table temp as select *  from gams2_workflow_common_task where business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from temp a where a.business_data_id=(select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from temp a where a.business_data_id=(select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

drop table temp;

delete from gams_card_lock where cardobjectid in (select cardid from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'));

delete from gams_bill_annex where billid = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002');

delete from gams_card_change where cardid in (select cardid from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002')) AND biztype = 'com.jiuqi.np.gams2.business.bill.TransferBillDefine';

delete from gams_card_trace  where cardid in (select cardid from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002')) and bizcode = 'ZCJJ2021000002';

UPDATE GAMS_TRANSFER a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000006';

--delete from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002');
--
--delete from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002';

com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine
com.jiuqi.np.gams2.business.bill.AssetinusedBillDefine
com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine
com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine
com.jiuqi.np.gams2.business.bill.HandoverBillDefine
com.jiuqi.np.gams2.business.bill.ImportantAssetChangeBillDefine
com.jiuqi.np.gams2.business.bill.InnerTransferBillDefine
com.jiuqi.np.gams2.business.bill.InnerdispregBillDefine
com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine
com.jiuqi.np.gams2.business.bill.NormalAssetChangeBillDefine
com.jiuqi.np.gams2.business.bill.TransferBillDefine
com.jiuqi.np.gams2.business.bill.WithdrawBillDefine

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid 

SELECT gcc.BIZTYPE  FROM GAMS_CARD_CHANGE gcc GROUP BY gcc.BIZTYPE ;

SELECT * FROM GAMS_JC_DEPOSITARY gjd ;

CREATE TABLE GAMS2_WORKFLOW_CONFIG_0414 AS SELECT * FROM GAMS2_WORKFLOW_CONFIG;

DROP TABLE GAMS2_WORKFLOW_CONFIG;

CREATE TABLE GAMS2_WORKFLOW_CONFIG AS SELECT * FROM GAMS2_WORKFLOW_CONFIG_0414;

DELETE FROM GAMS2_WORKFLOW_CONFIG;

UPDATE NP_PASSWORD SET PASSWORD = 'e10adc3949ba59abbe56e057f20f883e';

SELECT * FROM GAMS_ACCEPTANCEUSE ga ;


DELETE  FROM GAMS_ACCEPTANCEUSE WHERE id IN (SELECT a.id FROM  GAMS_ACCEPTANCEUSE  a  left join gams_card b on a.cardid = b.id left join gams_jc_depositary c on c.id = b.cunfdd where  a.lingyzt= 0 AND a.CARDID NOT IN (SELECT id FROM GAMS_CARD gc));

SELECT * FROM GAMS_CARD gc WHERE gc.ID IN ()

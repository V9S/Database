--处理YSSZ2021000004
delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000004'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000004' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000004' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from delete_temp a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2021000004'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from delete_temp a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2021000004'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000004' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000004'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000004'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000004';

COMMIT;

DROP TABLE delete_temp;

----处理YSSZ2021000006





--删除建账生成的卡片

DELETE FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021');

DELETE FROM GAMS_CARD_TRACE gct WHERE gct.CARDID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021');

DELETE FROM GAMS_CARD_LOCK gcl WHERE gcl.CARDOBJECTID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021');

DELETE FROM GAMS_CARD_USEINFO gcu WHERE gcu.CARDOBJECTID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021');

DELETE FROM GAMS_ANNEX_SECRETKEY WHERE ANNEXID IN (SELECT id FROM GAMS_BILL_ANNEX gba WHERE gba.BILLID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021'));

DELETE FROM GAMS_BILL_ANNEX gba WHERE gba.BILLID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021');

DELETE FROM GAMS_CARD_INVOICE gci WHERE gci.MASTER_ID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021');

DELETE FROM GAMS_CARD_ZYSB gct WHERE gct.BILLCODE = 'TY2021000021';

DELETE  FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2021000021';
---------建账业务删除---------
delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000006'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000006' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000006' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from delete_temp a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2021000006'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from delete_temp a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2021000006'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000006' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000006'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000006'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000006';

COMMIT;

DROP TABLE delete_temp;

-----交接
delete from gams2_workflow_opinion where billid = (select id from gams_handover where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from temp a where a.business_data_id=(select id from gams_handover where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from temp a where a.business_data_id=(select id from gams_handover where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

drop table temp;

delete from gams_card_lock where cardobjectid in (select cardid from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002'));

delete from gams_bill_annex where billid = (select id from gams_handover where bill_code = 'ZCJJ2021000002');

delete from gams_card_change where cardid in (select cardid from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002')) AND biztype = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine';;

delete from gams_card_trace  where cardid in (select cardid from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002')) and bizcode = 'ZCJJ2021000002';

UPDATE gams_handover a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000006';

--delete from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002');
--
--delete from gams_handover where bill_code = 'ZCJJ2021000002';


SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid 


-----部门内交接
delete from gams2_workflow_opinion where billid = (select id from GAMS_TRANSFER gt  where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table temp as select *  from gams2_workflow_common_task where business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from temp a where a.business_data_id=(select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from temp a where a.business_data_id=(select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

drop table temp;

delete from gams_card_lock where cardobjectid in (select cardobjectid from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002'));

delete from gams_bill_annex where billid = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002');

delete from gams_card_change where cardid in (select cardid from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002')) AND biztype = 'com.jiuqi.np.gams2.business.bill.TransferBillDefine';

delete from gams_card_trace  where cardid in (select cardid from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002')) and bizcode = 'ZCJJ2021000002';

UPDATE GAMS_TRANSFER a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000006';

--delete from GAMS_TRANSFER_detail where master_id = (select id from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002');
--
--delete from GAMS_TRANSFER where bill_code = 'ZCJJ2021000002';

 --校内资产处置


delete from gams2_workflow_opinion where billid = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table temp as select *  from gams2_workflow_common_task where business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from temp a where a.business_data_id=(select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from temp a where a.business_data_id=(select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

drop table temp;

delete from gams_card_lock where cardobjectid in (select cardid from GAMS_INNERDISPREG_DETAIL where master_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001'));

delete from gams_bill_annex where billid = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001');

delete from gams_card_trace  where cardid in (select cardid from GAMS_INNERDISPREG_DETAIL where master_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001')) and bizcode = 'XNCZ2020000001';

delete from GAMS_INNERDISPREG_DETAIL where master_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001');

delete from GAMS_INNERDISPREG where bill_code = 'XNCZ2020000001';

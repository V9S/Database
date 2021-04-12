--删除建账生成的卡片



DELETE FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053');

DELETE FROM GAMS_CARD_TRACE gct WHERE gct.CARDID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053');

DELETE FROM GAMS_CARD_LOCK gcl WHERE gcl.CARDOBJECTID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053');

DELETE FROM GAMS_CARD_USEINFO gcu WHERE gcu.CARDOBJECTID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053');

DELETE FROM GAMS_ANNEX_SECRETKEY WHERE ANNEXID IN (SELECT id FROM GAMS_BILL_ANNEX gba WHERE gba.BILLID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053'));

DELETE FROM GAMS_BILL_ANNEX gba WHERE gba.BILLID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053');

DELETE FROM GAMS_CARD_INVOICE gci WHERE gci.MASTER_ID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053');

DELETE FROM GAMS_CARD_ZYSB gct WHERE gct.BILLCODE = 'ZY2020000053';

DELETE  FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053';
---------建账业务删除---------
delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019' and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019' and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

delete from gams2_task_actor where task_id in (select id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ) );

delete from gams_task_trace where billid in (select business_data_id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019' and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ));

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2020000019';

COMMIT;

DROP TABLE delete_temp;

SELECT * FROM ORG o ;53F153D4A0000141D67F094A3E9F4BFB

select * from delete_temp;

SELECT * FROM GAMS2_WORKFLOW_COMMON_TASK gwct ;

delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000003'and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000003' and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000003' and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

delete from gams2_task_actor where task_id in (select id from delete_temp a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2021000003'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ) );

delete from gams_task_trace where billid in (select business_data_id from delete_temp a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2021000003'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000003' and org_id = '53F153D4A0000141D67F094A3E9F4BFB');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000003'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000003'and org_id = '53F153D4A0000141D67F094A3E9F4BFB' ));

drop table delete_temp;

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000003';

commit;

'TY2021000020','TY2021000019','JJ2021000010'


DELETE FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('TY2021000020','TY2021000019','JJ2021000010'));

DELETE FROM GAMS_CARD_TRACE gct WHERE gct.CARDID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('TY2021000020','TY2021000019','JJ2021000010'));

DELETE FROM GAMS_CARD_LOCK gcl WHERE gcl.CARDOBJECTID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('TY2021000020','TY2021000019','JJ2021000010'));

DELETE FROM GAMS_CARD_USEINFO gcu WHERE gcu.CARDOBJECTID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('TY2021000020','TY2021000019','JJ2021000010'));

DELETE FROM GAMS_ANNEX_SECRETKEY WHERE ANNEXID IN (SELECT id FROM GAMS_BILL_ANNEX gba WHERE gba.BILLID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('TY2021000020','TY2021000019','JJ2021000010')));

DELETE FROM GAMS_BILL_ANNEX gba WHERE gba.BILLID = (SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('TY2021000020','TY2021000019','JJ2021000010'));

DELETE FROM GAMS_CARD_INVOICE gci WHERE gci.MASTER_ID = (SELECT id FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('TY2021000020','TY2021000019','JJ2021000010'));

DELETE FROM GAMS_CARD_ZYSB gct WHERE gct.BILLCODE = 'ZY2020000053';

DELETE  FROM GAMS_CARD gc WHERE gc.BILLCODE = 'ZY2020000053';
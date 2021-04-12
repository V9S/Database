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
delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000019'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2020000019';

COMMIT;

DROP TABLE delete_temp;

SELECT * FROM ORG o ;
--456E9EA9E0000001E75604D5761203C3

SELECT A.constraint_name, A.table_name, b.constraint_name
  FROM user_constraints A, user_constraints b
 WHERE A.constraint_type = 'R'
   AND b.constraint_type = 'P'
   AND A.r_constraint_name = b.constraint_name
   AND A.constraint_name = UPPER('FK2XBEYCFSEEYCSE9YOR2SCP4OP');
   
  SELECT * FROM GAMS_ANNEX_SECRETKEY;
  
 SELECT * FROM GAMS_BILL_ANNEX gba WHERE gba.BILLID = 'D3C1BFC752754669B8AAE938D247F682';
 

delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_task_actor where task_id in (select id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ) );

delete from gams_task_trace where billid in (select business_data_id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ));

drop table delete_temp;

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2020000239';

commit;
---------建账业务删除---------
delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_task_actor where task_id in (select id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ) );

delete from gams_task_trace where billid in (select business_data_id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ));


drop table delete_temp;


delete from gams_bill_annex where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000239');


--领用信息
DELETE FROM GAMS_INSPECTIONENTRY_LINGYINFO gil WHERE gil.MASTER_ID  in (SELECT id  FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.MASTER_ID = (SELECT id FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000239'));
--出厂号
DELETE FROM GAMS_INSPECTIONENTRY_CHUCH gic WHERE MASTER_ID in (SELECT id  FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.MASTER_ID = (SELECT id FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000239'));
--表体
DELETE FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.MASTER_ID = (SELECT id FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000239');
--表头
DELETE FROM gams_inspectionentry where bill_code = 'YSSZ2020000239';


UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2020000239';

COMMIT;

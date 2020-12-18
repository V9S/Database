UPDATE
	GAMS_INSPECTIONENTRY biz
SET
	biz.WORKFLOW_STATE = 2 ,
	biz.BILL_STATE = 2 ,
	biz.pushmake = 0 ,
	biz.DATASOURCE = NULL ,
	biz.caiwrzrq = NULL ,
	biz.kuaijpzh = ''
WHERE
	BILL_CODE = 'YSSZ2019000152';

		
SELECT * FROM GAMS_INSPECTIONENTRY gi ;


select * from gams_jc_cwparam WHERE id = '8231A713A404434CA0E57BB93951596A';

SELECT * FROM TC_TEMP WHERE CWHSTSDM = '11';

---------½¨ÕËÒµÎñÉ¾³ý---------
delete from gams2_workflow_opinion where billid = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000537'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000537' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000537' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_task_actor where task_id in (select id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000537'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ) );

delete from gams_task_trace where billid in (select business_data_id from gams2_workflow_common_task a where a.business_data_id=(select id from gams_inspectionentry where bill_code = 'YSSZ2020000537'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000537' and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000537'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2020000537'and org_id = '6E35BC1F80000001F6D62BD49F8EC9CC' ));

DROP TABLE delete_temp;
UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2020000537';


delete from gams_card_lock;
delete from gams2_workflow_common_task;
delete from gams2_task_actor;

delete from gams2_workflow_bus_process;
delete from gams_task_trace;
delete from gams2_task;
delete from gams2_workflow_task;
delete from gams2_workflow_workitem;
delete from gams2_workflow_process_ins;
delete from gams2_workflow;
delete from gams2_workflow_definition;
delete from gams2_workflow_opinion_detail;
delete from gams2_workflow_opinion;
delete from gams2_workflow_overtimeremind;
SELECT * FROM GAMS2_WORKFLOW_CONFIG gwc ;

SELECT * FROM gams2_workflow_definition;

UPDATE GAMS_CARD SET RUZXS = '37B5592B60000021761FD48A8304C546';

SELECT RUZXS FROM GAMS_CARD gc GROUP BY RUZXS ;

SELECT * FROM gams_jc_
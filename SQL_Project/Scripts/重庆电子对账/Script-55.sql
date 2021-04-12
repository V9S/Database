delete from gams2_workflow_opinion where billid = '456E9ADEC0000001FE7C6554025F7E5E';

SELECT * FROM gams2_workflow_opinion WHERE billid ='456E9ADEC0000001FE7C6554025F7E5E';

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = '456E9ADEC0000001FE7C6554025F7E5E';

delete from gams2_workflow_common_task where business_data_id = '2A30CF14D19743DBB1BFE7E02A62D375';

delete from gams2_task_actor where task_id in (select id from delete_temp a where a.business_data_id='2A30CF14D19743DBB1BFE7E02A62D375');

delete from gams_task_trace where billid in (select business_data_id from gams2_workflow_common_task a where a.business_data_id='456E9ADEC0000001FE7C6554025F7E5E' ;

delete from gams2_workflow_bus_process where business_data_id = '456E9ADEC0000001FE7C6554025F7E5E';

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = '456E9ADEC0000001FE7C6554025F7E5E';

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = '456E9ADEC0000001FE7C6554025F7E5E';

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000004';

COMMIT;

DROP TABLE delete_temp;

SELECT * from gams2_workflow_common_task where business_data_id = '2A30CF14D19743DBB1BFE7E02A62D375';
SELECT * FROM gams2_workflow_process_ins gi ;

DELETE FROM GAMS_INSPECTIONENTRY_ gi ;
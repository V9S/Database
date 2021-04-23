SELECT * FROM GAMS_INSPECTIONENTRY gi ;

--处理YSSZ2021000004
delete from gams2_workflow_opinion where billid = 'B495B07DC07F4736BC2CE37BD5021E50';

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

=======================================
--处理YSSZ2021000004
SELECT * FROM  gams2_workflow_opinion where billid = 'B495B07DC07F4736BC2CE37BD5021E50';

create table delete_temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_inspectionentry where bill_code = 'YSSZ2021000004' and org_id = '456E9EA9E0000001E75604D5761203C3');

SELECT * FROM gams2_workflow_common_task where business_data_id = 'B495B07DC07F4736BC2CE37BD5021E50';

SELECT * FROM gams2_task_actor where task_id in (select id from delete_temp a where a.business_data_id='B495B07DC07F4736BC2CE37BD5021E50');

SELECT * FROM gams_task_trace where billid in (select business_data_id from delete_temp a where a.business_data_id='B495B07DC07F4736BC2CE37BD5021E50' );
DELETE FROM gams2_workflow_bus_process where business_data_id = 'B495B07DC07F4736BC2CE37BD5021E50';

SELECT * FROM gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = 'B495B07DC07F4736BC2CE37BD5021E50');

SELECT * FROM gams2_workflow_process_ins where id in (select workflow_process_ins_id from delete_temp a where a.business_data_id = 'B495B07DC07F4736BC2CE37BD5021E50');

UPDATE GAMS_INSPECTIONENTRY a SET a.BILL_STATE = 0 ,  a.WORKFLOW_STATE = 0 WHERE a.BILL_CODE = 'YSSZ2021000004';

COMMIT;

SELECT * FROM GAMS_JC_PERSONNEL gjp WHERE gjp.ID = '938F09077AE846D083CF167690D20F0C';
DROP TABLE delete_temp;
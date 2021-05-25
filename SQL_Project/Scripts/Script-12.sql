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

SELECT * FROM gams_handover;

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2021000002'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

DELETE FROM gams2_workflow_common_task WHERE business_data_id = '3F40D3BB20D248B58129D352E825BB3D';
DELETE from gams2_workflow_bus_process where business_data_id = '3F40D3BB20D248B58129D352E825BB3D';

DELETE FROM gams2_workflow_common_task WHERE business_data_id = '3F40D3BB20D248B58129D352E825BB3D';
DELETE FROM gams2_workflow_bus_process where business_data_id = '182042AD988E4065B2A7A24D19FB95D0';



--交接
delete from gams2_workflow_opinion where billid = (select id from gams_handover where bill_code = 'ZCJJ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3');

create table temp as select *  from gams2_workflow_common_task where business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_common_task where business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_task_actor where task_id in (select id from temp a where a.business_data_id=(select id from gams_handover where bill_code = 'ZCJJ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams_task_trace where billid in (select business_data_id from temp a where a.business_data_id=(select id from gams_handover where bill_code = 'ZCJJ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001' and org_id = '456E9EA9E0000001E75604D5761203C3');

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001'and org_id = '456E9EA9E0000001E75604D5761203C3' ));

drop table temp;

delete from gams_card_lock where cardobjectid in (select cardid from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001'));

delete from gams_bill_annex where billid = (select id from gams_handover where bill_code = 'ZCJJ2020000001');

delete from gams_card_change where cardid in (select cardid from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001')) AND BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine';

delete from gams_card_trace  where cardid in (select cardid from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001')) and bizcode = 'ZCJJ2020000001';

delete from gams_handover_detail where master_id = (select id from gams_handover where bill_code = 'ZCJJ2020000001');

delete from gams_handover where bill_code = 'ZCJJ2020000001';

SELECT *  FROM gams_card_trace gcc GROUP BY  gcc.BIZTYPE ;

--校内资产处置
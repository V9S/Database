SELECT
	ID
FROM
	gams_card c,
	(
	SELECT
		c2.objectid AS objectid,
		max(c2.yewxlh) AS yewxlh
	FROM
		gams_card c2
	WHERE
		c2.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND c2.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		c2.objectid) c3
WHERE
	c.yewxlh = c3.yewxlh
	AND c.objectid = c3.objectid
	AND c.auditstate = 2
	AND c.cardstate LIKE '0%'
	AND c.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND c.SORTGB = '3711F12FC000000192E940E7FAE32E55';--29459
	
	
delete from gams2_workflow_opinion where billid = '44B4BD0CEBAB4FC783CCD8153C606127';

create table temp as select *  from gams2_workflow_common_task where business_data_id = '44B4BD0CEBAB4FC783CCD8153C606127';

delete from gams2_workflow_common_task where business_data_id = '44B4BD0CEBAB4FC783CCD8153C606127';

delete from gams2_task_actor where task_id in (select id from gams2_workflow_common_task a where a.business_data_id='44B4BD0CEBAB4FC783CCD8153C606127' );

delete from gams_task_trace where billid in (select business_data_id from gams2_workflow_common_task a where a.business_data_id='44B4BD0CEBAB4FC783CCD8153C606127' );

delete from gams2_workflow_bus_process where business_data_id = '44B4BD0CEBAB4FC783CCD8153C606127';

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from temp a where a.business_data_id = '44B4BD0CEBAB4FC783CCD8153C606127');

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = '44B4BD0CEBAB4FC783CCD8153C606127');

drop table temp;
select * from gams_transfer where bill_code = 'ZCJJ2021000023'and org_id = '456E9EA9E0000001E75604D5761203C3';



select *  from gams2_workflow_common_task where business_data_id = '44B4BD0CEBAB4FC783CCD8153C606127';
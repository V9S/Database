 update GAMS_ASSETUNITACCPERREC set  accper_month = ''  where accper_type = 2;
 
SELECT *FROM GAMS_ASSETUNITACCPERREC;

SELECT printnum FROM GAMS_CARD gc WHERE PRINTNUM IS NOT NULL ;

SELECT gc.printnum,gc.* FROM GAMS_CARD gc WHERE BILLCODE = 'TY2020010959';

UPDATE gams_card SET  printnum = NULL ;

SELECT * FROM GAMS_SYSTEMOPTION gs ;

INSERT INTO GAMS_SYSTEMOPTION VALUES (sys_guid(),'__default_tenant__','cardPrintLimit',2,null,null,null);


define query cardQuery() 
begin 
select a.id,  assetClass.detail_table as billdefine, a.billcode, a.zicmc, a.jiaz, p.name as shiyr, dept.name as shiybm, depo.name as cunfdd, to_char(a.qudrq,'yyyy-MM-dd') as querq, a.shul, assetsort_ind.title as hangydl,a.printnum  
from gams_card as a 
left join gams_jc_assetclass as assetClass on a.zicfl = assetClass.id 
left join gams_jc_personnel as p on a.shiyr = p.id 
left join gams_jc_department as dept on a.shiybm = dept.id 
left join gams_jc_depositary as depo on a.cunfdd = depo.id 
left join gams_jc_assetsort_ind as assetsort_ind on assetsort_ind.id = a.hangydl 
where a.shixrq>getdate() 
and a.cardstate like '0%' 
and a.islastest = 1 
and 
upper(a.billcode) like '%TY2020010955%'
or a.zicmc like '%TY2020010955%'
or p.name like '%TY2020010955%'
or dept.name like '%TY2020010955%'
or depo.name like '%TY2020010955%'
) 
order by a.jizrq desc, a.billcode desc 
end 

SELECT * FROM ORG o ;

SELECT * FROM GAMS_JC_DEPOSITARY gcg ;

DELETE  FROM GAMS_JC_DEPOSITARY WHERE MEMO = 'µº»ÎÕ£”√';

SELECT SHIJ_SHIYR FROM GAMS_INSPECTIONENTRY_DETAIL gi ;

SELECT SHIJ_SHIYR FROM GAMS_INSPECTIONENTRY_LINGYINFO gil ;

SELECT FANGJH FROM GAMS_CARD_TYSB gc WHERE gc.BILLCODE = 'TY2021000001';

SELECT FANGJH,FANGJH_NEW FROM GAMS_ASSETCHANGE_DETAIL gad ;

	UPDATE GAMS_CARD SET zicgs = (SELECT id FROM GAMS_JC_ZICGS gjz);
	
SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = 'YQ2015004952';

SELECT * FROM GAMS_TRANSFER gt ;


SELECT islastest,YEWXLH FROM GAMS_CARD gc WHERE gc.BILLCODE = 'FW2020000001';

SELECT * FROM GAMS_INNERDISPREG gi WHERE gi.BILL_CODE = 'XNCZ202100000521';

SELECT * FROM GAMS_INNERDISPREG_DETAIL gid WHERE gid.MASTER_ID = (SELECT ID FROM GAMS_INNERDISPREG gi WHERE gi.BILL_CODE = 'XNCZ202100000521');


delete from gams2_workflow_opinion where billid = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521');

create table temp as select *  from gams2_workflow_common_task where business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521' );

delete from gams2_workflow_common_task where business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521');

delete from gams2_task_actor where task_id in (select id from temp a where a.business_data_id=(select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521' ) );

delete from gams_task_trace where billid in (select business_data_id from temp a where a.business_data_id=(select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521' ) );

delete from gams2_workflow_bus_process where business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521' );

delete from gams2_workflow_workitem where workflow_process_ins_id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521' ));

delete from gams2_workflow_process_ins where id in (select workflow_process_ins_id from temp a where a.business_data_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521' ));

drop table temp;

delete from gams_card_lock where cardobjectid in (select cardid from GAMS_INNERDISPREG_DETAIL where master_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521'));

delete from gams_bill_annex where billid = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521');

delete from gams_card_trace  where cardid in (select cardid from GAMS_INNERDISPREG_DETAIL where master_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521')) and bizcode = 'XNCZ202100000521';

delete from gams_card_change where cardid in (select cardid from GAMS_INNERDISPREG_DETAIL where master_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521')) AND bizcode = 'XNCZ202100000521';


delete from GAMS_INNERDISPREG_DETAIL where master_id = (select id from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521');

delete from GAMS_INNERDISPREG where bill_code = 'XNCZ202100000521';

SELECT newfangjh FROM GAMS_INVENTORY_I gih WHERE NEWFANGJH  = '555';

SELECT ID ,CREATE_TIME FROM GAMS_ASSETINUSED ga WHERE BILL_STATE =0 AND WORKFLOW_STATE = 0 ;

SELECT * FROM GAMS_ASSETINUSED_DETAIL gad WHERE gad.MASTER_ID = ''

SELECT OBJECTID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020003180';
SELECT * FROM GAMS_CARD_LOCK gcl WHERE gcl.CARDOBJECTID = '747075CA0000026176FA811C4BBF96AB';
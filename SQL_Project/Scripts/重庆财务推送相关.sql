insert
	into
	ZC_XX(YWDH, BH, RZRQ, JSR, BMMC, BMBH, XMBH, ISZCJZ, ISZT, ZJFF, ISDL, ZJFS, INPUTTIME, gdzcmc, dj, synx, zclbdm1, zclbmxdm, gdzcdm, sl, zclbmxdm1, je, zclbdm)
values('ZYBD2020000023', '1', '20191226', '��ά˼', '�������������', '0026007', '011115',
'1', '0', 'P', '0', '11', '2020-11-03 20:27:44','΢��̨ʽ���Ӽ����','','0','05','2010104','TY2019000167','1','0501010506','5200.00','02');

DELETE FROM GAMS_INTERFACE_LOG;

SELECT * FROM GAMS_INTERFACE_LOG gil ;

SELECT * FROM 
select * from gams_jc_cwparam_bak;
INSERT INTO gams_jc_cwparam  select * from gams_jc_cwparam_bak WHERE name = 'ZCGR_PUSH';
select * from gams_jc_cwparam WHERE title LIKE '%�˿�%';

SELECT * FROM GAMS_WITHDRAW gw WHERE gw.BILL_CODE = 'TKSQ2020000011';

SELECT * FROM GAMS_WITHDRAW_DETAIL gwd WHERE gwd.MASTER_ID = (SELECT ID FROM GAMS_WITHDRAW gw WHERE gw.BILL_CODE = 'TKSQ2020000011');

DELETE  FROM GAMS_WITHDRAW_DETAIL gwd WHERE gwd.id = 'FF2089F19EF34C5CB957E189C22499DD';
UPDATE GAMS_WITHDRAW_DETAIL gwd SET gwd.MASTER_ID = '18A4C42AAABA43DD8CC9AB89B9C1250E' WHERE gwd.id = 'FF2089F19EF34C5CB957E189C22499DD';
SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid 


INSERT
	INTO
	ZC_YWLX(INPUTTIME, MODIFYTIME, BILLDEFINE, BILLID, cwsm, cwshr, pzbh, jsr, cwzdzt, issh, bmmc, ywlx, pzlxbh, cwclrq, ywdh, ztdm, ywms, pzrq)
VALUES(?,?,?,?,'','','','����','',0,'�ʲ������','42','','','TKSQ2020000014','','�����ʲ������˿�','');

INSERT
	INTO
	ZC_XX(YWDH, BH, RZRQ, JSR, BMMC, BMBH, XMBH, ISZCJZ, ISZT, ZJFF, ISDL, ZJFS, INPUTTIME, gdzcmc, gdzcdm, xmbh, dj, synx, sl, je, zclbdm, zclbdm1)
VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) 
{cwsm = ,
cwshr = ,
pzbh = ,
jsr = ����,
cwzdzt = ,
issh = 0,
bmmc = �ʲ������,
ywlx = 42,
pzlxbh = ,
cwclrq = ,
ywdh = TKSQ2020000014,
ztdm = ,
ywms = �����ʲ������˿�,
pzrq = }

GRANT ALL PRIVILEGES ON *.* TO 'CQJQ'@'%' IDENTIFIED BY 'workflow' WITH GRANT OPTION; 
 
FLUSH   PRIVILEGES; 


SYS_C00151517


select
	cu.*
from
	user_cons_columns cu,
	user_constraints au
where
	cu.constraint_name = au.constraint_name
	and au.constraint_type = 'P'
	and au.constraint_name = 'SYS_C00151517';

SELECT * FROM GAMS_REIMBURSE_INVOICE gri 

SELECT *FROM BIZ_JY00_GAMS_JC_JIAOYUSAGE bjgjj 

SELECT * FROM gams_card WHERE BILLCODE = 'JJ2020000560';

SELECT * FROM gams_jc_assetclass_ind WHERE id = (SELECT  FROM gams_card WHERE BILLCODE = 'JJ2020000560'); 

CREATE TABLE gams_jc_cwparam_bak AS SELECT * FROM gams_jc_cwparam;


INSERT
	INTO
	ZC_XX(YWDH, BH, RZRQ, JSR, BMMC, BMBH, XMBH, ISZCJZ, ISZT, ZJFF, ISDL, ZJFS, INPUTTIME, gdzcmc, gdzcdm, dj, synx, sl, je, zclbdm, zclbdm1)
VALUES('TKSQ2020000011', '1', '20191231', '������', '�˹������������ѧԺѧ�ܿ�', '0026006', '03181802', '1', '0', 'P', '0', '42', '2020-11-04 19:05:45', '�칫��', 'JJ2020000560', '600.00', 0, '1', '600.00', '130102', '1');

select   request_session_id   spid,OBJECT_NAME(resource_associated_entity_id) tableName   
from   sys.dm_tran_locks where resource_type='OBJECT'

declare @spid  int 
Set @spid  = 56 --�������
declare @sql varchar(1000)
set @sql='kill '+cast(@spid  as varchar)
exec(@sql)

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid 
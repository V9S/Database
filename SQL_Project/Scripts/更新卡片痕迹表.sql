UPDATE GAMS_INSPECTIONENTRY_DETAIL a SET a.LINGYZT = (SELECT ga.LINGYZT FROM GAMS_ACCEPTANCEUSE ga LEFT JOIN GAMS_CARD gc ON ga.CARDID = gc.ID WHERE ga.CARDID = a.CARDID )

SELECT a.* FROM GAMS_INSPECTIONENTRY_DETAIL a GROUP BY a.CARDID ;

SELECT gc.rebillid FROM GAMS_CARD gc GROUP BY gc.REBILLID ;

SELECT a.* FROM GAMS_INSPECTIONENTRY_DETAIL a WHERE a.id IN (SELECT gc.REBILLID FROM GAMS_CARD gc );

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid

SELECT ID FROM GAMS_INSPECTIONENTRY gi WHERE gi.ORG_ID = '6E35BC1F80000001F6D62BD49F8EC9CC';

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.MASTER_ID IN (SELECT ID FROM GAMS_INSPECTIONENTRY gi WHERE gi.ORG_ID = '6E35BC1F80000001F6D62BD49F8EC9CC'); --1062

GAMS_INSPECTIONENTRY_DETAIL -- gams_card -- GAMS_ACCEPTANCEUSE

SELECT gc.REBILLID FROM GAMS_ACCEPTANCEUSE ga LEFT JOIN GAMS_CARD gc ON ga.CARDID = gc.ID GROUP BY gc.REBILLID ;

SELECT gid.LINGYZT FROM GAMS_INSPECTIONENTRY_DETAIL gid  GROUP BY gid.LINGYZT ;

UPDATE GAMS_INSPECTIONENTRY_DETAIL a SET a.LINGYZT = (SELECT ga.LINGYZT FROM GAMS_ACCEPTANCEUSE ga,GAMS_CARD gc WHERE ga.CARDID = gc.id AND a.id = gc.REBILLID )

SELECT * FROM  GAMS_INSPECTIONENTRY_DETAIL gid LEFT JOIN (SELECT ga.id,ga.LINGYZT ,gc.REBILLID FROM GAMS_ACCEPTANCEUSE ga,GAMS_CARD gc WHERE ga.CARDID = gc.id ) b ON gid.CARDID  = b.REBILLID

card 表的REBILLID = GAMS_INSPECTIONENTRY_DETAIL的id

GAMS_ACCEPTANCEUSE表的cardid = card表的id

UPDATE GAMS_INSPECTIONENTRY_DETAIL a SET a.LINGYZT = (SELECT ga.LINGYZT FROM GAMS_ACCEPTANCEUSE ga where ga.subid = (select id  from Gams_Inspectionentry_Detail))

SELECT gba.ISINVALID FROM GAMS_BILL_ANNEX gba GROUP BY ISINVALID;

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = 'CL1992000001';

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = (SELECT ID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'CL1992000001');

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = (SELECT ID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'FW2020000016');

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE id = '6ED57E94000000C112FA65309F426E7D';

SELECT * FROM GAMS_CARD_TRACE gct WHERE gct.CARDID = (SELECT ID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'CL1992000001');

SELECT * FROM GAMS_CARD_TRACE gct WHERE gct.CARDID = (SELECT ID FROM GAMS_CARD gc WHERE gc.BILLCODE = 'FW2020000016');

UPDATE GAMS_CARD_TRACE a SET a.BIZTYPE = 'com.jiuqi.np.gams2.core.gams_card_tysb' WHERE a.BIZTYPE = 'CL';

SELECT * FROM GAMS_CARD_TRACE gct WHERE GCT.BIZTYPE = 'CL';

SELECT COUNT(1), gct.BIZTYPE,bizdes FROM GAMS_CARD_TRACE gct GROUP BY gct.BIZTYPE,gct.bizdes ;

SELECT COUNT(1), gct.BIZTYPE,gct.bizdes FROM GAMS_CARD_TRACE_BAK0821 gct GROUP BY gct.BIZTYPE,gct.bizdes;

SELECT * FROM GAMS_CARD_TRACE gct WHERE gct.BIZTYPE = 'WXZC_ZZQ'

SELECT * FROM GAMS_CARD gc WHERE gc.ID = '6ED57F6880000001AB6E83FAB472A552';
--1、备份痕迹表
CREATE TABLE GAMS_CARD_TRACE_bak0821 AS SELECT * FROM GAMS_CARD_TRACE gct ;
--2、执行sql
UPDATE GAMS_CARD_TRACE a SET a.BIZTYPE = (case
                             when a.BIZTYPE = 'TSDA' then 'com.jiuqi.np.gams2.core.gams_card_tsda'
                             when a.BIZTYPE = 'WXZC_RJ' then 'com.jiuqi.np.gams2.core.gams_card_wxzc_rj'
                             when a.BIZTYPE = 'CL' then 'com.jiuqi.np.gams2.core.gams_card_cl'
                             when a.BIZTYPE = 'TYSB' then 'com.jiuqi.np.gams2.core.gams_card_tysb'
                             when a.BIZTYPE = 'JJYJZJ' then 'com.jiuqi.np.gams2.core.gams_card_jjyjzj'
                             when a.BIZTYPE = 'GZW' then 'com.jiuqi.np.gams2.core.gams_card_gzw'
                             when a.BIZTYPE = 'WXZC_TDSYQ' then 'com.jiuqi.np.gams2.core.gams_card_wxzc_tdsyq'
                             when a.BIZTYPE = 'WXZC_ZZQ' then 'com.jiuqi.np.gams2.core.gams_card_wxzc_zzq'
                             when a.BIZTYPE = 'WWHCLP' then 'com.jiuqi.np.gams2.core.gams_card_wwhclp'
                             when a.BIZTYPE = 'FW' then 'com.jiuqi.np.gams2.core.gams_card_fw'
                             when a.BIZTYPE = 'WXZC_ZLQ' then 'com.jiuqi.np.gams2.core.gams_card_wxzc_zlq' end) WHERE a.BIZDES = '新增';
                            
SELECT * FROM GAMS_CARD gc WHERE gc.billcode = 'TY2020000654'

CREATE TABLE GAMS_CARD_TRACE_bak0821 AS SELECT * FROM GAMS_CARD_TRACE gct ;

CREATE TABLE GAMS_CARD_TRACE AS SELECT * FROM GAMS_CARD_TRACE_BAK0821 gct ;

DROP table GAMS_CARD_TRACE ;

SELECT * FROM gams_jc_entryform ;

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000193';

SELECT COUNT(1), gi.ruzxs FROM GAMS_INSPECTIONENTRY gi GROUP BY gi.ruzxs ;

SELECT id, gi.BILL_CODE FROM GAMS_INSPECTIONENTRY gi WHERE  gi.PUSHMAKE IS NOT NULL ;


DELETE FROM GAMS_INTERFACE_LOG;

SELECT * FROM GAMS_INTERFACE_LOG gil ;

SELECT A.constraint_name, A.table_name, b.constraint_name
  FROM user_constraints A, user_constraints b
 WHERE A.constraint_type = 'R'
   AND b.constraint_type = 'P'
   AND A.r_constraint_name = b.constraint_name
   AND A.constraint_name = UPPER('FKFXXPF2YTL7XT8QMPRC5DHHA8M')
   
UPDATE GAMS_INSPECTIONENTRY a SET a.RUZXS = (SELECT id FROM GAMS_JC_ENTRYFORM gje WHERE gje.NAME = '已入账'),a.PUSHMAKE = 1 WHERE a.BILL_CODE = 'YSSZ2019000303';

SELECT BILL_CODE,PUSHMAKE,kuaijpzh,ruzxs,caiwrzrq,paymenturl,datasource FROM GAMS_INSPECTIONENTRY gi WHERE gi.PUSHMAKE = 1 AND gi.ORG_ID = '6E35BC1F80000001F6D62BD49F8EC9CC';

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2019000008' AND gi.ORG_ID = '6E35BC1F80000001F6D62BD49F8EC9CC';

SELECT * FROM GAMS_JC_ENTRYFORM gje ;

SELECT COUNT(1), datasource FROM GAMS_INSPECTIONENTRY gi GROUP BY datasource


SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2019000207' 

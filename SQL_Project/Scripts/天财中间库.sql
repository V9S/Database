SELECT * FROM GAMS_INTERFACE_LOG gil ; 

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.PUSHMAKE = 0;

UPDATE GAMS_INSPECTIONENTRY SET PUSHMAKE = 0;

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.MASTER_ID = (SELECT id FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE= 'YSSZ2020000206')

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.BILL_CODE IS NOT NULL ;

SELECT gi.KUAIJPZH,gi.CAIWRZRQ FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE= 'YSSZ2020000206'

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000986' ;

select * from gams_jc_cwparam


SELECT gid.SHIYBM ,gi.SHENQBM FROM GAMS_INSPECTIONENTRY_DETAIL gid LEFT JOIN GAMS_INSPECTIONENTRY gi ON gi.id = gid.MASTER_ID 

SELECT code FROM GAMS_JC_FUNDNUMBER gjf  GROUP BY CODE HAVING COUNT(CODE) > 1 ; 

SELECT * FROM GAMS_JC_FUNDNUMBER gjf WHERE GJF.code = '02106208';

SELECT * FROM GAMS_INSPECTIONENTRY gi 

UPDATE GAMS_INSPECTIONENTRY SET KUAIJPZH = NULL ,CAIWRZRQ = NULL ;

SELECT * FROM gams_sys_log;

DELETE FROM GAMS_SYS_LOG gil ;

DELETE FROM GAMS_USER_LASTLOGIN gul ;

ALTER TABLE GAMS_SYS_LOG ADD os varchar(30 char)  NULL;requestUrl


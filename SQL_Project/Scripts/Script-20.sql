SELECT * FROM NP_PASSWORD np WHERE np.USERNAME  = '1987000067';

SELECT * FROM NP_USER nu WHERE nu.NICKNAME = '����';

UPDATE NP_PASSWORD SET PASSWORD = 'e10adc3949ba59abbe56e057f20f883e';

SELECT * FROM GAMS_ASSETCHANGE ga WHERE ga.CREATE_TIME > TO_DATE('2020-10-21','YYYY-MM-DD') ;

SELECT ZICMC ,ZICMC_NEW ,CARDID FROM GAMS_ASSETCHANGE_DETAIL gad WHERE gad.MASTER_ID = 'D927055C3B7046069BA05E9669B11C0D';

SELECT gc.ZICMC FROM GAMS_CARD gc WHERE gc.id = '68A83000000007213B839BD58AC06040';

SELECT SHIYZK FROM GAMS_CARD gc 

SELECT * FROM gams_jc_deprecmethod;

SELECT * FROM BIZ_JY00_GAMS_JC_COUNTRY bjgjc WHERE bjgjc.title = '�й�';

SELECT BEIZ FROM GAMS_CARD gc 

SELECT * FROM gams_jc_repairreason;

SELECT * FROM GAMS_ASSETCHANGE_DETAIL gad WHERE gad.MASTER_ID  = (SELECT ID FROM GAMS_ASSETCHANGE ga WHERE BILL_CODE = 'PTBD2020000042')

SELECT *FROM GAMS_CARD gc WHERE gc.BILLCODE = '99739601';

SELECT * FROM GAMS_REIMBURSE gr 

SELECT *  FROM ALL_CONSTRAINTS a WHERE  a.CONSTRAINT_NAME like '%SYS_C00151517%' OR a.R_CONSTRAINT_NAME = 'SYS_C00151517';

SELECT * FROM GAMS_REIMBURSE gr WHERE gr.BILL_CODE = 'DJJZ202000012373';

SELECT * FROM NP_PASSWORD np WHERE np.USERNAME = '100016';

UPDATE NP_PASSWORD SET PASSWORD = '$2a$10$Czl7GVERdyM0VhY/lxRU6OgTUN6aychGpIBrwgK841m13kuR1gvZC';
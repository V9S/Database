SELECT PARENTNAME FROM GAMS_JC_DEPOSITARY gjd WHERE gjd.CODE = '001002008801' OR gjd.CODE = '000';

SELECT * FROM GAMS_JC_DEPOSITARY gjd WHERE gjd.ID IN (SELECT PARENT FROM GAMS_JC_DEPOSITARY gjd WHERE gjd.CODE = '001002008801' OR gjd.CODE = '000');

select * from gams_jc_cwparam WHERE title LIKE '%�˿�%';


SELECT * FROM gams_withdraw_detail;

SELECT DANJ_NEW FROM GAMS_ASSETCHANGE_DETAIL gad  WHERE gad.MASTER_ID = (SELECT ID FROM GAMS_ASSETCHANGE ga WHERE GA.BILL_CODE = 'ZYBD2020000029');
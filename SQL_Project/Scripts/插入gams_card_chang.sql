SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID in (SELECT ID  FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('WX2020000108','TY2017003873','TY2017004218')) ;

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE IN ('WX2020000108','TY2017003873','TY2017004218');

INSERT INTO GAMS_CARD_CHANGE 
COALESCE(sum(change.jiaz_z), 0) - COALESCE(sum(change.jiaz_j), 0) AS qimje
SELECT * FROM GAMS_CARD_CHANGE WHERE  BIZTYPE = 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine';
--����GAMS_CARD_CHANGE��
INSERT
	INTO
	GAMS_CARD_CHANGE
SELECT
	SYS_GUID(),
	gc.ID ,
	gc.OBJECTID ,
	gi.ID ,
	gi.BILLDEFINE ,
	gi.CREATE_TIME ,
	gc.ORGUNIT ,
	gc.JIZRQ ,
	gc.ZICFL ,
	gc.SHIYBM ,
	gc.SHIYZK ,
	gc.SHIYR ,
	gc.QUDFS ,
	NULL,
	NULL,
	NULL,
	gc.JIAZLX ,
	NULL,
	gc.CUNFDD ,
	gc.JIAZ ,
	gc.jiaz,
	NULL,
	gc.shul,
	gc.SHUL ,
	NULL,
	gc.MIANJ ,
	gc.MIANJ ,
	NULL,
	NULL,
	gc.JIAOYSYFX ,
	gc.HANGYFL ,
	gc.SORTGB ,
	gi.BILL_CODE ,
	gc.JIZQJ ,
	gc.HANGYDL ,
	'strict',
	'account_entry',
	gc.ZICFL ,
	gc.SORTGB ,
	gc.HANGYFL ,
	gc.HANGYDL ,
	gc.SHIYBM ,
	gc.SHIYR ,
	gc.CUNFDD ,
	gc.JIAOYSYFX ,
	gc.SHIYZK ,
	gc.QUDFS ,
	NULL,
	NULL,
	NULL,
	NULL,
	gc.JIAZLX ,
	gc.JINGFKM ,
	gi.CREATE_TIME ,
	0,
	0,
	NULL,
	0,
	0,
	NULL,
	0,
	0,
	NULL,
	0,
	0,
	NULL,
	gc.HANGYFLNEW ,
	1,
	'6050620',
	gc.CAIWJZRQ ,
	gc.FINALBILLID
FROM
	GAMS_CARD gc ,
	GAMS_INSPECTIONENTRY gi
WHERE
	gc.BILLCODE = 'WX2020000108'
	AND gi.BILL_CODE = 'YSSZ2020000416';
	

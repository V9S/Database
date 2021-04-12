SELECT
--*
count(1)
FROM
	gams_jc_assetsort_gb guobdl
LEFT JOIN (
CREATE TABLE ty AS 
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
		AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	) benqxz ON
	benqxz.sortgb = guobdl.id
LEFT JOIN (
INSERT INTO ty 
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
		AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	) benqzj ON
	benqzj.sortgb = guobdl.id
LEFT JOIN (
INSERT INTO ty 
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
		AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	) chaifxz ON
	chaifxz.sortgb = guobdl.id
LEFT JOIN (
INSERT INTO ty 
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
		AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	) fenlbdxz ON
	fenlbdxz.sortgb = guobdl.id
LEFT JOIN (
INSERT INTO ty 
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
		AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	) benntk ON
	benntk.sortgb = guobdl.id
LEFT JOIN (
INSERT INTO ty 
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
		AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	) benqbf ON
	benqbf.sortgb = guobdl.id
LEFT JOIN (
INSERT INTO ty 
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
		AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	) benqtk ON
	benqtk.sortgb = guobdl.id
WHERE
	guobdl.id = '3711F12FC000000192E940E7FAE32E55';
	

SELECT * FROM ty ;

SELECT * FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty);
		               
SELECT * FROM czjsty WHERE cardobjectid NOT IN (SELECT CARDOBJECTID FROM zcjsty);
		               
SELECT * FROM zcjsty WHERE cardid NOT IN (SELECT cardrecid FROM czjsty);

SELECT nature FROM zcjsty WHERE id NOT IN (SELECT id FROM ty);

SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = '6F2461770000004176C32421C4FF3740';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = '6F2461770000004176C32421C4FF3740';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = '6F24617700000101AFD731E3AE9C69E4';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.BIZTYPE IS NULL AND gcc.id IN (SELECT ID FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE);
--1、
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc SET gcc.BIZTYPE = (SELECT BIZTYPE FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE g WHERE g.id = gcc.id) WHERE gcc.BIZTYPE IS NULL ;


SELECT * FROM GAMS_CARD gc WHERE gc.id IN (SELECT gcc.CARDID FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.BIZTYPE IS NULL);

SELECT count(1),BIZTYPE,nature FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE GROUP BY BIZTYPE��nature ;

SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD WHERE BILLCODE = 'TY2017004094';
--2、
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc SET gcc.BIZTYPE = (SELECT gc.BILLDEFINE FROM GAMS_CARD gc WHERE gc.id = gcc.CARDID) WHERE gcc.BIZTYPE IS NULL ;
--3
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc SET gcc.NATURE = 'account_entry' WHERE BIZTYPE = 'TYSB' OR BIZTYPE = 'WXZC_RJ' OR BIZTYPE = 'JJYJZJ';
--4、
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc SET gcc.NATURE = 'account_entry' WHERE NATURE IS NULL;
--5、
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc SET BIZTYPE = 'com.jiuqi.np.gams2.core.gams_card_wxzc_rj' WHERE BIZTYPE = 'WXZC_RJ';
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc SET BIZTYPE = 'com.jiuqi.np.gams2.core.gams_card_jjyjzj' WHERE BIZTYPE = 'JJYJZJ';
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc SET BIZTYPE = 'com.jiuqi.np.gams2.core.gams_card_tysb' WHERE BIZTYPE = 'TYSB';


SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE g WHERE g.id IN ()
SELECT
	COALESCE(sum(abs(bdcard.SHULZ)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.JIAZZ)), 0)   benqjsqtje
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 bdcard
WHERE
	bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGBID IS NOT NULL)
	AND bdcard.JIZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.JIZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGBID = '3711F12FC000000192E940E7FAE32E55';

SELECT
	COALESCE(sum(abs(bdcard.SHUL_Z)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.JIAZ_Z)), 0)   benqjsqtje
FROM
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
WHERE
	bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGB IS NOT NULL)
	AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGB = '3711F12FC000000192E940E7FAE32E55';

DROP TABLE czjsty;
DROP TABLE zcjsty;
DROP TABLE ty ; 
	
CREATE TABLE czjsty AS 
select *
           from CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329   bdcard 
           where bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
               and (bdcard.SORTGBID is not null)
                 and bdcard.JIZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
                 and bdcard.JIZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
           		AND BDCARD.SORTGBID = '3711F12FC000000192E940E7FAE32E55';
           	
 CREATE TABLE zcjsty AS 
		           select *
		           from CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE  bdcard 
		           where bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
		               and (bdcard.SORTGB is not null)
		                 and bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 and bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 AND BDCARD.SORTGB = '3711F12FC000000192E940E7FAE32E55';

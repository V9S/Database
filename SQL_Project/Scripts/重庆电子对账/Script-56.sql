
DROP TABLE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE ;

CREATE TABLE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE AS SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE_js ;

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_JC_ASSETSORT_GB gjag ;

SELECT
CASE
		WHEN guobdl.name = '01' THEN '— —'
		ELSE to_char(COALESCE(benqxz.benqxzsl, 0) + COALESCE(chaifxz.chaifxzsl, 0) + COALESCE(benqzj.benqzzsl, 0) + COALESCE(fenlbdxz.fenlbdxzsl, 0) + COALESCE(benntk.benntkxzsl, 0))
	END "本期新增合计数量",
	(COALESCE(benqxz.benqxzje, 0) + COALESCE(chaifxz.chaifxzje, 0) + COALESCE(benqzj.benqzzje, 0) + COALESCE(fenlbdxz.fenlbdxzje, 0) + COALESCE(benntk.benntkxzje, 0)) "本期新增合计金额"
FROM
	gams_jc_assetsort_gb guobdl
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) benqxzsl,
		COALESCE(sum(change.jiaz_z), 0) benqxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqxz ON
	benqxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) benqzzsl,
		COALESCE(sum(change.shul_j), 0) benqjzsl,
		COALESCE(sum(change.jiaz_z), 0) benqzzje,
		COALESCE(sum(change.jiaz_j), 0) benqjzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqzj ON
	benqzj.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) chaifxzsl,
		COALESCE(sum(change.jiaz_z), 0) chaifxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) chaifxz ON
	chaifxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) fenlbdxzsl,
		COALESCE(sum(change.jiaz_z), 0) fenlbdxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) fenlbdxz ON
	fenlbdxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) benntkxzsl,
		COALESCE(sum(change.jiaz_z), 0) benntkxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benntk ON
	benntk.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_j), 0) benqbfsl,
		COALESCE(sum(change.jiaz_j), 0) benqbfje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqbf ON
	benqbf.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(abs(change.shul_j)), 0) benqtksl,
		COALESCE(sum(abs(change.jiaz_j)), 0) benqtkje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqtk ON
	benqtk.guobdl = guobdl.id
WHERE
	guobdl.id = '3711F12FC000000192E940E7FAE32E55';
	

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
	COALESCE(sum(abs(bdcard.shul_z)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.jiaz_z)), 0)   benqjsqtje
FROM
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
WHERE
	bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGB IS NOT NULL)
	AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGB = '3711F12FC000000192E940E7FAE32E55';

CREATE TABLE czjsty AS 	
SELECT
	*
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 bdcard
WHERE
	bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGBID IS NOT NULL)
	AND bdcard.JIZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.JIZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGBID = '3711F12FC000000192E940E7FAE32E55';

CREATE TABLE zcjsty AS 	
SELECT
	*
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

SELECT * FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty);
		               
SELECT * FROM czjsty WHERE cardobjectid NOT IN (SELECT CARDOBJECTID FROM zcjsty);
		               
SELECT * FROM zcjsty WHERE cardid NOT IN (SELECT cardrecid FROM czjsty);
		               
SELECT gcc.CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc LEFT JOIN CQDZGCZYXY_ZCGL.GAMS_CARD gc ON gcc.CARDID = gc.ID WHERE gc.BILLCODE = 'TY2020000510';
 
SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000510';
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM zcjsty WHERE cardid = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM zcjsty WHERE ID = '43640364C4BB4CA59F8CEF26FC0FF794';

SELECT * FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE cardid = '6ED4F9A320000501D4755674201D3F76';

		              	
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDOBJECTID = '72466B147F66452BBF5F621BF9762C22';

SELECT gcc.SORTGB ,gcc.CAIWJZRQ ,ORG FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDOBJECTID = '72466B147F66452BBF5F621BF9762C22';

UPDATE GAMS_CARD_CHANGE a SET CAIWJZRQ = (SELECT JIZRQ FROM czjsty b WHERE a.CARDID = b.CARDRECID) WHERE a.CARDID IN (SELECT CARDID FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty))

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.CARDOBJECTID = '9F6F03D3A7C34C7781665BDE6BF810E6';


SELECT * FROM GAMS_CARD gc WHERE gc.OBJECTID = '72466B147F66452BBF5F621BF9762C22';

SELECT * FROM GAMS_CARD gc WHERE gc.ID = '6ED4F9A320000501D4755674201D3F76';

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.SORTGBID IS NULL ;

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gan WHERE gan.SORTGB IS NULL AND BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine';

SELECT count(1),BIZTYPE,nature FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gan WHERE gan.SORTGB IS NULL GROUP BY BIZTYPE,nature ;
--1、
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE a SET SORTGB = 
(SELECT gc.SORTGBID FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gc WHERE gc.CARDRECID = a.CARDID ) WHERE a.SORTGB IS NULL ;

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gcct ;

SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE gcct WHERE gcct.id = '6ED4F9A320000501D4755674201D3F76';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gan WHERE gan.ID = '6ED4F9A320000501D4755674201D3F76';


SELECT
		gcct.*
	FROM
		CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gcct WHERE gcct.CARDRECID = '6ED4F85F200000A10F6C586116E53AEC';

CREATE TABLE aa AS 
SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE gcc WHERE gcc.BIZTIME < to_date('2019-12-06 00:00:00', 'yyyy-mm-dd HH24:mi:ss');
CREATE TABLE bb AS 
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.BIZTIME < to_date('2019-12-06 00:00:00', 'yyyy-mm-dd HH24:mi:ss');

SELECT * FROM bb b WHERE b.id NOT IN (SELECT a.id FROM aa a);

SELECT BIZTYPE FROM aa a GROUP BY a.BIZTYPE ;
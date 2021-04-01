--解决期末金额问题
SELECT
	COALESCE(sum(change.shul_z), 0) - COALESCE(sum(change.shul_j), 0) qimsl,
	COALESCE(sum(change.jiaz_z), 0) - COALESCE(sum(change.jiaz_j), 0) qimje
FROM
	gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55';

SELECT * FROM GAMS_JC_ASSETSORT_GB gjag ;

--通用设备
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
	AND c.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	AND c.id NOT IN (SELECT
	CHANGE.CARDID 
FROM
	gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55');	
--无形资产
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
	AND c.SORTGB = '3DCA958F0000002178673E76D0CE4984'
	AND c.id NOT IN (SELECT
	CHANGE.CARDID 
FROM
	gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3DCA958F0000002178673E76D0CE4984');	
		
	

	
	
--通用设备	
SELECT
	CHANGE.CARDID 
FROM
	gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55'
	AND CHANGE.CARDOBJECTID NOT IN (SELECT
	c.OBJECTID 
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
	AND c.SORTGB = '3711F12FC000000192E940E7FAE32E55' );	

--无形资产
SELECT
	CHANGE.CARDID 
FROM
	gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3DCA958F0000002178673E76D0CE4984'
	AND CHANGE.CARDOBJECTID NOT IN (SELECT
	c.OBJECTID 
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
	AND c.SORTGB = '3DCA958F0000002178673E76D0CE4984' );	
	

	
	
	
	
	
	
	

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = 'RJ20151103000017';
	

SELECT * FROM GAMS_CARD gc WHERE gc.id = '6ED57F1A00000441ECDB7C809C0D5EB8';
SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = '6ed57f16-e000-03a1-41e9-19fc24a6f1a5';

SELECT gcc.JIZRQ,gcc.SORTGB,gcc.JIAZ_Z ,gcc.JIAZ_J ,gcc.* FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = '6ED4F906E00002C1C4E3E72C43DD95A8';

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE  BIZTYPE = 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine';
--TY2019000465
SELECT * FROM GAMS_CARD gc WHERE gc.id NOT IN (SELECT gcc.cardid FROM GAMS_CARD_CHANGE gcc WHERE  gcc.BIZTYPE IS NULL ) AND gc.YUANZCBH IS NOT NULL AND gc.auditstate = 2
	AND gc.cardstate LIKE '0%';
	



SELECT * FROM NP_USER nu WHERE NICKNAME = '全恒光';

SELECT * FROM GAMS_CARD_CHANGE_TEMP gcct ;

DROP TABLE GAMS_CARD_CHANGE;

CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM GAMS_CARD_CHANGE_TEMP;



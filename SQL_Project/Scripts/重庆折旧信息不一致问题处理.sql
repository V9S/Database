SELECT 
	sum(ljzj.yuezje) AS yuezje
--count(ljzj.a )
FROM
	gams_card card
JOIN (
	SELECT
		c.objectid AS objectid,
		max(c.yewxlh) AS yewxlh
	FROM
		gams_card c
--	WHERE
--		c.caiwjzrq IS NOT NULL
--		AND c.caiwjzrq <= to_date('2020-10-31 23:59:59', 'yyyy-mm-dd HH24:mi:ss')
	GROUP BY
		c.objectid) temp ON
	card.objectid = temp.objectid
LEFT JOIN (
	SELECT
		detail.ID AS a,
		detail.card_obj_id AS cardobjectid,
		sum(CASE WHEN detail.jizqj >= 202010 THEN detail.zhejje ELSE 0 END) AS yuezje
	FROM
		GAMS_ASSETDEPRECDETAIL detail
	WHERE
		detail.jizqj <= 202010
	GROUP BY
		detail.CARD_OBJ_ID,detail.ID) ljzj ON
	card.objectid = ljzj.cardobjectid
WHERE
	card.auditstate = 2
	AND card.cardstate LIKE '0%'
	AND 
	card.caiwrzrq <= to_date('2020-10-31 23:59:59', 'yyyy-mm-dd HH24:mi:ss')
	AND 
	card.yewxlh = temp.yewxlh AND ljzj.a  IN (SELECT detail.id FROM GAMS_ASSETDEPRECDETAIL detail WHERE detail.jizqj = 202010);
5658129.24


--ÕÛ¾ÉÍÆËÍ---5658188.90

	
SELECT
	sum(detail.ZHEJJE)
FROM
	GAMS_ASSETDEPRECDETAIL detail 
LEFT JOIN GAMS_CARD gc ON detail.CARD_OBJ_ID = gc.OBJECTID 
WHERE
	detail.jizqj = 202010 
--	AND gc.caiwjzrq <= to_date('2020-10-31 23:59:59', 'yyyy-mm-dd HH24:mi:ss')
	AND  gc.auditstate = 2 
	AND gc.cardstate LIKE '0%'


SELECT
	sum(detail.ZHEJJE)
FROM
	GAMS_CARD gc 
LEFT JOIN  GAMS_ASSETDEPRECDETAIL detail ON detail.CARD_OBJ_ID = gc.OBJECTID 
WHERE
	detail.jizqj = 202010 GROUP BY gc.auditstate ;
	
SELECT * FROM NP_USER nu WHERE NICKNAME = 'ÀîÈ¨';

SELECT * FROM core_authuser;
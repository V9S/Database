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
	AND c.SORTGB = '3711F12FC000000192E940E7FAE32E55';--29459
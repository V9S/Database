SELECT
	count(1)
FROM
	(
	SELECT
		*
	FROM
		(
		SELECT
			ga.recid, ga.orgunit, ga.zifl, ga.billCode, ga.cheph, ga.jiaz, ga.leijzj, ga.jingz, ga.jizrq, ga.syzk, ga.clyt, ROW_NUMBER() OVER(PARTITION BY ga.objectid ORDER BY ga.jizrq DESC) Num
		FROM
			gams_assetcard ga
		WHERE
			ga.cardstate IN ('00', '02')
			AND ga.jizrq <=  to_date('2019-1-1 0:0:0', 'yyyy-mm-dd hh24:mi:ss')
AND ga.jizrq >= to_date('2019-1-1 0:0:0', 'yyyy-mm-dd hh24:mi:ss')) g
	WHERE
		g.Num = 1) c
LEFT JOIN gams_jc_assetclass z ON
	z.recid = c.zifl
LEFT JOIN gams_jc_syzk s ON
	s.recid = c.syzk
LEFT JOIN gams_jc_clytfl t ON
	t.recid = c.clyt
WHERE
	1 = 1
	AND ((z.stdcode >

2030000
AND z.stdcode <

2030800)
	OR z.stdcode = 2039900)
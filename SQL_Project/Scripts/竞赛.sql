SELECT
	gja.fl AS FL,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2018-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.SHUL , 0) ELSE 0 END) AS QCSHUL,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2018-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.JIAZ , 0) ELSE 0 END) AS QCJIAZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2018-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.LEIJZJ , 0) ELSE 0 END) AS QCLEIJZJ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2018-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.JINGZ , 0) ELSE 0 END) AS QCJINGZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.SHUL , 0) ELSE 0 END) AS HJSHUL,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.JIAZ , 0) ELSE 0 END) AS HJJIAZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.LEIJZJ , 0) ELSE 0 END) AS HJLEIJZJ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.JINGZ , 0) ELSE 0 END) AS HJJINGZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.SHUL , 0) ELSE 0 END) AS ZYSHUL,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.JIAZ , 0) ELSE 0 END) AS ZYJIAZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.LEIJZJ , 0) ELSE 0 END) AS ZYLEIJZJ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.JINGZ , 0) ELSE 0 END) AS ZYJINGZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.ZYJZ , 0) ELSE 0 END) AS ZYZYJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.CZJJZ , 0) ELSE 0 END) AS ZYCZJJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.XZJZ , 0) ELSE 0 END) AS ZYXZJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '01' THEN COALESCE(ga.DCZJZ , 0) ELSE 0 END) AS ZYDCZJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.SHUL , 0) ELSE 0 END) AS CZSHUL,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.JIAZ , 0) ELSE 0 END) AS CZJIAZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.LEIJZJ , 0) ELSE 0 END) AS CZLEIJZJ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.JINGZ , 0) ELSE 0 END) AS CZJINGZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.ZYJZ , 0) ELSE 0 END) AS CZZYJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.CZJJZ , 0) ELSE 0 END) AS CZCZJJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.XZJZ , 0) ELSE 0 END) AS CZXZJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '02' THEN COALESCE(ga.DCZJZ , 0) ELSE 0 END) AS CZDCZJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.SHUL , 0) ELSE 0 END) AS XZSHUL,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.JIAZ , 0) ELSE 0 END) AS XZJIAZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.LEIJZJ , 0) ELSE 0 END) AS XZLEIJZJ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.JINGZ , 0) ELSE 0 END) AS XZJINGZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.ZYJZ , 0) ELSE 0 END) AS XZZYJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.CZJJZ , 0) ELSE 0 END) AS XZCZJJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.XZJZ , 0) ELSE 0 END) AS XZXZJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '03' THEN COALESCE(ga.DCZJZ , 0) ELSE 0 END) AS XZDCZJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.SHUL , 0) ELSE 0 END) AS BFSHUL,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.JIAZ , 0) ELSE 0 END) AS BFJIAZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.LEIJZJ , 0) ELSE 0 END) AS BFLEIJZJ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.JINGZ , 0) ELSE 0 END) AS BFJINGZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.ZYJZ , 0) ELSE 0 END) AS BFZYJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.CZJJZ , 0) ELSE 0 END) AS BFCZJJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.XZJZ , 0) ELSE 0 END) AS BFXZJZ,
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.DCZJZ , 0) ELSE 0 END) AS BFDCZJZ
FROM
	(
	SELECT
		*
	FROM
		(
		SELECT
			ga.JIAZ , ga.SHUL , ga.LEIJZJ , ga.JINGZ , ga.SYZK , ga.ZIFL, ga.JIZRQ, ga.ORGUNIT , ga.CARDSTATE, ga.ZYJZ, ga.CZJJZ , ga.XZJZ , ga.DCZJZ, ROW_NUMBER() OVER(PARTITION BY ga.OBJECTID ORDER BY ga.JIZRQ DESC) Num
		FROM
			GAMS_ASSETCARD ga WHERE ga.JIZRQ <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS' ) ) t
	WHERE
		t.Num = 1) ga
LEFT JOIN GAMS_JC_SYZK gjs ON
	ga.SYZK = gjs.RECID
LEFT JOIN (
	SELECT
		RECID, fl
	FROM
		GAMS_JC_ASSETCLASS gja ) gja ON
	ga.ZIFL = gja.RECID
LEFT JOIN MD_ORG mo ON
	ga.ORGUNIT = mo.RECID
WHERE
	mo.STDCODE = '000223'
	AND ga.CARDSTATE IN ('00', '02')
GROUP BY
	gja.fl
ORDER BY
	gja.fl;

show parameter processes	

select count(*) from v$process;

select count(*) from v$session;
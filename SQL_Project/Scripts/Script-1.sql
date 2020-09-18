SELECT
	gja.fl AS FL,count(1),
	sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(ga.JIAZ , 0) ELSE 0 END) AS HJJIAZ


FROM
 gams_assetcard ga 
	left join (
	 select ga1.objectid,max(ga1.jizrq) AS jizrq  from gams_assetcard ga1  group by ga1.objectid
	) t on ga.objectid = t.objectid  
	left join md_org md_org on ga.orgunit = md_org.recid 
	left join  gams_jc_assetclass gc on ga.zifl = gc.recid 
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
	AND  t.jizrq = ga.jizrq
GROUP BY
	gja.fl
ORDER BY
	gja.fl;
	

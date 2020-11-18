define query queryInfo(@orgunit guid, @departments guid, @shiybm string, @billcode string, @billcode_min string, @billcode_max string, @billcodes string, @zicmc string, @jingfkm guid, @jiaoysyfx guid, @danj_min double, @danj_max double, @jizrq_min DATE, @jizrq_max DATE, @sortgb guid, @shiyr guid, @cunfdd guid, @yuanzcbh_min string, @yuanzcbh_max string, @yuanzcbhs string, @jiaz_min double, @jiaz_max double, @zicgs guid)
BEGIN
	SELECT
	card.billcode AS zicbh,
CASE
		WHEN re_m.billdefine IS NOT NULL THEN re_m.billdefine
		ELSE re_i.billdefine
	END AS billdefine,
	card.zicmc AS zicmc,
	card.zicfl AS zicfl,
	card.hangyfl AS hangyfl,
	card.guigxh AS guigxh,
	card.guobm AS guobm,
	card.jiaz AS jiaz,
	card.jiaoysyfx AS jiaoysyfx,
	card.shiyr AS shiyr,
	card.shiybm AS shiybm,
	card.cunfdd AS cunfdd,
	card.zicgs AS zicgs,
	card.yuanzcbh AS yuanzcbh,
	card.qudrq AS qudrq,
CASE
		WHEN re_m.shenqsj IS NOT NULL THEN re_m.shenqsj
		ELSE re_i.shenqsj
	END AS rukrq,
	jingsr.name AS jingsr,
CASE
		WHEN re_m.gonghs IS NOT NULL THEN re_m.gonghs
		ELSE re_i.gonghs
	END AS gonghs,
	card.yansrkdh AS jianzywdh,
CASE
		WHEN re_m.id IS NOT NULL THEN re_m.id
		ELSE re_i.id
	END AS billid,
	card.objectid AS objectid,
	card.id AS id
FROM
	gams_card AS card
LEFT JOIN gams_reimburse AS re_m ON
	re_m.billCode = card.yansrkdh
	AND re_m.orgId = card.orgunit
LEFT JOIN gams_inspectionentry AS re_i ON
	re_i.billCode = card.yansrkdh
	AND re_i.orgId = card.orgunit
LEFT JOIN gams_jc_personnel AS jingsr ON
	jingsr.id = re_m.shenqr
WHERE
	card.yewxlh = 1
	AND card.shiybm IN (@shiybm)
	AND card.shiybm IN (@departments)
	AND card.shiyr IN (@shiyr)
	AND card.cunfdd IN (@cunfdd)
	AND card.zicgs IN (@zicgs)
	AND card.billcode LIKE '%' + @billcode + '%'
	AND card.billcode >= @billcode_min
	AND card.billcode <= @billcode_max
	AND card.billcode IN (@billcodes)
	AND card.yuanzcbh >= @yuanzcbh_min
	AND card.yuanzcbh <= @yuanzcbh_max
	AND card.yuanzcbh IN (@yuanzcbhs)
	AND card.jiaz >= @jiaz_min
	AND card.jiaz <= @jiaz_max
	AND card.zicmc LIKE '%' + @zicmc + '%'
	AND truncday(card.jizrq) >= truncday(@jizrq_min)
	AND truncday(card.jizrq) <= truncday(@jizrq_max)
	AND card.danj >= @danj_min
	AND card.danj <= @danj_max
	AND card.sortgb IN (@sortgb)
	AND card.jingfkm IN (@jingfkm)
	AND card.jiaoysyfx IN (@jiaoysyfx)
	AND card.orgunit = @orgunit
ORDER BY
	card.billcode DESC
END ",
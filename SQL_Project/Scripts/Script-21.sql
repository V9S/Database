define query queryInfo(@orgunit guid, @billcode string, @zicmc string, @billcode_min string, @billcode_max string, @jizrq_min DATE, @jizrq_max DATE, @shiybm guid, @guobdl guid)
BEGIN
	SELECT
	h.id AS billid,
	h.id AS regid,
	i.cardid AS id,
	i.cardobjectid AS objectid,
	i.zicbh AS zicbh,
	i.zicmc AS zicmc,
	cl.title AS zicfl,
	gb.title AS guobfl,
	i.guigxh AS guigxh,
	COALESCE(i.jiaz,
	0) AS jiaz,
	p.name AS shiyr,
	d.name AS shiybm,
	dp.name AS cunfdd,
	i.qudrq AS qudrq,
	h.jizrq AS xiazrq,
	h.billCode AS xiazywdh,
	h.jingbr AS jingsr
FROM
	gams_assetdisposereg_detail AS i
LEFT JOIN gams_assetdisposereg AS h ON
	i.master = h.id
LEFT JOIN gams_card AS card ON
	i.cardid = card.id
LEFT JOIN gams_jc_assetclass AS cl ON
	i.zicfl = cl.id
LEFT JOIN gams_jc_assetsort_gb AS gb ON
	i.sortgb = gb.id
LEFT JOIN gams_jc_personnel AS p ON
	i.shiyrid = p.id
LEFT JOIN gams_jc_department AS d ON
	i.shiybmid = d.id
LEFT JOIN gams_jc_depositary AS dp ON
	card.cunfdd = dp.id
WHERE
	i.zicbh LIKE '%' + @billcode + '%'
	AND i.zicmc LIKE '%' + @zicmc + '%'
	AND i.zicbh >= @billcode_min
	AND i.zicbh <= @billcode_max
	h.BILL_CODE <= @
	AND truncday(h.jizrq) >= truncday(@jizrq_min)
	AND truncday(h.jizrq) <= truncday(@jizrq_max)
	AND i.shiybmid IN (@shiybm)
	AND i.sortgb IN (@guobdl)
	AND h.orgId = @orgunit
END ",
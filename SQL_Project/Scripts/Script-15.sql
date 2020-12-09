define query queryInfo(@GAL_TEMP_GAMS_QUERY guid, @GAL_TEMP_GAMS_QUERY2 guid, @faph string)
BEGIN
	SELECT
	c.hetbh,
	c.hetmc,
	c.weixlxr,
	c.weixlxdh,
	c.chuch,
	c.id,
	c.version,
	c.creator,
	c.createtime,
	c.auditstate,
	hangyfl.carddefinename AS billdefine,
	c.rebillid,
	c.objectid,
	c.orgunit,
	c.cardstate,
	c.yewxlh,
	c.billcode,
	c.zicmc,
CASE
		WHEN loc.bizdes IS NULL THEN to_char('在用')
		WHEN to_char(loc.bizdes) = to_char('资产调拨(部门间)') THEN to_char('资产调拨中(部门间)')
		ELSE to_char(loc.bizdes) + to_char('中')
	END AS state,
	zicfl.title AS zicfl,
	c.zicfl AS zicflid,
	hangyfl.title AS hangyfl,
	jiaoysyfx.title AS jiaoysyfx,
	c.danj,
	c.shul,
	jiazlx.title AS jiazlx,
	c.jiaz AS jiaz,
	c.caizxzj,
	c.feiczxzj,
	qudfs.title AS qudfs,
	c.qudrq,
	c.jizrq,
	ruzxs.title AS ruzxs,
	c.caiwrzrq,
	c.yujsmzl,
	c.kuaijpzh,
	shiybm.name AS shiybmname,
	c.shiybm AS shiybm,
	shiyr.name AS shiyrname,
	c.shiyr AS shiyr,
	cunfdd.name AS cunfdd,
	zhejzt.title AS zhejzt,
	zicgs.name AS zicgs,
	c.yansrkdh,
	c.beiz,
	shebyt.title AS shebyt,
	caigzzxs.title AS caigzzxs,
	jingfkm.title AS jingfkm,
	c.pinp,
	c.guigxh,
	c.shengccj,
	c.jixs,
	guobm.title AS guobm,
	yongtfl.title AS yongtfl,
	c.cheph,
	paiql.title AS paiql ,
	c.yuanzcbh AS yuanzcbh,
	c.shiybm_old AS shiybm_old,
	c.cunfdd_old AS cunfdd_old,
	c.datasource AS datasource,
	c.yuansjzrq AS yuansjzrq ,
	card.printnum
FROM
	gams_card_zysb AS c
LEFT JOIN (
	SELECT
		t.id, t.cardobjectid, t.bizDes
	FROM
		CardLock AS t, (
		SELECT
			max(l.id) AS id
		FROM
			CardLock AS l
		WHERE
			l.cardobjectid IN (
			SELECT
				GAL_TEMP_GAMS_QUERY2.TUUID
			FROM
				GAL_TEMP_GAMS_QUERY2 AS GAL_TEMP_GAMS_QUERY2
			WHERE
				GAL_TEMP_GAMS_QUERY2.BUSINESSTYPE = @GAL_TEMP_GAMS_QUERY2)
		GROUP BY
			l.cardobjectid) AS t2
	WHERE
		t.id = t2.id) AS loc ON
	loc.cardobjectid = c.objectid
LEFT JOIN gams_jc_assetclass AS zicfl ON
	zicfl.id = c.zicfl
LEFT JOIN gams_jc_assetclass_ind AS hangyfl ON
	hangyfl.id = c.hangyfl
LEFT JOIN biz_jy00_gams_jc_jiaoyusage AS jiaoysyfx ON
	jiaoysyfx.id = c.jiaoysyfx
LEFT JOIN gams_jc_valuetype AS jiazlx ON
	jiazlx.id = c.jiazlx
LEFT JOIN gams_jc_gainmanner AS qudfs ON
	qudfs.id = c.qudfs
LEFT JOIN gams_jc_entryform AS ruzxs ON
	ruzxs.id = c.ruzxs
LEFT JOIN gams_jc_department AS shiybm ON
	shiybm.id = c.shiybm
LEFT JOIN gams_jc_personnel AS shiyr ON
	shiyr.id = c.shiyr
LEFT JOIN gams_jc_depositary AS cunfdd ON
	cunfdd.id = c.cunfdd
LEFT JOIN gams_jc_deprecstate AS zhejzt ON
	zhejzt.id = c.zhejzt
LEFT JOIN gams_jc_zicgs AS zicgs ON
	zicgs.id = c.zicgs
LEFT JOIN gams_jc_deviceuse AS shebyt ON
	shebyt.id = c.shebyt
LEFT JOIN gams_jc_purorgform AS caigzzxs ON
	caigzzxs.id = c.caigzzxs
LEFT JOIN gams_jc_fundsaccounts AS jingfkm ON
	jingfkm.id = c.jingfkm
LEFT JOIN biz_jy00_gams_jc_country AS guobm ON
	guobm.id = c.guobm
LEFT JOIN gams_jc_clytfl AS yongtfl ON
	yongtfl.id = c.yongtfl
LEFT JOIN gams_jc_qicpql AS paiql ON
	paiql.id = c.paiql
LEFT JOIN gams_card AS card ON
	card.id = c.id
LEFT JOIN (
	SELECT
		gci.MASTER_ID
	FROM
		GAMS_CARD_INVOICE gci
	WHERE
		gci.FAPH IN(@faph)
	GROUP BY
		gci.MASTER_ID) AS gci2 ON
	gci2.MASTER_ID = c.id
WHERE
	c.id IN (
	SELECT
		GAL_TEMP_GAMS_QUERY.TUUID
	FROM
		GAL_TEMP_GAMS_QUERY AS GAL_TEMP_GAMS_QUERY
	WHERE
		GAL_TEMP_GAMS_QUERY.BUSINESSTYPE = @GAL_TEMP_GAMS_QUERY)
ORDER BY
	c.billcode
END",
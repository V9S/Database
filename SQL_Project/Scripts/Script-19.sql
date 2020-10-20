sqldefine query queryInfo(@billcode string, @zicmc string, @jiaoysyfx guid, @jiaz_min double, @jiaz_max double, @shul_min int, @shul_max int, @billcode_min string, @billcode_max string, @qudrq_min DATE, @qudrq_max DATE, @caiwrzrq_min DATE, @caiwrzrq_max DATE, @ruzxs string, @jizrq_min DATE, @jizrq_max DATE, @shiybm guid, @shiyr guid, @cunfdd guid, @qudfs guid, @caigzzxs guid, @hangyfl guid, @hangydl guid, @sortgb guid, @zhejzt guid, @danj_min double, @danj_max double, @jiazlx guid, @guigxh string, @kuaijpzh string, @zicfl guid, @guobm guid, @caigjbr guid, @jingfkm guid, @bizdes string, @pinp string, @shengccj string, @xiaoss string, @xuek guid)
BEGIN
	SELECT
	c.id,
	c.version,
	c.creator,
	c.createtime,
	c.auditstate,
	c.hangyfl AS billdefine,
	c.objectid,
	c.orgunit,
	c.cardstate,
	c.rebillid,
	c.yewxlh,
	c.billcode,
	c.zicmc,
CASE
		WHEN loc.bizdes IS NULL THEN to_char('在用')
		WHEN to_char(loc.bizdes) = to_char('资产调拨(部门内)') THEN to_char('资产调拨中(部门内)')
		WHEN to_char(loc.bizdes) = to_char('资产调拨(部门间)') THEN to_char('资产调拨中(部门间)')
		ELSE to_char(loc.bizdes) + to_char('中')
	END AS state,
	c.zicfl AS zicfl,
	c.zicfl AS zicflid,
	c.hangyfl AS hangyfl,
	c.jiaoysyfx AS jiaoysyfx,
	c.danj,
	c.shul,
	c.mianj,
	c.jiazlx AS jiazlx,
	c.jiaz AS jiaz,
	c.caizxzj,
	c.pinp AS pinp,
	c.guigxh AS guigxh,
	c.shengccj AS shengccj,
	c.xiaoss AS xiaoss,
	c.feiczxzj,
	c.qudfs AS qudfs,
	c.qudrq,
	c.jizrq,
	c.ruzxs AS ruzxs,
	c.caiwrzrq,
	c.yujsmzl,
	c.kuaijpzh,
	shiybm.name AS shiybm,
	shiyr.name AS shiyr,
	cunfdd.name AS cunfdd,
	c.zhejzt AS zhejzt,
	c.yansrkdh,
	c.shiyr_old,
	c.shiybm_old,
	c.cunfdd_old,
	c.beiz
FROM
	(
	SELECT
		ic.id, ic.version, ic.creator, ic.createtime, ic.auditstate, ic.hangyfl AS billdefine, ic.objectid, ic.orgunit, ic.cardstate, ic.rebillid, ic.yewxlh, ic.billcode, ic.zicmc, ic.zicfl AS zicfl, ic.zicfl AS zicflid, ic.hangyfl AS hangyfl, ic.jiaoysyfx AS jiaoysyfx, ic.danj, ic.shul, ic.mianj, ic.jiazlx AS jiazlx, ic.jiaz AS jiaz, ic.caizxzj, ic.pinp AS pinp, ic.guigxh AS guigxh, ic.shengccj AS shengccj, ic.xiaoss AS xiaoss, ic.feiczxzj, ic.qudfs AS qudfs, ic.qudrq, ic.jizrq, ic.ruzxs AS ruzxs, ic.caiwrzrq, ic.yujsmzl, ic.kuaijpzh, ic.zhejzt AS zhejzt, ic.yansrkdh, ic.shiyr_old, ic.shiybm_old, ic.cunfdd_old, ic.beiz, ic.shiybm, ic.shiyr, ic.cunfdd, ic.caigzzxs, ic.hangydl, ic.sortgb, ic.guobm, ic.caigjbr, ic.jingfkm, ic.shixrq, ic.XUEK
	FROM
		gams_card AS ic
	ORDER BY
		ic.billcode DESC) AS c
LEFT JOIN (
	SELECT
		ck.id, ck.bizdes, ck.cardobjectid
	FROM
		CardLock AS ck
	JOIN (
		SELECT
			max(l.id) AS c0
		FROM
			CardLock AS l
		GROUP BY
			l.cardobjectid) AS cr ON
		cr.c0 = ck.id) AS loc ON
	loc.cardobjectid = c.objectid
LEFT JOIN gams_jc_department AS shiybm ON
	shiybm.id = c.shiybm
LEFT JOIN gams_jc_personnel AS shiyr ON
	shiyr.id = c.shiyr
LEFT JOIN gams_jc_depositary AS cunfdd ON
	cunfdd.id = c.cunfdd
LEFT JOIN gams_jc_assetclass_ind AS hangyfl_ind ON
	hangyfl_ind.id = c.hangyfl
LEFT JOIN gams_jc_entryform AS entryform ON
	entryform.id = c.ruzxs
LEFT JOIN GAMS_JC_XUEK AS gjx ON
	gjx.id = c.xuek
WHERE
	c.billcode LIKE '%' + @billcode + '%'
	AND c.zicmc LIKE '%' + @zicmc + '%'
	AND c.jiaoysyfx IN (@jiaoysyfx)
	AND c.jiaz >= @jiaz_min
	AND c.jiaz <= @jiaz_max
	AND c.shul >= @shul_min
	AND c.shul <= @shul_max
	AND c.billcode >= @billcode_min
	AND c.billcode <= @billcode_max
	AND truncday(c.qudrq) >= truncday(@qudrq_min)
	AND truncday(c.qudrq) <= truncday(@qudrq_max)
	AND truncday(c.caiwrzrq) >= truncday(@caiwrzrq_min)
	AND truncday(c.caiwrzrq) <= truncday(@caiwrzrq_max)
	AND entryform.name IN (@ruzxs)
	AND truncday(c.jizrq) >= truncday(@jizrq_min)
	AND truncday(c.jizrq) <= truncday(@jizrq_max)
	AND c.shiybm IN (@shiybm)
	AND c.shiyr IN (@shiyr)
	AND c.cunfdd IN (@cunfdd)
	AND c.qudfs IN (@qudfs)
	AND c.caigzzxs IN (@caigzzxs)
	AND c.hangyfl IN (@hangyfl)
	AND c.hangydl IN (@hangydl)
	AND c.sortgb IN (@sortgb)
	AND c.zhejzt IN (@zhejzt)
	AND c.danj >= @danj_min
	AND c.danj <= @danj_max
	AND c.jiazlx IN (@jiazlx)
	AND c.zicfl IN (@zicfl)
	AND c.guobm IN (@guobm)
	AND c.guigxh LIKE '%' + @guigxh + '%'
	AND c.kuaijpzh LIKE '%' + @kuaijpzh + '%'
	AND c.caigjbr IN (@caigjbr)
	AND c.jingfkm IN (@jingfkm)
	AND c.xuek IN (@xuek)
	AND c.cardstate LIKE '0%'
	AND c.shixrq > getdate()
	AND loc.bizdes = @bizdes
	AND c.pinp LIKE '%' + @pinp + '%'
	AND c.guigxh LIKE '%' + @guigxh + '%'
	AND c.shengccj LIKE '%' + @shengccj + '%'
	AND c.xiaoss LIKE '%' + @xiaoss + '%'
END
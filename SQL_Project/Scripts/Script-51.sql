define query queryInfo(@orgunit guid,
@sortgb guid,
@hangydl guid,
@jizrq_min DATE,
@jizrq_max DATE,
@zicfl guid,
@hangyfl guid,
@jiaoysyfx guid,
@shiybm guid,
@shiyr guid,
@cunfdd guid,
@zicgs guid,
@nature string,
@biztype1 string,
@biztype2 string)
BEGIN
	SELECT
	c.id AS id,
	c.objectid AS objectid,
	c.billcode AS billcode,
	c.zicmc AS zicmc,
	c.zicfl AS zicfl,
	c.hangyfl AS hangyfl,
	c.jizrq AS jizrq,
	c.shulj,
	c.mianjj,
	c.jiazj,
	c.jiaoysyfx AS jiaoysyfx,
	c.shiybm AS shiybm,
	c.shiyr AS shiyr,
	c.cunfdd AS cunfdd,
	c.zicgs AS zicgs,
	c.shiyzk AS shiyzk,
	c.ruzxs AS ruzxs,
	c.sortgb AS sortgb,
	c.hangydl AS hangydl,
	c.beiz AS beiz
FROM
	(
	SELECT
		c.id AS id,
		c.objectid AS objectid,
		c.billcode AS billcode,
		c.zicmc AS zicmc,
		c.zicfl AS zicfl,
		c.hangyfl AS hangyfl,
		c.jizrq AS jizrq,
	CASE
			WHEN (ch.nature = 'process'
			OR (ch.nature = 'sale'
			AND ch.biztype IN ('com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine',
			'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'))) THEN COALESCE(ch.shul_j, 0)
			WHEN ch.nature = 'sale'
			AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' THEN abs(COALESCE(ch.shul_z, 0))
			ELSE 0
		END AS shulj,
	CASE
			WHEN (ch.nature = 'process'
			OR (ch.nature = 'sale'
			AND ch.biztype IN ('com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine',
			'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'))) THEN COALESCE(ch.mianj_j, 0)
			WHEN ch.nature = 'sale'
			AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' THEN abs(COALESCE(ch.mianj_z, 0))
			ELSE 0
		END AS mianjj,
	CASE
			WHEN (ch.nature = 'process'
			OR (ch.nature = 'sale'
			AND ch.biztype IN ('com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine',
			'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'))) THEN COALESCE(ch.jiaz_j, 0)
			WHEN ch.nature = 'sale'
			AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' THEN abs(COALESCE(ch.jiaz_z, 0))
			ELSE 0
		END AS jiazj,
		c.jiaoysyfx AS jiaoysyfx,
		c.shiybm AS shiybm,
		c.shiyr AS shiyr,
		c.cunfdd AS cunfdd,
		c.zicgs AS zicgs,
		c.shiyzk AS shiyzk,
		c.ruzxs AS ruzxs,
		c.sortgb AS sortgb,
		c.hangydl AS hangydl,
		c.beiz AS beiz
	FROM
		gams_card_change AS ch
	LEFT JOIN gams_card AS c ON
		ch.cardid = c.id
	WHERE
		c.cunfdd IN (@cunfdd)
		AND c.zicgs IN (@zicgs)
		AND c.shiyr IN (@shiyr)
		AND c.shiybm IN (@shiybm)
		AND c.hangyfl IN (@hangyfl)
		AND c.zicfl IN (@zicfl)
		AND c.jiaoysyfx IN (@jiaoysyfx)
		AND truncday(ch.jizrq) >= truncday(@jizrq_min)
		AND truncday(ch.jizrq) <= truncday(@jizrq_max)
		AND ((ch.nature = 'process'
		AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine')
		OR ch.nature = 'sale')
		AND ch.sortgb = @sortgb
		AND ch.hangydl = @hangydl
		AND ch.org = @orgunit) AS c
WHERE
	(COALESCE(c.shulj, 0) <> 0
	OR COALESCE(c.mianjj, 0) <> 0
	OR COALESCE(c.jiazj, 0) <> 0)
END ",
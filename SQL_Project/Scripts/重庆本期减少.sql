
	SELECT
	guobdl.id   id,
	guobdl.title   guobdl,
CASE
		WHEN guobdl.name = '01' THEN '— —'
		ELSE to_char(COALESCE(benqzj.benqjzsl, 0) + COALESCE(benqbf.benqbfsl, 0) + COALESCE(benqtk.benqtksl, 0) + COALESCE(chaifjs.chaifjssl, 0) + COALESCE(benqjsqt.benqjsqtsl, 0))
	END   "本期合计减少数",
	COALESCE(benqzj.benqjzje, 0) + COALESCE(benqbf.benqbfje, 0) + COALESCE(benqtk.benqtkje, 0) + COALESCE(chaifjs.chaifjsje, 0) + COALESCE(benqjsqt.benqjsqtje, 0)   "本期减少合计数"
FROM
	gams_jc_assetsort_gb  guobdl
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(COALESCE(sum(change.shul_z), 0) - COALESCE(sum(change.shul_j), 0), 0)   qicsl,
		COALESCE(COALESCE(sum(change.jiaz_z), 0) - COALESCE(sum(change.jiaz_j), 0), 0)   qicje
	FROM
		GAMS_CARD_CHANGE  CHANGE
	WHERE
		change.sortgb IS NOT NULL
		AND change.jizrq < to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND CHANGE.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)  qic ON
	qic.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_z), 0)   benqxzsl,
		COALESCE(sum(change.jiaz_z), 0)   benqxzje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   benqxz ON
	benqxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_z), 0)   benqzzsl,
		COALESCE(sum(change.shul_j), 0)   benqjzsl,
		COALESCE(sum(change.jiaz_z), 0)   benqzzje,
		COALESCE(sum(change.jiaz_j), 0)   benqjzje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   benqzj ON
	benqzj.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_z), 0)   chaifxzsl,
		COALESCE(sum(change.jiaz_z), 0)   chaifxzje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   chaifxz ON
	chaifxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_z), 0)   fenlbdxzsl,
		COALESCE(sum(change.jiaz_z), 0)   fenlbdxzje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   fenlbdxz ON
	fenlbdxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_z), 0)   benntkxzsl,
		COALESCE(sum(change.jiaz_z), 0)   benntkxzje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   benntk ON
	benntk.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_j), 0)   benqbfsl,
		COALESCE(sum(change.jiaz_j), 0)   benqbfje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   benqbf ON
	benqbf.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(abs(change.shul_j)), 0)   benqtksl,
		COALESCE(sum(abs(change.jiaz_j)), 0)   benqtkje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   benqtk ON
	benqtk.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(abs(change.shul_z)), 0)   chaifjssl,
		COALESCE(sum(abs(change.jiaz_z)), 0)   chaifjsje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   chaifjs ON
	chaifjs.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(abs(change.shul_z)), 0)   benqjsqtsl,
		COALESCE(sum(abs(change.jiaz_z)), 0)   benqjsqtje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype NOT IN ('com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine',
		'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine',
		'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine')
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   benqjsqt ON
	benqjsqt.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_z), 0) - COALESCE(sum(change.shul_j), 0)   qimsl,
		COALESCE(sum(change.jiaz_z), 0) - COALESCE(sum(change.jiaz_j), 0)   qimje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)   qim ON
	qim.guobdl = guobdl.id
WHERE
	guobdl.name NOT IN ('08')
ORDER BY
	guobdl.name;


SELECT * FROM GAMS_CARD_CHANGE gcc ;

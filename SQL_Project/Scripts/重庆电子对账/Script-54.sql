SELECT
*
FROM
	gams_jc_assetsort_gb guobdl
LEFT JOIN (
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	) benqxz ON
	benqxz.sortgb = guobdl.id
LEFT JOIN (
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	) benqzj ON
	benqzj.sortgb = guobdl.id
LEFT JOIN (
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	) chaifxz ON
	chaifxz.sortgb = guobdl.id
LEFT JOIN (
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	) fenlbdxz ON
	fenlbdxz.sortgb = guobdl.id
LEFT JOIN (
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	) benntk ON
	benntk.sortgb = guobdl.id
LEFT JOIN (
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	) benqbf ON
	benqbf.sortgb = guobdl.id
LEFT JOIN (
	SELECT
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	) benqtk ON
	benqtk.sortgb = guobdl.id
WHERE
	guobdl.id = '3711F12FC000000192E940E7FAE32E55';
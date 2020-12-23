define query queryInfo(@orgunit guid ,
@jizqj_min DATE,
@jizqj_max DATE)
BEGIN
	SELECT
	bb.billid AS billid,
	bb.orgid AS orgid,
	bb.billdefine AS billdefine ,
	bb.jizqj AS jizqj,
	sum(aa.zhejje) AS zhejje,
	bb.leijzj AS leijzj,
	bb.zhejsl AS zhejsl
FROM
	(
	SELECT
		biz.id AS billid,
		biz.orgId AS orgid,
		to_char('com.jiuqi.np.gams2.depreciation.AssetDepreciationBill') AS billdefine,
		biz.jizqj AS jizqj,
		sum(i.leijzj)+ sum(i.benczje) AS leijzj,
		count(i.id) AS zhejsl
	FROM
		AssetDepreciationBill AS biz
	LEFT JOIN AssetDepreciationBill_Item AS i ON
		biz.id = i.master
	WHERE
		biz.billState = 2
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')
	GROUP BY
		biz.id,
		biz.orgId,
		biz.jizqj) AS bb
LEFT JOIN AssetDepreciationDetailRecord AS aa ON
	bb.orgid = aa.orgId
	AND bb.jizqj = aa.jizqj
WHERE
	bb.jizqj <= to_char( @jizqj_max, 'YYYYmm')
	AND bb.jizqj >= to_char( @jizqj_min, 'YYYYmm')
	AND bb.orgid = @orgunit
GROUP BY
	bb.billid,
	bb.orgid,
	bb.billdefine,
	bb.jizqj,
	bb.leijzj,
	bb.zhejsl
ORDER BY
	bb.jizqj DESC
END",
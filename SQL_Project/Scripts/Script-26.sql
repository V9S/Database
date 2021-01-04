
	SELECT
	sortgb.title AS sortgb,
	COALESCE(sum(gbtj.shul), 0) AS shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '1' THEN gbtj.shul ELSE 0 END), 0) AS jx_shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '2' THEN gbtj.shul ELSE 0 END), 0) AS ky_shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '3' THEN gbtj.shul ELSE 0 END), 0) AS xz_shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '4' THEN gbtj.shul ELSE 0 END), 0) AS shhq_shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '5' THEN gbtj.shul ELSE 0 END), 0) AS sc_shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '6' THEN gbtj.shul ELSE 0 END), 0) AS jskf_shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '7' THEN gbtj.shul ELSE 0 END), 0) AS shfw_shul,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '9' THEN gbtj.shul ELSE 0 END), 0) AS qt_shul,
	COALESCE(sum(gbtj.jiaz), 0) AS jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '1' THEN gbtj.jiaz ELSE 0 END), 0) AS jx_jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '2' THEN gbtj.jiaz ELSE 0 END), 0) AS ky_jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '3' THEN gbtj.jiaz ELSE 0 END), 0) AS xz_jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '4' THEN gbtj.jiaz ELSE 0 END), 0) AS shhq_jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '5' THEN gbtj.jiaz ELSE 0 END), 0) AS sc_jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '6' THEN gbtj.jiaz ELSE 0 END), 0) AS jskf_jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '7' THEN gbtj.jiaz ELSE 0 END), 0) AS shfw_jiaz,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '9' THEN gbtj.jiaz ELSE 0 END), 0) AS qt_jiaz,
	COALESCE(sum(gbtj.yuezje), 0) AS yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '1' THEN gbtj.yuezje ELSE 0 END), 0) AS jx_yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '2' THEN gbtj.yuezje ELSE 0 END), 0) AS ky_yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '3' THEN gbtj.yuezje ELSE 0 END), 0) AS xz_yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '4' THEN gbtj.yuezje ELSE 0 END), 0) AS shhq_yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '5' THEN gbtj.yuezje ELSE 0 END), 0) AS sc_yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '6' THEN gbtj.yuezje ELSE 0 END), 0) AS jskf_yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '7' THEN gbtj.yuezje ELSE 0 END), 0) AS shfw_yuezje,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '9' THEN gbtj.yuezje ELSE 0 END), 0) AS qt_yuezje,
	COALESCE(sum(gbtj.leijzj), 0) AS leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '1' THEN gbtj.leijzj ELSE 0 END), 0) AS jx_leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '2' THEN gbtj.leijzj ELSE 0 END), 0) AS ky_leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '3' THEN gbtj.leijzj ELSE 0 END), 0) AS xz_leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '4' THEN gbtj.leijzj ELSE 0 END), 0) AS shhq_leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '5' THEN gbtj.leijzj ELSE 0 END), 0) AS sc_leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '6' THEN gbtj.leijzj ELSE 0 END), 0) AS jskf_leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '7' THEN gbtj.leijzj ELSE 0 END), 0) AS shfw_leijzj,
	COALESCE(sum(CASE WHEN jiaoysyfx.name = '9' THEN gbtj.leijzj ELSE 0 END), 0) AS qt_leijzj
FROM
	gams_jc_assetsort_gb AS sortgb
LEFT JOIN (
	SELECT
		card.sortgb AS sortgb,
		card.jiaoysyfx AS jiaoysyfx,
		sum(card.shul) AS shul,
		sum(card.jiaz) AS jiaz,
		sum(ljzj.yuezje) AS yuezje,
		sum(ljzj.leijzj) AS leijzj
	FROM
		gams_card AS card
	JOIN (
		SELECT
			c.objectid AS objectid,
			max(c.yewxlh) AS yewxlh
		FROM
			gams_card AS c
		WHERE
			c.orgunit IN (@orgunit)
			AND c.jizrq IS NOT NULL
			AND c.jizrq <= @endTime
		GROUP BY
			c.objectid) AS temp ON
		card.objectid = temp.objectid
	LEFT JOIN (
		SELECT
			detail.cardObjectId AS cardobjectid,
			sum(CASE WHEN to_int(detail.jizqj) >= (yearof(@startTime) * 100 + monthof(@startTime)) THEN detail.zhejje ELSE 0 END) AS yuezje,
			sum(detail.zhejje) AS leijzj
		FROM
			AssetDepreciationDetailRecord AS detail
		WHERE
			detail.orgId = @orgunit
			AND to_int(detail.jizqj) <= (yearof(@endTime) * 100 + monthof(@endTime))
		GROUP BY
			detail.cardObjectId) AS ljzj ON
		card.objectid = ljzj.cardobjectid
	WHERE
		card.orgunit IN (@orgunit)
		AND card.auditstate = 2
		AND card.CARDSTATE LIKE '0%'
		AND card.cardstate LIKE '0%'
		AND card.caiwrzrq <= @endTime
		AND card.yewxlh = temp.yewxlh
	GROUP BY
		card.sortgb,
		card.jiaoysyfx) AS gbtj ON
	sortgb.id = gbtj.sortgb
LEFT JOIN biz_jy00_gams_jc_jiaoyusage AS jiaoysyfx ON
	gbtj.jiaoysyfx = jiaoysyfx.id
WHERE
	sortgb.name <> '08'
GROUP BY
	sortgb.name,
	sortgb.title
ORDER BY
	sortgb.name
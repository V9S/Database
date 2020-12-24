SELECT
	sortgb.title AS sortgb,
	COALESCE(sum(gbtj.shul), 0) AS shul,
	COALESCE(sum(gbtj.jiaz), 0) AS jiaz,
	COALESCE(sum(gbtj.yuezje), 0) AS yuezje,
	COALESCE(sum(gbtj.leijzj), 0) AS leijzj
FROM
	gams_jc_assetsort_gb sortgb
LEFT JOIN (
	SELECT
		card.sortgb AS sortgb ,
		sum(card.shul) AS shul,
		sum(card.jiaz) AS jiaz,
		sum(ljzj.yuezje) AS yuezje,
		sum(ljzj.leijzj) AS leijzj
	FROM
		gams_card card
	JOIN (
		SELECT
			c.objectid AS objectid,
			max(c.yewxlh) AS yewxlh
		FROM
			gams_card c
		GROUP BY
			c.objectid) temp ON
		card.objectid = temp.objectid
	LEFT JOIN (
		SELECT
			detail.CARD_OBJ_ID AS cardobjectid,
			sum(CASE WHEN detail.jizqj >= 202010 THEN detail.zhejje ELSE 0 END) AS yuezje,
			sum(detail.zhejje) AS leijzj
		FROM
			GAMS_ASSETDEPRECDETAIL detail
		WHERE
--			detail.SRC_BILL_DEFINE = 'com.jiuqi.np.gams2.depreciation.AssetDepreciationBill'
--			AND 
			detail.jizqj <= 202010 
		GROUP BY
			detail.CARD_OBJ_ID) ljzj ON
		card.objectid = ljzj.cardobjectid
	WHERE
		card.auditstate = 2
		AND card.yewxlh = temp.yewxlh
	GROUP BY
		card.sortgb) gbtj ON
	sortgb.id = gbtj.sortgb
WHERE
	sortgb.name <> '08'
GROUP BY
	sortgb.name,
	sortgb.title
ORDER BY
	sortgb.name;
	
SELECT sum(zhejje) FROM GAMS_ASSETDEPRECDETAIL  WHERE SRC_BILL_DEFINE = 'com.jiuqi.np.gams2.depreciation.AssetDepreciationInitBill' OR SRC_BILL_DEFINE  = 'com.jiuqi.np.gams2.depreciation.AssetDepreciationModifyBill' AND jizqj <= 202010;

SELECT SRC_BILL_DEFINE FROM GAMS_ASSETDEPRECDETAIL  GROUP BY  SRC_BILL_DEFINE ;

SELECT count(1) FROM GAMS_ASSETDEPRECDETAIL WHERE JIZQJ <=201901;

SELECT * FROM GAMS_ASSETDEPREC_I;

SELECT * FROM GAMS_ASSETDEPREC_H;

SELECT
	ga.ZHEJJE ,
	a.leijzj
FROM
	GAMS_ASSETDEPRECDETAIL ga
LEFT JOIN (
	SELECT
		CARD_ID ,
		leijzj
	FROM
		GAMS_ASSETDEPREC_I gai
	LEFT JOIN GAMS_ASSETDEPREC_H gah ON
		gai.MASTER_ID = gah.ID
	WHERE
		gah.JIZQJ = '201901') a ON
	a.card_id <> ga.CARD_ID
WHERE
	ga.JIZQJ = '201812'
--	AND a.leijzj - ga.ZHEJJE > 1
--	AND ga.ZHEJJE < a.leijzj
--	AND a.leijzj IS NOT NULL
--	AND ga.ZHEJJE IS NOT NULL ;
--32,946


SELECT * FROM GAMS_ASSETDEPREC_I gai LEFT JOIN GAMS_ASSETDEPREC_H gah ON gai.MASTER_ID = gah.ID  WHERE gah.JIZQJ = '201901';--19,454



CREATE TABLE GAMS_ASSETDEPREC_I_1224 AS SELECT * FROM GAMS_ASSETDEPREC_I;
CREATE TABLE GAMS_ASSETDEPREC_H_1224 AS SELECT * FROM GAMS_ASSETDEPREC_H;
CREATE TABLE GAMS_ASSETDEPRECDETAIL_1224 AS SELECT * FROM GAMS_ASSETDEPRECDETAIL;




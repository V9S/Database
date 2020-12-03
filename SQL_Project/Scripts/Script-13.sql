SELECT
	bb.billid AS billid,
	bb.orgid AS orgid,
	bb.billdefine AS billdefine ,
	bb.jizqj AS jizqj,
	sum(aa.zhejje) AS zhejje,
	count(aa.ZHEJJE),
	bb.leijzj AS leijzj,
	bb.zhejsl AS zhejsl
FROM
	(
	SELECT
		biz.id AS billid, biz.ORG_ID AS orgid, to_char('com.jiuqi.np.gams2.depreciation.AssetDepreciationBill') AS billdefine, biz.jizqj AS jizqj, sum(i.leijzj) + sum(i.benczje) AS leijzj, count(i.id) AS zhejsl
	FROM
		GAMS_ASSETDEPREC_H biz
	LEFT JOIN GAMS_ASSETDEPREC_I  i ON
		biz.id = i.MASTER_ID 
	WHERE
		biz.BILL_STATE = 2
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')
	GROUP BY
		biz.id, biz.ORG_ID , biz.jizqj)  bb
LEFT JOIN GAMS_ASSETDEPRECDETAIL  aa ON
	bb.orgid = aa.ORG_ID 
	AND bb.jizqj = aa.jizqj
GROUP BY
	bb.billid,
	bb.orgid,
	bb.billdefine,
	bb.jizqj,
	bb.leijzj,
	bb.zhejsl
ORDER BY
	bb.jizqj DESC;

SELECT i.LEIJZJ ,i.*,h.ORG_ID FROM GAMS_ASSETDEPREC_I i LEFT JOIN GAMS_ASSETDEPREC_H h ON i.MASTER_ID = h.ID WHERE h.JIZQJ = '202008' AND h.ORG_ID = '6E35BC1F80000001F6D62BD49F8EC9CC';
	
SELECT count(1) FROM GAMS_ASSETDEPREC_I i LEFT JOIN GAMS_ASSETDEPREC_H h ON i.MASTER_ID = h.ID WHERE h.JIZQJ = '202009' AND h.ORG_ID = '6E35BC1F80000001F6D62BD49F8EC9CC';

SELECT * FROM GAMS_ASSETDEPRECDETAIL ORDER BY JIZQJ ;

SELECT count(CARD_ID),CARD_ID FROM GAMS_ASSETDEPRECDETAIL ga WHERE ga.JIZQJ = '202008' GROUP BY CARD_ID   ;

SELECT * FROM GAMS_ASSETDEPRECDETAIL ga WHERE ga.JIZQJ = '202008' AND ga.CARD_ID = '6ED4E24A600002E1FE1A52668A238FDC' ;

SELECT * FROM  GAMS_ASSETDEPRECDETAIL ga 

SELECT * FROM GAMS_CARD gc WHERE id = '6ED4E24A600002E1FE1A52668A238FDC';
 
SELECT * FROM GAMS_ASSETDEPRECDETAIL ga WHERE ga.COMMENTS = '折旧信息批量变更';

SELECT * FROM GAMS2_WORKFLOW_DEFINITION gwd ;
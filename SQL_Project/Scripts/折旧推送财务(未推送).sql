--Œ¥Õ∆ÀÕ≤∆ŒÒ’€æ…
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
		biz.ORG_ID AS orgid,
		to_char('com.jiuqi.np.gams2.depreciation.AssetDepreciationBill') AS billdefine,
		biz.jizqj AS jizqj,
		sum(i.leijzj)+ sum(i.benczje) AS leijzj,
		count(i.id) AS zhejsl
	FROM
		GAMS_ASSETDEPREC_H biz
	LEFT JOIN GAMS_ASSETDEPREC_I i ON
		biz.id = i.MASTER_ID
	WHERE
		biz.BILL_STATE = 2
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')
	GROUP BY
		biz.id,
		biz.ORG_ID ,
		biz.jizqj) bb
LEFT JOIN GAMS_ASSETDEPRECDETAIL aa ON
	bb.orgid = aa.ORG_ID
	AND bb.jizqj = aa.jizqj
	WHERE bb.jizqj = 201901
GROUP BY
	bb.billid,
	bb.orgid,
	bb.billdefine,
	bb.jizqj,
	bb.leijzj,
	bb.zhejsl
ORDER BY
	bb.jizqj DESC ;
	
SELECT * FROM GAMS_ASSETDEPREC_I;

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2011000058';

SELECT * FROM gams_acceptanceuse WHERE ID = 'B7FBD15E36534BD09CB05C4CCB42BD98';

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE GI.ID = 'A5BAB072CEC84DFEB467620D89BAB37D';

select a.id ,b.cunfdd from gams_acceptanceuse a LEFT JOIN gams_card b  ON a.CARDID  = b.ID where a.lingyzt=0 and a.id='B7FBD15E36534BD09CB05C4CCB42BD98';

select a.id ,b.cunfdd from gams_acceptanceuse  a, gams_card b where a.cardid=b.id and a.lingyzt=0 and a.id='B7FBD15E36534BD09CB05C4CCB42BD98';

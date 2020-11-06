SELECT
	card.id,
	card.billdefine,
	card.billCode,
	card.zongje,
	card.zongsl,
	shenqr.name AS shenqr,
	card.shenqr AS shenqrid,
	shenqbm.name AS shenqbm,
	card.shenqbm AS shenqbmid,
	caig.title AS caigzzxs,
	card.caigzzxs AS caigzzxsid,
	card.shenqsj,
	card.xiangmmc,
	card.gonghs,
	card.heth,
	card.nirksj,
	card.yuany
FROM
	gams_expectedstorage card
LEFT JOIN BusinessProcessInstance AS bpi ON
	bpi.businessDataId = card.id
LEFT JOIN gams_jc_department AS shenqbm ON
	card.shenqbm = shenqbm.id
LEFT JOIN gams_jc_personnel AS shenqr ON
	card.shenqr = shenqr.id
LEFT JOIN gams_jc_purorgform caig ON
	card.caigzzxs = caig.id
WHERE
	1 = 1
	AND shenqr.code = CURRENTUSERNAME()
	AND bpi.last = TRUE
	AND bpi.workflowState = 2
	AND card.billCode LIKE :? billcode
	AND card.shenqbm IN (
	SELECT
		bm.id
	FROM
		gams_jc_department bm
	WHERE
		1 = 1
		AND bm.id =:? shiybm)
	AND card.shenqr IN (
	SELECT
		person.id
	FROM
		gams_jc_personnel person
	WHERE
		1 = 1
		AND person.id =:? shiyr)
	AND card.zongje >=:? jiaz_min
	AND card.zongje <=:? jiaz_max
	AND card.id IN (
	SELECT
		storagedetail.master
	FROM
		gams_expectedstorage_detail AS storagedetail
	WHERE
		storagedetail.id NOT IN(
		SELECT
			reimbursedetail.refdetailid
		FROM
			gams_reimburse_detail AS reimbursedetail
		WHERE
			reimbursedetail.refdetailid IS NOT NULL ))
ORDER BY
	card.createtime DESC"
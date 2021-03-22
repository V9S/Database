SELECT
	'' AS lingyzt,
	COALESCE(wly.wly, 0) AS wly,
	COALESCE(yly.yly, 0) AS yly,
	COALESCE(bly.bly, 0) AS bly,
	bpi.id AS taskId,
	gt.id AS id,
	gt.BILL_CODE AS billcode,
	shenqr.name AS shenqr,
	gt.shenqsj AS shenqsj,
	diaocbm.name AS diaocbm,
	diaorbm.name AS diaorbm
FROM
	GAMS2_WORKFLOW_BUS_PROCESS  bpi
JOIN gams_transfer  gt ON
	bpi.BUSINESS_DATA_ID = gt.id
LEFT JOIN gams_jc_department  diaocbm ON
	gt.diaocbm = diaocbm.id
LEFT JOIN gams_jc_department  diaorbm ON
	gt.diaorbm = diaorbm.id
LEFT JOIN gams_jc_personnel  shenqr ON
	gt.shenqr = shenqr.id
LEFT JOIN (
	SELECT
		count(detail.MASTER_ID)  wly,
		detail.MASTER_ID id
	FROM
		gams_transfer_detail detail
	JOIN gams_jc_personnel pe ON
		pe.id = detail.shiyr_new
	WHERE
		 (detail.isly IS NULL
		OR detail.isly = 0)
	GROUP BY
		detail.MASTER_ID)  wly ON
	gt.id = wly.id
LEFT JOIN (
	SELECT
		count(detail.MASTER_ID)  yly,
		detail.MASTER_ID id
	FROM
		gams_transfer_detail detail
	JOIN gams_jc_personnel pe ON
		pe.id = detail.shiyr_new
	WHERE
		 detail.isly = 1
	GROUP BY
		detail.MASTER_ID)  yly ON
	yly.id = gt.id
LEFT JOIN (
	SELECT
		count(detail.MASTER_ID)  bly,
		detail.MASTER_ID id
	FROM
		gams_transfer_detail detail
	JOIN gams_jc_personnel pe ON
		pe.id = detail.shiyr_new
	WHERE
		detail.isly = 2
	GROUP BY
		detail.MASTER_ID)  bly ON
	bly.id = gt.id
WHERE
	gt.lyenable = 1
	AND EXISTS (
	SELECT
		1
	FROM
		gams_transfer_detail detail
	JOIN gams_jc_personnel pe ON
		pe.id = detail.shiyr_new
	WHERE
		(detail.isly = 0
		OR detail.isly IS NULL)
		AND detail.MASTER_ID = gt.id)
	AND gt.yewlx = '部门内调拨'
ORDER BY
	gt.CREATE_TIME DESC;
	
SELECT * FROM gams_transfer_detail;
	
SELECT * FROM GAMS2_WORKFLOW_BUS_PROCESS;
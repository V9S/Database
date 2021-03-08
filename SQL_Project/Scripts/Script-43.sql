SELECT
	t.id
FROM
	GAMS_ACCEPTANCEUSE t
LEFT JOIN gams_card c ON
	t.cardid = c.id
LEFT JOIN GAMS_CARD_LOCK loc ON
	loc.cardobjectid = c.objectid
LEFT JOIN gams_jc_assetclass zicfl ON
	zicfl.id = c.zicfl
LEFT JOIN gams_jc_assetclass_ind hangyfl ON
	hangyfl.id = c.hangyfl
LEFT JOIN biz_jy00_gams_jc_jiaoyusage jiaoysyfx ON
	jiaoysyfx.id = c.jiaoysyfx
LEFT JOIN gams_jc_valuetype jiazlx ON
	jiazlx.id = c.jiazlx
LEFT JOIN gams_jc_gainmanner qudfs ON
	qudfs.id = c.qudfs
LEFT JOIN gams_jc_entryform ruzxs ON
	ruzxs.id = c.ruzxs
LEFT JOIN gams_jc_department shiybm ON
	shiybm.id = c.shiybm
LEFT JOIN gams_jc_personnel shiyr ON
	shiyr.id = t.lingyr
LEFT JOIN authz_user_identity ui ON
	ui.USER_ID = shiyr.USERID
LEFT JOIN gams_transfer_detail td ON
	t.cardid = td.cardid
LEFT JOIN AUTHZ_IDENTITY ide ON
	ide.id = ui.IDENTITY_ID
	AND (ide.name LIKE '%JQRJ_SRJYR%'
	OR ide.name LIKE '%SHIYR%')
WHERE
	t.lingyzt = 0
	AND t.cardid IS NOT NULL
	AND ide.id = '439A932D446C4D2AB213F7234AFE016A'
ORDER BY
	c.billcode DESC

SELECT * FROM NP_USER nu WHERE nu.NAME = '2015010097';
SELECT * FROM AUTHZ_IDENTITY ai WHERE ai.NAME LIKE '%2015010097%'
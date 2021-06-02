SELECT
	card.id  id,
	card.billcode,
	card.zicmc,
CASE
		WHEN COALESCE(biz.lingyzt, 0)= 0 THEN '未领用'
		WHEN COALESCE(biz.lingyzt, 0)= 1 THEN '已领用'
		ELSE '质疑中'
	END  lingyzt ,
	lingyr.name  lingyr,
	ue.telephone,
	biz.lingyyj,
	card.pinp,
	card.guigxh
FROM
	GAMS_ACCEPTANCEUSE biz
LEFT JOIN gams_card card ON
	card.id = biz.cardid
LEFT JOIN gams_jc_personnel lingyr ON
	lingyr.id = biz.lingyr
LEFT JOIN NP_USER ue ON
	ue.id = lingyr.userid
WHERE
	biz.billid = 'D8E350F47F574CE5BE038B7ABFB7CD06'
ORDER BY
	card.billcode DESC
	

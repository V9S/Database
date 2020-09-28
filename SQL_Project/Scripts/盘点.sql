SELECT
	i.zicbh AS zicbh,
	i.zicmc AS zicmc,
	hangyfl.title AS hangyfltitle,
	zicfl.title AS zicfltitle,
	i.pandsj AS pandsj,
	(
		CASE WHEN i.isCommit IS NULL
		OR i.isCommit = 0 THEN '未提交'
		ELSE '已提交'
	END) AS commitStatus,
	(
		CASE WHEN i.auditStatus IS NULL
		OR i.auditStatus = 0 THEN '未审核'
		WHEN i.auditStatus = 1 THEN '已审核'
		WHEN i.auditStatus = 2 THEN '审核驳回'
	END) AS auditStatusTitle,
	i.rejectReason AS rejectReason,
	'点击查看' AS cardImage,
	shiybm.name AS shiybmname,
	newshiybm.name AS newshiybmname,
	shiyr.name AS shiyrname,
	newshiyr.name AS newshiyrname,
	shij_shiyr.name AS shij_shiyrname,
	newshij_shiyr.name AS newshij_shiyrname,
	cunfdd.name AS cunfddname,
	newcunfdd.name AS newcunfddname,
	i.guigxh AS guigxh,
	i.pinp AS pinp,
	i.jiaz AS jiaz,
	(
		CASE WHEN hangyfl.name LIKE '0101%'
		OR hangyfl.name LIKE '0201%'
		OR hangyfl.name = '6050411' THEN i.mianj
		ELSE i.shul
	END) AS zhangmslmj,
	i.newshul AS newshul,
	i.cunybz AS cunybz,
	i.pandbz AS pandbz,
	i.id AS id,
	i.masterId AS masterId,
	i.cardid AS cardid,
	i.cardObjectid AS cardObjectid,
	hangyfl.carddefinename AS carddefine,
	hangyfl.id AS hangyfl,
	zicfl.id AS zicfl,
	i.isCommit AS isCommit,
	i.auditStatus AS auditStatus,
	shiybm.id AS shiybm,
	newshiybm.id AS newshiybm,
	shiyr.id AS shiyr,
	newshiyr.id AS newshiyr,
	shij_shiyr.id AS shij_shiyr,
	newshij_shiyr.id AS newshij_shiyr,
	cunfdd.id AS cunfdd,
	newcunfdd.id AS newcunfdd,
	(
		CASE WHEN hangyfl.name LIKE '0102%'
		OR hangyfl.name LIKE '03%'
		OR hangyfl.name LIKE '04%'
		OR hangyfl.name LIKE '05%'
		OR hangyfl.name LIKE '06%'
		OR hangyfl.name LIKE '07%'
		OR hangyfl.name LIKE '08%'
		OR hangyfl.name = '1102'
		OR hangyfl.name LIKE '12%'
		OR (hangyfl.name LIKE '14%'
		AND hangyfl.name <> '14010115')
		OR (hangyfl.name LIKE '605%'
		AND hangyfl.name <> '6050411') THEN 1
		ELSE 0
	END) AS isOneCardClass,
	(
		CASE WHEN hangyfl.name LIKE '0101%'
		OR hangyfl.name LIKE '0201%'
		OR hangyfl.name = '6050411' THEN 1
		ELSE 0
	END) AS isMianjClass,
	hangyfl.jildw AS jildw
FROM
	gams_inventory_i AS i
LEFT JOIN gams_jc_assetclass AS zicfl ON
	zicfl.id = i.zicfl
LEFT JOIN gams_jc_assetclass_ind AS hangyfl ON
	hangyfl.id = i.hangyfl
LEFT JOIN biz_jy00_gams_jc_jiaoyusage AS jiaoysyfx ON
	jiaoysyfx.id = i.jiaoysyfx
LEFT JOIN gams_jc_checkresult AS pandjg ON
	pandjg.id = i.pandjg
LEFT JOIN gams_jc_department AS shiybm ON
	shiybm.id = i.shiybm
LEFT JOIN gams_jc_department AS newshiybm ON
	newshiybm.id = i.newshiybm
LEFT JOIN gams_jc_personnel AS shiyr ON
	shiyr.id = i.shiyr
LEFT JOIN gams_jc_personnel AS newshiyr ON
	newshiyr.id = i.newshiyr
LEFT JOIN gams_jc_personnel AS shij_shiyr ON
	shij_shiyr.id = i.shij_shiyr
LEFT JOIN gams_jc_personnel AS newshij_shiyr ON
	newshij_shiyr.id = i.newshij_shiyr
LEFT JOIN gams_jc_depositary AS cunfdd ON
	cunfdd.id = i.cunfdd
LEFT JOIN gams_jc_depositary AS newcunfdd ON
	newcunfdd.id = i.newcunfdd
WHERE
	i.masterId = :? masterId
	AND pandjg.name = '00'
	AND i.hangyfl IN (:? hangyfl)
	AND i.zicfl IN (:? zicfl)
	AND i.jiaoysyfx IN (:? jiaoysyfx)
	AND i.jiaz >= :? jiaz_min
	AND i.jiaz <= :? jiaz_max
	AND i.shul >= :? shul_min
	AND i.shul <= :? shul_max
	AND i.zicbh LIKE :? zicbh
	AND i.zicbh >= :? billcode_min
	AND i.zicbh <= :? billcode_max
	AND i.zicmc LIKE :? zicmc
	AND truncday(i.qudrq) >= :? qudrq_min
	AND truncday(i.qudrq) <= :? qudrq_max
	AND truncday(i.caiwrzrq) >= :? caiwrzrq_min
	AND truncday(i.caiwrzrq) <= :? caiwrzrq_max
	AND i.auditStatus = :? auditStatus
	AND i.isCommit = :? isCommit
	AND i.shiybm IN (:? shiybm)
	AND i.shiyr IN (:? shiyr)
	AND i.shij_shiyr IN (:? shij_shiyr)
	AND i.cunfdd IN (:? cunfdd)
ORDER BY
	i.zicbh ASC",
	
SELECT * FROM AUTHZ_ROLE ar ;

SELECT * FROM gams_inventory_h ;

ALTER TABLE GAMS_INVENTORY_H DROP COLUMN noticeRange;

DELETE FROM gams_inventory_h ;


DELETE FROM gams_inventory_i ;
-- ÕÛ¾ÉÁÐ±í
SELECT
	bus.id,
	bus.billCode AS billcode,
	bus.creatorName,
	bus.jizqj ,
	bus.depState,
	bus.benczjze,
	bus.createTime,
	bus.caiwrzrq AS caiwrzrq,
	bus.kuaijpzh AS kuaijpzh,
CASE
		WHEN bus.pushmake = 1 THEN 'ÊÇ'
		ELSE '·ñ'
	END AS shifrz,
	bus.pushmake AS pushmake
FROM
	GAMS_ASSETDEPREC_H AS bus
WHERE
	bus.orgId = currOrgId()
	AND bus.billState = 2
	AND bus.jizqj >= to_char(:? jizqj_min, 'YYYYmm')
	AND bus.jizqj <= to_char(:? jizqj_max, 'YYYYmm')
	AND bus.createTime >= :? createTime_min
	AND bus.createTime <= :? createTime_max
ORDER BY
	bus.jizqj DESC"
	
	SELECT * FROM GAMS_ASSETDEPREC_H gah WHERE gah.JIZQJ = '202011';
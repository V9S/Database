SELECT
	card.id AS id,
	card.zicfl AS zicflcode,
	card.mianj AS mianj,
	'ÔÚÓÃ' AS state,
	0 AS isLock,
	card.id AS KEY,
	card.objectid AS cardobjectid,
	card.objectid AS objectid,
	card.billcode AS billcode,
	card.zicmc AS zicmc,
	card.guigxh AS guigxh,
	card.sortgb AS sortgbmc,
	card.sortgb AS sortgb,
	card.jiaoysyfx AS jiaoysyfx,
	card.zicfl AS zicflmc,
	card.zicfl AS zicfl,
	card.qudfs AS qudfsmc,
	card.qudfs AS qudfs,
	card.jildw AS jildw,
	card.shul AS shul,
	card.qudrq AS qudrq,
	card.jiaz AS jiaz,
	card.leijzj AS leijzj,
	card.jingz AS jingz,
	card.shiyzk AS shiyzkmc,
	card.shiyzk AS shiyzk,
	card.yujsmzl AS yujsmzl,
	card.yitzjys AS yitzjys,
	card.cunfdd AS weizmc,
	card.cunfdd AS weiz,
	caiwrz.title AS caiwsfrz,
	card.caiwrzrq AS caiwrzrq,
	card.shiyr AS shiyr,
	card.jizrq AS jizrq,
	card.shiybm AS shiybm,
	card.shiybm AS shiybmid,
	card.pinp AS pinp,
	card.hangyfl AS hangyflmc,
	card.hangyfl AS hangyfl,
	card.hangydl AS hangydlmc,
	card.hangyfl AS carddefineid
FROM
	gams_card card
LEFT JOIN gams_jc_entryform caiwrz ON
	card.ruzxs = caiwrz.id
WHERE
	card.auditstate = 2
	AND card.id NOT IN (:? idList)
	AND card.jiaoysyfx IN (:? jiaoysyfx)
	AND card.orgunit = currorgid()
	AND card.billcode LIKE :? billcode
	AND card.yuanzcbh LIKE :? yuanzcbh
	AND card.yuanzcbh >=:? yuanzcbh_min
	AND card.yuanzcbh <=:? yuanzcbh_max
	AND card.zicmc LIKE :? zicmc
	AND card.shiybm IN (:? shiybm)
	AND card.zicfl = :? zicfl
	AND card.shiyr IN (:? shiyr)
	AND card.cunfdd = :? cunfdd
	AND card.cardstate LIKE '0%'
	AND card.shixrq > getdate()
	AND card.jiaz >= :? jiaz_min
	AND card.jiaz <= :? jiaz_max
	AND card.shul > :? shul_min
	AND card.shul <= :? shul_max
	AND card.guigxh LIKE :? guigxh
	AND truncday(card.qudrq) >= :? qudrq_min
	AND truncday(card.qudrq) <= :? qudrq_max
	AND truncday(card.caiwrzrq) >= :? caiwrzrq_min
	AND truncday(card.caiwrzrq) <= :? caiwrzrq_max
	AND truncday(card.jizrq) >= :? jizrq_min
	AND truncday(card.jizrq) <= :? jizrq_max
	AND card.pinp LIKE :? pinp
	AND card.zicfl IN (:? zicfl)
	AND card.billcode IN (:? billCodes)
	AND card.yuanzcbh IN (:? yuanbillCodes)
	AND card.billcode >= :? zcbh_min
	AND card.billcode <= :? zcbh_max
	AND card.objectid NOT IN (
	SELECT
		c.cardobjectid
	FROM
		cardlock c
	WHERE
		c.cardobjectid IS NOT NULL
		AND c.lockerbizid IS NOT NULL )
	AND card.caiwrzrq IS NOT NULL ",
SELECT
	card.id,
	card.objectid AS cardobjectid,
	card.caiwrzrq AS caiwrzrq,
	lock.bizdes AS bizdes,
CASE
		WHEN lock.bizdes IS NULL THEN to_char('在用')
		ELSE to_char(lock.bizdes) + to_char('中')
	END AS state,
	card.yujsmzl AS yujsmzl,
	(
		CASE WHEN lock.id IS NULL THEN 0
		WHEN lock.id IS NOT NULL THEN 1
	END) AS isLock,
	(
		CASE WHEN ruzxs.name = '02' THEN '未入账卡片不允许做校内处置申请'
		ELSE ''
	END ) AS customLockMessage,
	(
		CASE WHEN ruzxs.name = '02' THEN 1
		ELSE 0
	END ) AS customIsLock,
	card.id AS KEY,
	card.zicmc AS zicmc,
	card.billcode AS billcode,
	card.zicfl AS zicfl,
	card.hangyfl AS hangyfl,
	card.shiyzk AS shiyzk,
	card.shiybm AS shiybm,
	card.shiyr AS shiyr,
	card.jiaoysyfx AS jiaoysyfx,
	card.shul,
	card.jiaz,
	card.jiazlx AS jiazlx,
	card.kuaijpzh,
	card.guigxh,
	card.ruzxs AS ruzxs,
	card.jizrq,
	card.qudfs AS qudfs,
	card.qudrq,
	card.cunfdd AS cunfdd,
	card.beiz
FROM
	gams_card card
LEFT JOIN CardLock LOCK ON
	lock.cardobjectid = card.objectid
LEFT JOIN gams_jc_entryform ruzxs ON
	ruzxs.id = card.ruzxs
WHERE
	1 = 1
	AND (card.objectid IN (
	SELECT
		cardobjectid
	FROM
		cardlock
	WHERE
		cardobjectid IS NOT NULL)
	OR ruzxs.name = '02')
	AND card.auditstate = 2
	AND card.jiaoysyfx IN (:? jiaoysyfx)
	AND card.id NOT IN (:? idList)
	AND card.orgunit = CURRORGID()
	AND card.billcode LIKE :? billcode
	AND card.billcode >= :? billCode_min
	AND card.billcode <= :? billCode_max
	AND card.billcode IN (:? billcodes)
	AND card.yuanzcbh IN (:? yuanzcbhs)
	AND card.yuanzcbh LIKE :? yuanzcbh
	AND card.yuanzcbh >=:? yuanzcbh_min
	AND card.yuanzcbh <=:? yuanzcbh_max
	AND card.zicmc LIKE :? zicmc
	AND truncday(card.qudrq) >= truncday(:? qudrq_min)
	AND truncday(card.qudrq)<= truncday(:? qudrq_max)
	AND truncday(card.jizrq) >= truncday(:? jizrq_min)
	AND truncday(card.jizrq)<= truncday(:? jizrq_max)
	AND truncday(card.caiwrzrq) >= truncday(:? caiwrzrq_min)
	AND truncday(card.caiwrzrq) <= truncday(:? caiwrzrq_max)
	AND card.cardstate LIKE '0%'
	AND card.shixrq>getdate()
	AND card.jiaz > :? jiaz_min
	AND card.shiybm IN (:? shiybm)
	AND card.shiyr IN (:? shiyr)
	AND card.cunfdd IN (:? cunfdd)
	AND card.jiaz <= :? jiaz_max
	AND card.shul >:? shul_min
	AND card.shul <=:? shul_max
	AND card.guigxh LIKE :? guigxh
	AND COALESCE(lock.lockerbiztype,
	'在用') LIKE :? bizstate
	
	SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE BILL_CODE = 'YSSZ2019000003'
	
	SELECT * FROM GAMS2_WORKFLOW_COMMON_TASK gwct WHERE gwct.BUSINESS_DATA_ID = '5e8ce2eb9f2349b8b549b2be7b845693';

SELECT * FROM GAMS2_WORKFLOW_BUS_PROCESS gwbp ;

SELECT * FROM GAMS2_WORKFLOW_PROCESS_INS gwpi ;
	
SELECT
	card.id,
	card.objectid AS cardobjectid,
	lock.LOCKERBIZTYPE AS biztype,
	lock.bizDes AS bizdes,
	card.id AS key,
CASE
		WHEN lock.bizdes IS NULL THEN to_char('在用')
		ELSE to_char(lock.bizdes) + to_char('中')
	END AS state,
	card.zicmc AS zicmc,
	card.billcode AS billcode,
	card.yuanzcbh,
	card.zicfl AS zicfl,
	card.hangyfl AS hangyfl,
	card.shiyzk AS shiyzk,
	card.shiybm AS shiybm,
	card.shiyr AS shiyr,
	card.jiaoysyfx AS jiaoysyfx,
	card.shul,
	card.yujsmzl AS yujsmzl,
	card.jiaz,
	card.jiazlx AS jiazlx,
	card.kuaijpzh,
	card.guigxh,
	'已入账' AS ruzxs,
	card.jizrq,
	card.qudfs AS qudfs,
	card.qudrq,
	card.cunfdd AS cunfdd,
	card.beiz
FROM
	gams_card  card
LEFT JOIN GAMS_CARD_LOCK lock ON
	LOCK.CARDOBJECTID = card.objectid
WHERE
	1 = 1
	AND card.objectid NOT IN (
	SELECT
		CARDOBJECTID 
	FROM
		GAMS_CARD_LOCK
	WHERE
		cardobjectid IS NOT NULL)
	AND card.auditstate = 2
	AND card.cardstate LIKE '0%'
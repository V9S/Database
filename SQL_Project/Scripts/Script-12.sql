define query queryInfo(@orgunit guid,
@sortgb guid,
@hangydl guid,
@jizrq_min DATE,
@jizrq_max DATE,
@zicfl guid,
@hangyfl guid,
@jiaoysyfx guid,
@shiybm guid,
@shiyr guid,
@cunfdd guid,
@zicgs guid,
@nature string,
@nature2 string,
@nature3 string,
@biztype1 string,
@biztype2 string,
@biztype3 string)
BEGIN
	SELECT
	c.id AS id,
	c.objectid AS objectid,
	c.billcode AS billcode,
	c.zicmc AS zicmc,
	c.zicfl AS zicfl,
	c.hangyfl AS hangyfl,
	c.jizrq AS jizrq,
	COALESCE(ch.shul_z, 0) AS shulz,
	COALESCE(ch.mianj_z, 0) AS mianjz,
	COALESCE(ch.jiaz_z, 0) AS jiazz,
	c.jiaoysyfx AS jiaoysyfx,
	c.shiybm AS shiybm,
	c.shiyr AS shiyr,
	c.cunfdd AS cunfdd,
	c.zicgs AS zicgs,
	c.shiyzk AS shiyzk,
	c.ruzxs AS ruzxs,
	c.sortgb AS sortgb,
	c.hangydl AS hangydl,
	c.beiz AS beiz
FROM
	gams_card_change AS ch
LEFT JOIN gams_card AS c ON
	ch.cardid = c.id
WHERE
	c.cunfdd IN (@cunfdd)
	AND c.shiyr IN (@shiyr)
	AND c.shiybm IN (@shiybm)
	AND c.zicgs IN (@zicgs)
	AND c.hangyfl IN (@hangyfl)
	AND c.zicfl IN (@zicfl)
	AND c.jiaoysyfx IN (@jiaoysyfx)
	AND truncday(ch.jizrq) >= truncday(@jizrq_min)
	AND truncday(ch.jizrq) <= truncday(@jizrq_max)
	AND (COALESCE(ch.shul_z, 0) <> 0
	OR COALESCE(ch.mianj_z, 0) <> 0
	OR COALESCE(ch.jiaz_z, 0) <> 0)
	AND ch.nature = @nature
	AND ch.biztype <> @biztype1
	AND ch.biztype = @biztype2
	AND (ch.nature IN (@nature2)
	OR (ch.nature = @nature3
	AND ch.biztype = @biztype3))
	AND ch.sortgb = @sortgb
	AND ch.hangydl = @hangydl
	AND ch.org = @orgunit
END ",
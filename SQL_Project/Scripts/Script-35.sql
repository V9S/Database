(@RQ1 DATE,
@RQ2 DATE,
@bill_code string,
@shiyr guid,
@zicfl guid,
@sortgb guid,
@cunfdd guid,
@shiybm guid,
@billcode_min string,
@billcode_max string)
BEGIN
	SELECT
	card.id AS id,
	card.id AS cardid,
	cunfdd1.name AS cunfdd,
	'' AS billCode,
	'' AS shenqbm,
	'' AS yuany_bill,
	'' AS shenqr,
	card.billcode AS zicbh,
	card.zicmc AS zicmc,
	card.zicfl AS zicflid,
	zicfl1.title AS zicfl,
	card.shiyr AS shiyrid,
	shenqr1.name AS shiyr,
	card.shiybm AS shiybmid,
	shiybm1.name AS shiybm,
	card.shul AS shul,
	card.jiaz AS jiaz,
	'' AS yuany_card
FROM
	gams_card AS card
LEFT JOIN GAMS_JC_PERSONNEL AS shenqr1 ON
	card.shiyr = shenqr1.id
LEFT JOIN gams_jc_assetclass AS zicfl1 ON
	card.zicfl = zicfl1.id
LEFT JOIN gams_jc_department AS shiybm1 ON
	card.shiybm = shiybm1.id
LEFT JOIN gams_jc_depositary AS cunfdd1 ON
	cunfdd1.id = card.cunfdd
WHERE
	cunfdd1.code IN ('hsck_004')
	AND card.shiyr = @shiyr
	AND card.zicfl IN (@zicfl)
	AND card.sortgb IN (@sortgb)
	AND card.cunfdd IN (@cunfdd)
	AND card.billcode LIKE '%' + @bill_code + '%'
	AND card.shiybm = @shiybm
	AND card.billcode >= @billcode_min
	AND card.billcode <= @billcode_max
UNION ALL
SELECT
	t.id AS id,
	td.cardid AS cardid,
	cunfdd.name AS cunfdd,
	to_char(t.billCode) AS billCode,
	to_char(shenqbm.name) AS shenqbm,
	to_char(t.yuany) AS yuany_bill,
	to_char(shenqr.name) AS shenqr,
	td.zicbh AS zicbh,
	td.zicmc AS zicmc,
	td.zicfl AS zicflid,
	zicfl.title AS zicfl,
	td.shiyr AS shiyrid,
	shiyr.name AS shiyr,
	td.shiybm AS shiybmid,
	shiybm.name AS shiybm,
	td.shul AS shul,
	td.jiaz AS jiaz,
	to_char(td.yuany) AS yuany_card
FROM
	gams_innerdispreg_detail AS td
LEFT JOIN gams_innerdispreg AS t ON
	td.master = t.id
LEFT JOIN gams_jc_department AS shenqbm ON
	t.shenqbm = shenqbm.id
LEFT JOIN GAMS_JC_PERSONNEL AS shenqr ON
	t.shenqr = shenqr.id
LEFT JOIN gams_jc_assetclass AS zicfl ON
	td.zicfl = zicfl.id
LEFT JOIN GAMS_JC_PERSONNEL AS shiyr ON
	td.shiyr = shiyr.id
LEFT JOIN gams_jc_department AS shiybm ON
	td.shiybm = shiybm.id
LEFT JOIN gams_card AS c ON
	td.cardid = c.id
LEFT JOIN gams_jc_depositary AS cunfdd ON
	cunfdd.id = c.cunfdd
WHERE
	truncday(t.shenqrq) >= truncday(@RQ1)
	AND truncday(t.shenqrq) <= truncday(@RQ2)
	AND t.billCode LIKE '%' + @bill_code + '%'
	AND td.shiyr = @shiyr
	AND c.zicfl IN (@zicfl)
	AND c.sortgb IN (@sortgb)
	AND c.cunfdd IN (@cunfdd)
	AND td.shiybm = @shiybm
	AND td.zicbh >= @billcode_min
	AND td.zicbh <= @billcode_max
END
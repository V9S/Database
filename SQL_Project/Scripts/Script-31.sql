SELECT
	t.id,
CASE
		to_char(t.billdefine) WHEN 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine' THEN '验收上账'
		WHEN 'com.jiuqi.np.gams2.business.bill.TransferBillDefine' THEN '部门间调拨'
		WHEN 'com.jiuqi.np.gams2.business.bill.InnerTransferBillDefine' THEN '部门内调拨'
		ELSE '验收上账'
	END AS lingyly,
	t.billdefine AS biztype,
	t.billid,
	c.version,
	c.creator,
	c.createtime,
	c.auditstate,
	hangyfl.carddefinename AS billdefine,
	c.objectid,
	c.orgunit,
	c.cardstate,
	c.yewxlh,
	c.billcode,
	c.zicmc,
	zicfl.title AS zicfl,
	zicfl.id AS zicflid,
	hangyfl.id AS hangyflid,
	hangyfl.title AS hangyfl,
	jiaoysyfx.title AS jiaoysyfx,
	c.danj,
	c.shul,
	c.mianj,
	jiazlx.title AS jiazlx,
	c.jiaz AS jiaz,
	c.caizxzj,
	c.feiczxzj,
	qudfs.title AS qudfs,
	c.qudrq,
	c.jizrq,
CASE
		WHEN ruzxs.title IS NULL THEN to_char('未入账')
		ELSE to_char(ruzxs.title)
	END AS ruzxs,
	c.caiwrzrq,
	c.yujsmzl,
	c.kuaijpzh,
	shiybm.name AS shiybm,
	shiyr.name AS shiyr,
	cunfdd.name AS cunfdd,
	zhejzt.title AS zhejzt,
	c.beiz,
	c.id AS cardid,
	c.cunfdd AS cunfddid,
	c.shiyr AS shiyrid
FROM
	GamsAcceptanceUseInfo AS t
LEFT JOIN gams_card AS c ON
	t.cardid = c.id
LEFT JOIN CardLock AS loc ON
	loc.cardobjectid = c.objectid
LEFT JOIN gams_jc_assetclass AS zicfl ON
	zicfl.id = c.zicfl
LEFT JOIN gams_jc_assetclass_ind AS hangyfl ON
	hangyfl.id = c.hangyfl
LEFT JOIN biz_jy00_gams_jc_jiaoyusage AS jiaoysyfx ON
	jiaoysyfx.id = c.jiaoysyfx
LEFT JOIN gams_jc_valuetype AS jiazlx ON
	jiazlx.id = c.jiazlx
LEFT JOIN gams_jc_gainmanner AS qudfs ON
	qudfs.id = c.qudfs
LEFT JOIN gams_jc_entryform AS ruzxs ON
	ruzxs.id = c.ruzxs
LEFT JOIN gams_jc_department AS shiybm ON
	shiybm.id = c.shiybm
LEFT JOIN gams_jc_personnel AS shiyr ON
	shiyr.id = t.lingyr
LEFT JOIN gams_jc_depositary AS cunfdd ON
	cunfdd.id = c.cunfdd
LEFT JOIN gams_jc_deprecstate AS zhejzt ON
	zhejzt.id = c.zhejzt
LEFT JOIN user_identity ui ON
	ui.userId = shiyr.userid
LEFT JOIN IDENTITY ide ON
	ide.id = ui.identityId
	AND (ide.name LIKE '%JQRJ_SRJYR%'
	OR ide.name LIKE '%SHIYR%')
WHERE
	c.billcode LIKE :? billcode
	AND c.zicmc LIKE :? zicmc
	AND c.jiaoysyfx IN (:? jiaoysyfx)
	AND c.jiaz >= :? jiaz_min
	AND c.jiaz <= :? jiaz_max
	AND c.shul >=:? shul_min
	AND c.shul <=:? shul_max
	AND c.billcode >= :? billcode_min
	AND c.billcode <= :? billcode_max
	AND truncday(c.qudrq) >= truncday(:? qudrq_min)
	AND truncday(c.qudrq) <= truncday(:? qudrq_max)
	AND truncday(c.caiwrzrq) >= truncday(:? caiwrzrq_min)
	AND truncday(c.caiwrzrq) <= truncday(:? caiwrzrq_max)
	AND COALESCE(to_char(ruzxs.name), to_char('02')) IN (:? ruzxs)
	AND truncday(c.jizrq) >= truncday(:? jizrq_min)
	AND truncday(c.jizrq) <= truncday(:? jizrq_max)
	AND c.shiybm IN (:? shiybm)
	AND c.shiyr IN (:? shiyr)
	AND c.cunfdd IN (:? cunfdd)
	AND c.cardstate LIKE '0%'
	AND c.shixrq>getdate()
	AND shiyr.userid = CURRENTuserid()
	AND t.lingyzt = 0
	AND t.cardid IS NOT NULL
	AND ide.id = CustomFunc('currentIdentityId')
ORDER BY
	c.billcode DESC "
	
	SELECT * FROM AUTHZ_USER_IDENTITY ai w;
	B42F14F092B942079680C5B1DBBFDC50
SELECT * FROM AUTHZ_IDENTITY ai WHERE ai.name LIKE '%2016010053%'

SELECT * FROM GAMS_JC_FUNDNUMBER gjf 
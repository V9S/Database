SELECT
	gh.id AS billid,
	gh.createTime,
	gh.billCode AS billcode,
	gh.billdefine AS billdefine,
	gh.shenqrq,
	gh.shul AS zongsl,
	gh.jiaz AS zongjz,
	gh.beiz,
	shenqr.name AS yansr,
	shenqr.id AS userId,
	shenqbm.name AS yansbm,
	shenqbm.id AS departmentId ,
	c.billcode AS bianh,
	c.mingc,
	c.zicfl AS zicflid,
	cls.title AS zicfl,
	c.hangyfl AS hangyflid,
	ind.title AS hangyfl,
	c.pinp,
	c.guigxh,
	c.zijly AS zijlyid,
	zjly.title AS zijly,
	c.qudfs AS qudfsid,
	gnr.title AS qudfs,
	c.shul,
	c.danj,
	c.jiaz,
	c.jizrq,
	c.qudrq,
	dpt.name AS shiybm,
	prl.name AS shiyr,
	dpy.name AS cunfdd
FROM
	gams_lvnhinbound_detail dets
LEFT JOIN gams_lvnhinbound gh ON
	dets.master = gh.id
LEFT JOIN gams_jc_department shenqbm ON
	gh.yansbm = shenqbm.id
LEFT JOIN gams_jc_personnel shenqr ON
	gh.yansr = shenqr.id
LEFT JOIN gams_lvnhcard c ON
	dets.id = c.rebillid
LEFT JOIN gams_jc_assetclass cls ON
	cls.id = c.zicfl
LEFT JOIN gams_jc_assetclass_ind ind ON
	ind.id = c.hangyfl
LEFT JOIN gams_jc_zijly zjly ON
	zjly.id = c.zijly
LEFT JOIN gams_jc_gainmanner gnr ON
	gnr.id = c.qudfs
LEFT JOIN gams_jc_department dpt ON
	dpt.id = c.shiybm
LEFT JOIN gams_jc_personnel prl ON
	prl.id = c.shiyr
LEFT JOIN gams_jc_depositary dpy ON
	dpy.id = c.cunfdd
WHERE
	gh.workflowState = 2
	AND gh.billCode LIKE :? billcode
	AND truncday(gh.shenqrq) = truncday(:? shenqrq)
	AND truncday(gh.shenqrq) >= truncday(:? shenqrq_min)
	AND truncday(gh.shenqrq) <= truncday(:? shenqrq_max)
	AND gh.yansbm = :? yansbm
	AND gh.yansr = :? yansr
	AND gh.shul >= :? shul_min
	AND gh.shul <= :? shul_max
	AND gh.jiaz >= :? jiaz_min
	AND gh.jiaz <= :? jiaz_max
	AND gh.billCode >= :? billCode_min
	AND gh.billCode <= :? billCode_max
	AND gh.billCode LIKE :? billcode
	AND gh.shenqrq = :? shenqrq
	AND gh.beiz LIKE :? beiz
	AND c.islastest = 1
ORDER BY
	gh.createTime DESC",
	
	SELECT * FROM gams_lvnhinbound_detail;
	
SELECT * FROM gams_lvnhcard;

SELECT CREATETIME ,MODIFYTIME FROM GAMS_JC_DEPOSITARY gjp ;

SELECT MODIFYTIME FROM GAMS_CARD gc ;
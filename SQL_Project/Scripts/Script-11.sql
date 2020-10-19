SELECT
	t.id,
CASE
		to_char(t.billdefine) WHEN 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine' THEN '验收上账'
		WHEN 'com.jiuqi.np.gams2.core.gams_set_card' THEN '直接新增'
		WHEN 'com.jiuqi.np.gams2.business.bill.TransferBillDefine' THEN '部门间调拨'
		WHEN 'com.jiuqi.np.gams2.business.bill.InnerTransferBillDefine' THEN '部门内交接'
		ELSE '验收上账'
	END lingyly,
	t.billdefine biztype,
	t.billid,
	c.version,
	c.creator,
	c.createtime,
	c.auditstate,
	hangyfl.carddefinename billdefine,
	c.objectid,
	c.orgunit,
	c.cardstate,
	c.yewxlh,
	c.billcode,
	c.zicmc,
	zicfl.name zicflname,
	zicfl.title zicfl,
	zicfl.id zicflid,
	zicfl.name zicflcode,
	hangyfl.name hangyflcode,
	hangyfl.id hangyflid,
	hangyfl.title hangyfl,
	jiaoysyfx.title jiaoysyfx,
	c.danj,
	c.shul,
	c.mianj,
	jiazlx.title jiazlx,
	c.jiaz jiaz,
	c.caizxzj,
	c.feiczxzj,
	qudfs.title qudfs,
	c.qudrq,
	c.jizrq,
CASE
		WHEN ruzxs.title IS NULL THEN to_char('未入账')
		ELSE to_char(ruzxs.title)
	END ruzxs,
	c.caiwrzrq,
	c.yujsmzl,
	c.kuaijpzh,
	shiybm.name shiybm,
	shiyr.name shiyr,
	cunfdd.name cunfdd,
	zhejzt.title zhejzt,
	c.beiz,
	c.id cardid,
	c.cunfdd cunfddid,
	c.shiyr shiyrid
FROM
	GAMS_ACCEPTANCEUSE t
LEFT JOIN gams_card c ON
	t.cardid = c.id
LEFT JOIN GAMS_CARD_LOCK loc ON
	loc.CARDOBJECTID = c.objectid
LEFT JOIN GAMS_JC_ASSETCLASS zicfl ON
	zicfl.id = c.zicfl
LEFT JOIN GAMS_JC_ASSETCLASS_IND hangyfl ON
	hangyfl.id = c.hangyfl
LEFT JOIN biz_jy00_gams_jc_jiaoyusage jiaoysyfx ON
	jiaoysyfx.id = c.jiaoysyfx
LEFT JOIN gams_jc_valuetype jiazlx ON
	jiazlx.id = c.jiazlx
LEFT JOIN gams_jc_gainmanner qudfs ON
	qudfs.id = c.qudfs
LEFT JOIN gams_jc_entryform ruzxs ON
	ruzxs.id = c.ruzxs
LEFT JOIN gams_jc_department shiybm ON
	shiybm.id = c.shiybm
LEFT JOIN gams_jc_personnel shiyr ON
	shiyr.id = t.lingyr
LEFT JOIN gams_jc_depositary cunfdd ON
	cunfdd.id = c.cunfdd
LEFT JOIN gams_jc_deprecstate zhejzt ON
	zhejzt.id = c.zhejzt
LEFT JOIN AUTHZ_USER_IDENTITY ui ON
	ui.USER_ID = shiyr.userid
LEFT JOIN AUTHZ_IDENTITY ide ON
	ide.id = ui.IDENTITY_ID
	AND ide.NAME LIKE '%SHIYR%'
WHERE
	c.cardstate LIKE '0%'
	AND t.lingyzt = 0
	AND t.cardid IS NOT NULL
	AND COALESCE(to_char(ruzxs.name),
	to_char('02')) IN ('01','02')
ORDER BY
	c.billcode DESC






SELECT
	c.BILLCODE ,
	ga.BILLDEFINE ,
	ga.*
FROM
	GAMS_ACCEPTANCEUSE ga
LEFT JOIN GAMS_CARD c ON
	ga.cardid = c.id
WHERE
	ga.lingyzt = 0
	AND ga.BILLDEFINE = 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine'
	AND ga.BILLDEFINE IS NOT NULL
	AND ga.cardid IS NOT NULL
	AND c.CARDSTATE LIKE '0%';
	
SELECT * FROM GAMS_JC_ENTRYFORM gje ;

SELECT *FROM GAMS_ACCEPTANCEUSE ga WHERE ga.ID = '964ABE7392C548F9B4D3C281D26BA6BA'; --领用信息表

SELECT gc.* FROM GAMS_CARD gc ; --卡片表

SELECT * FROM GAMS_CARD_LOCK gcl ;  --卡片锁定表

-- 更新卡片realname字段

--更新使用信息表

1、更新gams_acceptanceuse
2、删除GAMS_CARD_LOCK


f7d81c5e-b192-4a65-a911-eba63ef8b033

delete from "GAMS_CARD_LOCK" "null" where "CARDOBJECTID"=?

update gams_acceptanceuse set lingyzt=?, lingyyj=? where id=?

update "GAMS_CARD" "gams_card" set "VERSION"=?,"CREATOR"=?,"CREATETIME"=?,"MODIFYTIME"=?,"BILLCODE"=?,"BEIYZD"=?,"YUJSMZL"=?,"AUDITSTATE"=?,"BILLDEFINE"=?,"OBJECTID"=?,"REBILLID"=?,"ORGUNIT"=?,"CARDSTATE"=?,"YEWXLH"=?,"YUANSJZRQ"=?,"JIZQJ"=?,"JIZRQ"=?,"ZICMC"=?,"ZICFL"=?,"HANGYFL"=?,"HANGYFLNEW"=?,"HANGYDL"=?,"SORTGB"=?,"SHIYXZ"=?,"YUSXMBH"=?,"JILDW"=?,"SHIYZK"=?,"JIAOYSYFX"=?,"QUDFS"=?,"QUDRQ"=?,"JIAZLX"=?,"JIAZ"=?,"SHUL"=?,"DANJ"=?,"CAIZXZJ"=?,"FEICZXZJ"=?,"RUZXS"=?,"CAIWRZRQ"=?,"KUAIJPZH"=?,"SHIYBM"=?,"GUANLBM"=?,"CUNFDD"=?,"SHIYR"=?,"BEIZ"=?,"LEIJZJ"=?,"YITZJYS"=?,"YUEZJE"=?,"JIANZZB"=?,"CANZ"=?,"CANZL"=?,"JINGZ"=?,"ZHEJZT"=?,"TANXZT"=?,"YUANZCBH"=?,"SHIXRQ"=?,"PINP"=?,"YANSRKDH"=?,"GUIGXH"=?,"ZHEJFF"=?,"TOURSYRQ"=?,"JINGFKM"=?,"GUOBM"=?,"CAIGJBR"=?,"CAIGZZXS"=?,"XIANGMMC"=?,"BAOXJZRQ"=?,"GONGHS"=?,"YULZFZD"=?,"YULSZZD"=?,"MIANJ"=?,"JIAOYFLH"=?,"CHANPXLH"=?,"ZICGS"=?,"ISLASTEST"=?,"FYLB"=?,"DATASOURCE"=?,"ISREALNAME"=?,"SHIJ_SHIYR"=?,"CAIWJZRQ"=?,"CUNFDD_OLD"=?,"SHIYR_OLD"=?,"SHIYBM_OLD"=?,"RUKRQ"=?,"FINALBILLID"=?,"PRINTNUM"=? where "gams_card"."ID"=?
update "GAMS_CARD_TYSB" "gams_card_tysb" set "YITZJYS"=?,"YUEZJE"=?,"BILLCODE"=?,"BEIYZD"=?,"TOURSYRQ"=?,"CAIGZZXS"=?,"JIXS"=?,"YUJSMZL"=?,"BAOXJZRQ"=?,"PINP"=?,"HETBH"=?,"FAPH"=?,"GUIGXH"=?,"SHENGCCJ"=?,"KFF"=?,"XCFS"=?,"CHANPXLH"=?,"SHEBYT"=?,"GUOBM"=?,"SHIFJK"=?,"SHIFMS"=?,"MIANSDH"=?,"VERSION"=?,"CREATOR"=?,"CREATETIME"=?,"MODIFYTIME"=?,"AUDITSTATE"=?,"BILLDEFINE"=?,"OBJECTID"=?,"ORGUNIT"=?,"CARDSTATE"=?,"YEWXLH"=?,"YUANSJZRQ"=?,"JIZQJ"=?,"JIZRQ"=?,"ZICMC"=?,"ZICFL"=?,"HANGYFL"=?,"HANGYFLNEW"=?,"HANGYDL"=?,"SORTGB"=?,"YUSXMBH"=?,"JILDW"=?,"SHIYZK"=?,"JIAOYSYFX"=?,"QUDFS"=?,"QUDRQ"=?,"JIAZLX"=?,"JIAZ"=?,"SHUL"=?,"DANJ"=?,"CAIZXZJ"=?,"FEICZXZJ"=?,"RUZXS"=?,"CAIWRZRQ"=?,"KUAIJPZH"=?,"SHIYBM"=?,"GUANLBM"=?,"CUNFDD"=?,"SHIYR"=?,"BEIZ"=?,"LEIJZJ"=?,"CANZ"=?,"CANZL"=?,"JINGZ"=?,"ZHEJZT"=?,"TANXZT"=?,"YUANZCBH"=?,"SHIXRQ"=?,"CHUBS"=?,"CHUBRQ"=?,"BAOCNX"=?,"DANGAH"=?,"JINGFKM"=?,"CAIGJBR"=?,"SHIYXZ"=?,"CHUCH"=?,"ZHEJFF"=?,"YULZFZD"=?,"YULSZZD"=?,"FADJH"=?,"CHELSBH"=?,"BIANZQK"=?,"CHEPH"=?,"PAIQL"=?,"CHELCD"=?,"CHELXSZ"=?,"CHIZR"=?,"YONGTFL"=?,"CHELPP"=?,"CHELPPBZ"=?,"YANSRKDH"=?,"JIAOYFLH"=?,"PEIZBZFLMC"=?,"LAIYD"=?,"ZICGS"=?,"ZHUCDJRQ"=?,"ISLASTEST"=?,"EXTENDFIELDS"=?,"SHIFHGJG"=?,"FANGXRQ"=?,"BAOGDH"=?,"ZHENGMSZMXH"=?,"JINKKA"=?,"HAIGHTH"=?,"ZHUGHG"=?,"SHENBGXBZ"=?,"SHOUFBZYPY"=?,"HSBM"=?,"REBILLID"=?,"FYLB"=?,"DATASOURCE"=?,"ISREALNAME"=?,"SHIJ_SHIYR"=?,"CAIWJZRQ"=?,"CUNFDD_OLD"=?,"SHIYR_OLD"=?,"SHIYBM_OLD"=?,"RUKRQ"=?,"FINALBILLID"=? where "gams_card_tysb"."ID"=?
delete from "GAMS_CARD_OUTLAY" "null" where "MASTER_ID"=?
select * from (select "$T0".*,rownum "$F" from (select "gams_card"."ID" "id","gams_card"."VERSION" "version","gams_card"."CREATOR" "creator","gams_card"."CREATETIME" "createtime","gams_card"."MODIFYTIME" "modifytime","gams_card"."BILLCODE" "billcode","gams_card"."BEIYZD" "beiyzd","gams_card"."YUJSMZL" "yujsmzl","gams_card"."AUDITSTATE" "auditstate","gams_card"."BILLDEFINE" "billdefine","gams_card"."OBJECTID" "objectid","gams_card"."REBILLID" "rebillid","gams_card"."ORGUNIT" "orgunit","gams_card"."CARDSTATE" "cardstate","gams_card"."YEWXLH" "yewxlh","gams_card"."YUANSJZRQ" "yuansjzrq","gams_card"."JIZQJ" "jizqj","gams_card"."JIZRQ" "jizrq","gams_card"."ZICMC" "zicmc","gams_card"."ZICFL" "zicfl","gams_card"."HANGYFL" "hangyfl","gams_card"."HANGYFLNEW" "hangyflnew","gams_card"."HANGYDL" "hangydl","gams_card"."SORTGB" "sortgb","gams_card"."SHIYXZ" "shiyxz","gams_card"."YUSXMBH" "yusxmbh","gams_card"."JILDW" "jildw","gams_card"."SHIYZK" "shiyzk","gams_card"."JIAOYSYFX" "jiaoysyfx","gams_card"."QUDFS" "qudfs","gams_card"."QUDRQ" "qudrq","gams_card"."JIAZLX" "jiazlx","gams_card"."JIAZ" "jiaz","gams_card"."SHUL" "shul","gams_card"."DANJ" "danj","gams_card"."CAIZXZJ" "caizxzj","gams_card"."FEICZXZJ" "feiczxzj","gams_card"."RUZXS" "ruzxs","gams_card"."CAIWRZRQ" "caiwrzrq","gams_card"."KUAIJPZH" "kuaijpzh","gams_card"."SHIYBM" "shiybm","gams_card"."GUANLBM" "guanlbm","gams_card"."CUNFDD" "cunfdd","gams_card"."SHIYR" "shiyr","gams_card"."BEIZ" "beiz","gams_card"."LEIJZJ" "leijzj","gams_card"."YITZJYS" "yitzjys","gams_card"."YUEZJE" "yuezje","gams_card"."JIANZZB" "jianzzb","gams_card"."CANZ" "canz","gams_card"."CANZL" "canzl","gams_card"."JINGZ" "jingz","gams_card"."ZHEJZT" "zhejzt","gams_card"."TANXZT" "tanxzt","gams_card"."YUANZCBH" "yuanzcbh","gams_card"."SHIXRQ" "shixrq","gams_card"."PINP" "pinp","gams_card"."YANSRKDH" "yansrkdh","gams_card"."GUIGXH" "guigxh","gams_card"."ZHEJFF" "zhejff","gams_card"."TOURSYRQ" "toursyrq","gams_card"."JINGFKM" "jingfkm","gams_card"."GUOBM" "guobm","gams_card"."CAIGJBR" "caigjbr","gams_card"."CAIGZZXS" "caigzzxs","gams_card"."XIANGMMC" "xiangmmc","gams_card"."BAOXJZRQ" "baoxjzrq","gams_card"."GONGHS" "gonghs","gams_card"."YULZFZD" "yulzfzd","gams_card"."YULSZZD" "yulszzd","gams_card"."MIANJ" "mianj","gams_card"."JIAOYFLH" "jiaoyflh","gams_card"."CHANPXLH" "chanpxlh","gams_card"."ZICGS" "zicgs","gams_card"."ISLASTEST" "islastest","gams_card"."FYLB" "fylb","gams_card"."DATASOURCE" "datasource","gams_card"."ISREALNAME" "isrealname","gams_card"."SHIJ_SHIYR" "shij_shiyr","gams_card"."CAIWJZRQ" "caiwjzrq","gams_card"."CUNFDD_OLD" "cunfdd_old","gams_card"."SHIYR_OLD" "shiyr_old","gams_card"."SHIYBM_OLD" "shiybm_old","gams_card"."RUKRQ" "rukrq","gams_card"."FINALBILLID" "finalbillid","gams_card"."PRINTNUM" "printnum" from "GAMS_CARD" "gams_card" where "gams_card"."ID"=?) "$T0") where "$F">? and rownum<=?
select * from (select "$T0".*,rownum "$F" from (select "gams_jc_fundnumber"."ID" "id","gams_jc_fundnumber"."ORDINAL" "ordinal","gams_jc_fundnumber"."GRADATION" "gradation","gams_jc_fundnumber"."CODE" "code","gams_jc_fundnumber"."NAME" "name","gams_jc_fundnumber"."SHORTNAME" "shortName","gams_jc_fundnumber"."PARENTS" "parents","gams_jc_fundnumber"."PARENT" "parent","gams_jc_fundnumber"."PARENTNAME" "parentName","gams_jc_fundnumber"."PERSON" "person","gams_jc_fundnumber"."FUNDSYEAR" "fundsYear","gams_jc_fundnumber"."ENABLED" "enabled","gams_jc_fundnumber"."CREATOR" "creator","gams_jc_fundnumber"."CREATETIME" "createTime","gams_jc_fundnumber"."MODIFYUSER" "modifyUser","gams_jc_fundnumber"."MODIFYTIME" "modifyTime","gams_jc_fundnumber"."MEMO" "memo","gams_jc_fundnumber"."ISLEAF" "isLeaf","gams_jc_fundnumber"."ORGID" "orgId","gams_jc_fundnumber"."YUE" "yue","gams_jc_fundnumber"."XMBH" "xmbh","gams_jc_fundnumber"."BMBH" "bmbh","gams_jc_fundnumber"."BMMC" "bmmc" from "GAMS_JC_FUNDNUMBER" "gams_jc_fundnumber" where "gams_jc_fundnumber"."ID"=?) "$T0") where "$F">? and rownum<=?
insert into "GAMS_CARD_OUTLAY" ("ID","MASTER_ID","JINE","SUOSXM") values (?,?,?,?)
delete from "GAMS_CARD_INVOICE" "null" where "MASTER_ID"=?
insert into "GAMS_CARD_INVOICE" ("ID","MASTER_ID","FAPH") values (?,?,?)

select "detail"."MASTER_ID" "master" from "GAMS_INSPECTIONENTRY_DETAIL" "detail" where "detail"."ID"=?

c5b6f475-9f6e-42b3-aaf4-4af521b467a8

{id=eb33ee5b-d522-45a7-bb9d-a975cbe14dda, shiybm=(ref id=6e35deef-c000-0161-5874-603d62638d74), shiyr=(ref id=6e35e0ba-2000-0021-d62d-5ce2491d7036), shij_shiyr=(ref id=6e35e0ba-2000-0021-d62d-5ce2491d7036), cardobjectid=f7d81c5e-b192-4a65-a911-eba63ef8b033, bizid=c5b6f475-9f6e-42b3-aaf4-4af521b467a8, biztype=com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine, biztime=2020-09-18 00:00:00, shixrq=9999-01-01 00:00:00, seqnum=1}

update "GAMS_CARD_USEINFO" "gams_card_useinfo" set "SHIYBM"=?,"GUANLBM"=?,"CUNFDD"=?,"SHIYR"=?,"SHIJ_SHIYR"=?,"CARDOBJECTID"=?,"BIZID"=?,"BIZTYPE"=?,"BIZTIME"=?,"SHIXRQ"=?,"SEQNUM"=? where "gams_card_useinfo"."ID"=?

select "gams_card_change"."ID" "id","gams_card_change"."CARDID" "cardid","gams_card_change"."CARDOBJECTID" "cardobjectid","gams_card_change"."BIZID" "bizid","gams_card_change"."BIZTYPE" "biztype","gams_card_change"."BIZCODE" "bizcode","gams_card_change"."BIZTIME" "biztime","gams_card_change"."ORG" "org","gams_card_change"."JIZRQ" "jizrq","gams_card_change"."JIZQJ" "jizqj","gams_card_change"."ZICFL" "zicfl","gams_card_change"."HANGYFL" "hangyfl","gams_card_change"."HANGYFLNEW" "hangyflnew","gams_card_change"."HANGYDL" "hangydl","gams_card_change"."SORTGB" "sortgb","gams_card_change"."SHIYBM" "shiybm","gams_card_change"."SHIYZK" "shiyzk","gams_card_change"."SHIYR" "shiyr","gams_card_change"."QUDFS" "qudfs","gams_card_change"."BIANZQK" "bianzqk","gams_card_change"."YONGTFL" "yongtfl","gams_card_change"."CHANQXS" "chanqxs","gams_card_change"."QUANSXZ" "quansxz","gams_card_change"."JIAZLX" "jiazlx","gams_card_change"."CHUZXS" "chuzxs","gams_card_change"."CUNFDD" "cunfdd","gams_card_change"."JIAOYSYFX" "jiaoysyfx","gams_card_change"."JIAZ" "jiaz","gams_card_change"."JIAZ_Z" "jiaz_z","gams_card_change"."JIAZ_J" "jiaz_j","gams_card_change"."SHUL" "shul","gams_card_change"."SHUL_Z" "shul_z","gams_card_change"."SHUL_J" "shul_j","gams_card_change"."MIANJ" "mianj","gams_card_change"."MIANJ_Z" "mianj_z","gams_card_change"."MIANJ_J" "mianj_j","gams_card_change"."XIAOJBGYF" "xiaojbgyf","gams_card_change"."XIAOJBGYF_Z" "xiaojbgyf_z","gams_card_change"."XIAOJBGYF_J" "xiaojbgyf_j","gams_card_change"."XIAOJQZBGSYF" "xiaojqzbgsyf","gams_card_change"."XIAOJQZBGSYF_Z" "xiaojqzbgsyf_z","gams_card_change"."XIAOJQZBGSYF_J" "xiaojqzbgsyf_j","gams_card_change"."XIAOJYWYF" "xiaojywyf","gams_card_change"."XIAOJYWYF_Z" "xiaojywyf_z","gams_card_change"."XIAOJYWYF_J" "xiaojywyf_j","gams_card_change"."XIAOJIQTYF" "xiaojiqtyf","gams_card_change"."XIAOJIQTYF_Z" "xiaojiqtyf_z","gams_card_change"."XIAOJIQTYF_J" "xiaojiqtyf_j","gams_card_change"."GRADE" "grade","gams_card_change"."NATURE" "nature","gams_card_change"."ZICFL_D" "zicfl_d","gams_card_change"."SORTGB_D" "sortgb_d","gams_card_change"."HANGYFL_D" "hangyfl_d","gams_card_change"."HANGYDL_D" "hangydl_d","gams_card_change"."SHIYBM_D" "shiybm_d","gams_card_change"."SHIYR_D" "shiyr_d","gams_card_change"."CUNFDD_D" "cunfdd_d","gams_card_change"."JIAOYSYFX_D" "jiaoysyfx_d","gams_card_change"."SHIYZK_D" "shiyzk_d","gams_card_change"."QUDFS_D" "qudfs_d","gams_card_change"."BIANZQK_D" "bianzqk_d","gams_card_change"."YONGTFL_D" "yongtfl_d","gams_card_change"."CHANQXS_D" "chanqxs_d","gams_card_change"."QUANSXZ_D" "quansxz_d","gams_card_change"."JIAZLX_D" "jiazlx_d","gams_card_change"."JINGFKM_D" "jingfkm_d","gams_card_change"."CAOZSJ" "caozsj","gams_card_change"."BIANDCZSXH" "biandczsxh","gams_card_change"."ZICFLCODE" "zicflcode","gams_card_change"."CAIWJZRQ" "caiwjzrq","gams_card_change"."FINALBILLID" "finalbillid" from "GAMS_CARD_CHANGE" "gams_card_change" where "gams_card_change"."BIZID"=? and "gams_card_change"."BIZTYPE"=?

update "GAMS_CARD_CHANGE" "gams_card_change" set "CARDID"=?,"CARDOBJECTID"=?,"BIZID"=?,"BIZTYPE"=?,"BIZCODE"=?,"BIZTIME"=?,"ORG"=?,"JIZRQ"=?,"JIZQJ"=?,"ZICFL"=?,"HANGYFL"=?,"HANGYFLNEW"=?,"HANGYDL"=?,"SORTGB"=?,"SHIYBM"=?,"SHIYZK"=?,"SHIYR"=?,"QUDFS"=?,"BIANZQK"=?,"YONGTFL"=?,"CHANQXS"=?,"QUANSXZ"=?,"JIAZLX"=?,"CHUZXS"=?,"CUNFDD"=?,"JIAOYSYFX"=?,"JIAZ"=?,"JIAZ_Z"=?,"JIAZ_J"=?,"SHUL"=?,"SHUL_Z"=?,"SHUL_J"=?,"MIANJ"=?,"MIANJ_Z"=?,"MIANJ_J"=?,"XIAOJBGYF"=?,"XIAOJBGYF_Z"=?,"XIAOJBGYF_J"=?,"XIAOJQZBGSYF"=?,"XIAOJQZBGSYF_Z"=?,"XIAOJQZBGSYF_J"=?,"XIAOJYWYF"=?,"XIAOJYWYF_Z"=?,"XIAOJYWYF_J"=?,"XIAOJIQTYF"=?,"XIAOJIQTYF_Z"=?,"XIAOJIQTYF_J"=?,"GRADE"=?,"NATURE"=?,"ZICFL_D"=?,"SORTGB_D"=?,"HANGYFL_D"=?,"HANGYDL_D"=?,"SHIYBM_D"=?,"SHIYR_D"=?,"CUNFDD_D"=?,"JIAOYSYFX_D"=?,"SHIYZK_D"=?,"QUDFS_D"=?,"BIANZQK_D"=?,"YONGTFL_D"=?,"CHANQXS_D"=?,"QUANSXZ_D"=?,"JIAZLX_D"=?,"JINGFKM_D"=?,"CAOZSJ"=?,"BIANDCZSXH"=?,"ZICFLCODE"=?,"CAIWJZRQ"=?,"FINALBILLID"=? where "gams_card_change"."ID"=?


	
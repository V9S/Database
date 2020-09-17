/*
资产编号、资产名称、业务状态、国标分类、国标大类、行业分类、行业大类、
教育使用方向、单价、数量、价值类型、价值、累计折旧、净值、品牌、规格型号、
使用人、领用人、使用部门、存放地点、财政拨款、非财政拨款、取得方式、取得日期、
资产记账日期、财务入账状态、财务入账日期、已使用年限、会计凭证号、设备用途、
采购组织形式、经费科目、生产厂家、销售商、国别码、车辆用途、车牌号、汽车排气量、
折旧状态、折旧年限、月折旧额、已提折旧月数、备注。
*/


SELECT
	gc.BILLCODE "资产编号",
	gc.ZICMC "资产名称",
	gjs.TITLE "资产使用状况",
	gja.TITLE "国标分类",
	GJAG .TITLE "国标大类",
	gjai.TITLE "行业分类",
	gjai2.TITLE "行业大类",
	bjgjj.TITLE "教育使用方向",
	gc.DANJ "单价",
	gc.SHUL "数量",
	gjv.TITLE "价值类型",
	gc.JIAZ "价值",
	gc.LEIJZJ "累计折旧",
	gc.JINGZ "净值",
	gc.PINP "品牌",
	gc.GUIGXH "规格型号",
	gjp.NAME "使用人",
	gjd.NAME "使用部门",
	gjd2.NAME "存放地点",
	gc.caizxzj "财政拨款",
	gc.feiczxzj "非财政拨款",
	gjg.TITLE "取得方式",
	gc.QUDRQ "取得日期",
	gc.JIZRQ "资产记账日期",
	gc.CAIWJZRQ "财务入账状态",
	gc.CAIWRZRQ "财务入账日期",
	gc.YUJSMZL "已使用年限",
	gc.KUAIJPZH "会计凭证号",
	to_char('') "设备用途",
	gjp3.TITLE "采购组织形式",
	gjf.TITLE "经费科目",
	gc.SHENGCCJ "生产厂家",
	gcc.jixs"销售商",
	BJGJC.TITLE "国别码",
	gjc.TITLE "车辆用途",
	gcc.CHEPH "车牌号",
	gjq.TITLE "汽车排气量",
	gjd3.TITLE "折旧状态",
	gc.YUJSMZL "折旧年限",
	gc.YUEZJE "月折旧额",
	gc.YITZJYS "已提折旧月数",
	gc.BEIZ "备注"
FROM
	GAMS_CARD_TD gc
LEFT JOIN GAMS_JC_SYZK gjs ON 
	gc.SHIYZK = gjs.ID 
LEFT JOIN GAMS_JC_ASSETCLASS gja ON 
	gc.ZICFL = gja.ID 
LEFT JOIN GAMS_JC_ASSETSORT_GB gjag ON
	gc.SORTGB = gjag.ID
LEFT JOIN GAMS_JC_ASSETCLASS_IND gjai ON 
	gc.HANGYFL = gjai.ID 
LEFT JOIN GAMS_JC_ASSETSORT_IND gjai2 ON 
	gc.HANGYDL = gjai2.ID 
LEFT JOIN BIZ_JY00_GAMS_JC_JIAOYUSAGE bjgjj ON 
	gc.JIAOYSYFX = bjgjj.ID 
LEFT JOIN GAMS_JC_VALUETYPE gjv ON 
	gc.JIAZLX = gjv.ID 
LEFT JOIN GAMS_JC_PERSONNEL gjp ON 
	gc.SHIYR = gjp.ID 
LEFT JOIN GAMS_JC_DEPARTMENT gjd ON
	gc.SHIYBM = gjd.ID 
LEFT JOIN GAMS_JC_DEPOSITARY gjd2 ON 
	gc.CUNFDD = gjd2.ID 
LEFT JOIN GAMS_JC_GAINMANNER gjg ON
	gc.QUDFS = gjg.ID 
LEFT JOIN GAMS_JC_ENTRYFORM gje ON 
	gc.RUZXS = gje.ID 
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON 
	gc.CAIGZZXS = gjp3.ID 
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON 
	gc.JIAOYSYFX = gjf.ID 
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON 
	gc.GUOBM = BJGJC .ID 
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON 
	gc.ZHEJZT = gjd3.ID 
LEFT JOIN GAMS_CARD_CL gcc ON 
	gc.id = gcc.ID 
LEFT JOIN GAMS_JC_QICPQL gjq ON 
	gcc.PAIQL = gjq.ID 
LEFT JOIN GAMS_JC_CLYTFL gjc ON 
	gcc.YONGTFL = gjc.ID ;
 UNION ALL
 

	
	
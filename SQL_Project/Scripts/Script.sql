
------部门视图-------
 CREATE VIEW VIEW_DEPARTMENT AS
SELECT
	gjd.CODE "code",
	gjd.NAME "name",
	gjd3.NAME "sjbm",
	BJGJD . title "bmsx",
	gjd2 .title "bmjc",
	gjd.ENABLED "sfqy"
FROM
	GAMS_JC_DEPARTMENT gjd
LEFT JOIN BIZ_JY00_GAMS_JC_DEPTPROPERTY bjgjd ON
	gjd.NATURE = BJGJD .ID
LEFT JOIN GAMS_JC_DEPARTMENTLEVEL gjd2 ON
	gjd.DEPARTMENTLEVEL = gjd2.ID
LEFT JOIN GAMS_JC_DEPARTMENT gjd3 ON
	gjd.PARENT = gjd3.ID;
------人员视图-------
 CREATE VIEW VIEW_PERSONNEL AS
SELECT
	gjp.CODE "code",
	gjp.NAME "name",
	gjd.NAME "ssbm",
	gjp.ENABLED "sfqy"
FROM
	GAMS_JC_PERSONNEL gjp
LEFT JOIN GAMS_JC_DEPARTMENT gjd ON
	gjp.DEPARTMENT = gjd.ID;
------存放地点视图-------
 CREATE VIEW VIEW_DEPOSITARY AS
SELECT
	gjd.CODE "code",
	gjd.NAME "name",
	gjd2.NAME "sjcfdd",
	gjd.ENABLED "sfqy"
FROM
	GAMS_JC_DEPOSITARY gjd
LEFT JOIN GAMS_JC_DEPOSITARY gjd2 ON
	gjd.PARENT = gjd2.ID;
	------卡片视图-----
CREATE VIEW VIEW_CARD AS
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char(gc.PINP) "pinp",
	to_char(gc.GUIGXH) "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char(gjd4.TITLE) "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char(BJGJC.TITLE) "guobm",
	to_char(gjc.TITLE) "chelyt",
	to_char(gc.CHEPH) "cheph",
	to_char(gjq.TITLE) "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_CL gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
LEFT JOIN GAMS_JC_QICPQL gjq ON
	gc.PAIQL = gjq.ID
LEFT JOIN GAMS_JC_CLYTFL gjc ON
	gc.YONGTFL = gjc.ID 
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char(gc.PINP) "pinp",
	to_char(gc.GUIGXH) "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char(gjd4.TITLE) "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char(BJGJC.TITLE) "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('')  "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_FW gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID 
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char('') "pinp",
	to_char('') "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char('') "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char('') "shengccj",
	to_char('') "xiaoss",
	to_char('') "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('')  "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_GZW gc
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID 
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char(gc.PINP) "pinp",
	to_char(gc.GUIGXH) "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char(gjd4.TITLE) "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char('') "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('') "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_JJYJZJ gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char('') "pinp",
	to_char('') "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char('') "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char('') "xiaoss",
	to_char('') "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('') "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_TZDZW gc
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char(gc.PINP) "pinp",
	to_char(gc.GUIGXH) "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char(gjd4.TITLE) "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char(BJGJC.TITLE) "guobm",
	to_char(gjc.TITLE) "chelyt",
	to_char(gc.CHEPH) "cheph",
	to_char(gjq.TITLE) "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_TYSB gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
LEFT JOIN GAMS_JC_QICPQL gjq ON
	gc.PAIQL = gjq.ID
LEFT JOIN GAMS_JC_CLYTFL gjc ON
	gc.YONGTFL = gjc.ID 
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char('') "pinp",
	to_char('') "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char('') "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char(BJGJC.TITLE) "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('') "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_TSDA gc
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
UNION ALL
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char('') "pinp",
	to_char('') "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char('') "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char('') "shengccj",
	to_char('') "xiaoss",
	to_char('') "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('') "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char(gc.PINP) "pinp",
	to_char(gc.GUIGXH) "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char(gjd4.TITLE) "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char(BJGJC.TITLE) "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('') "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_WWHCLP gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "ZICMC",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char('') "pinp",
	to_char('') "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char('') "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char('') "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char('') "guobm",
	to_char('') "chelyt",
	to_char('') "cheph",
	to_char('') "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_WXZC gc
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
SELECT
	gc.BILLCODE "code",
	gc.ZICMC "zicmc",
	gjs.TITLE "zicsyzk",
	gja.TITLE "guobfl",
	GJAG .TITLE "guobdl",
	gjai.TITLE "hangyfl",
	gjai2.TITLE "hangydl",
	bjgjj.TITLE "jiaoysyfx",
	gc.DANJ "danj",
	gc.SHUL "shul",
	gjv.TITLE "jiazlx",
	gc.JIAZ "jiaz",
	gc.LEIJZJ "leijzj",
	gc.JINGZ "jingz",
	to_char(gc.PINP) "pinp",
	to_char(gc.GUIGXH) "guigxh",
	gjp.NAME "shiyr",
	gjd.NAME "shiybm",
	gjd2.NAME "cunfdd",
	gc.caizxzj "caizbk",
	gc.feiczxzj "feiczbk",
	gjg.TITLE "qudfs",
	gc.QUDRQ "qudrq",
	gc.JIZRQ "jizrq",
	gc.CAIWJZRQ "caiwrzzt",
	gc.CAIWRZRQ "caiwrzrq",
	gc.YUJSMZL "yisynx",
	gc.KUAIJPZH "kuaijpzh",
	to_char(gjd4.TITLE) "shebyt",
	gjp3.TITLE "caigzzxs",
	gjf.TITLE "jingfkm",
	to_char(gc.SHENGCCJ) "shengccj",
	to_char(gc.JIXS) "xiaoss",
	to_char(BJGJC.TITLE) "guobm",
	to_char(gjc.TITLE) "chelyt",
	to_char(gc.CHEPH) "cheph",
	to_char(gjq.TITLE) "qicpql",
	gjd3.TITLE "zhejzt",
	gc.YUJSMZL "zhejnx",
	gc.YUEZJE "yuezje",
	gc.YITZJYS "yitzjys",
	gc.BEIZ "beiz"
FROM
	GAMS_CARD_ZYSB gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
LEFT JOIN GAMS_JC_QICPQL gjq ON
	gc.PAIQL = gjq.ID
LEFT JOIN GAMS_JC_CLYTFL gjc ON
	gc.YONGTFL = gjc.ID 
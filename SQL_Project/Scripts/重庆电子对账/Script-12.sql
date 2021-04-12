

SELECT * FROM GAMS_ASSETCARD_20210329 ga ;

SELECT * FROM GAMS_ASSETCARDCHANGE_NEW_0329 gan ;

SELECT
	COALESCE(sum(change.shulz), 0) - COALESCE(sum(change.SHULJ), 0) qimsl,
	COALESCE(sum(change.jiazz), 0) - COALESCE(sum(change.jiazj), 0) qimje
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.SORTGBID IS NOT NULL
	AND CHANGE.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGBID = '3DCA958F0000002178673E76D0CE4984';

SELECT
	COALESCE(sum(change.shul_z), 0) - COALESCE(sum(change.shul_j), 0) qimsl,
	COALESCE(sum(change.jiaz_z), 0) - COALESCE(sum(change.jiaz_j), 0) qimje
FROM
	CQDZGCZYXY_ZCGL.gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3DCA958F0000002178673E76D0CE4984';

SELECT
	COALESCE(sum(change.shulz), 0) - COALESCE(sum(change.SHULJ), 0) qimsl,
	COALESCE(sum(change.jiazz), 0) - COALESCE(sum(change.jiazj), 0) qimje
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.SORTGBID IS NOT NULL
	AND CHANGE.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGBID = '3711F12FC000000192E940E7FAE32E55';

SELECT
	COALESCE(sum(change.shul_z), 0) - COALESCE(sum(change.shul_j), 0) qimsl,
	COALESCE(sum(change.jiaz_z), 0) - COALESCE(sum(change.jiaz_j), 0) qimje
FROM
	CQDZGCZYXY_ZCGL.gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55';

SELECT * FROM GAMS_JC_ASSETSORT_GB gjag ;

--无形资产
CREATE TABLE czwxzc AS 
SELECT
	*
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.SORTGBID IS NOT NULL
	AND CHANGE.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGBID = '3DCA958F0000002178673E76D0CE4984';
	
CREATE TABLE zcwxzc AS 
SELECT
	*
FROM
	CQDZGCZYXY_ZCGL.gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3DCA958F0000002178673E76D0CE4984';
	

SELECT * FROM zcwxzc a WHERE a.cardid NOT IN (SELECT b.cardrecid FROM czwxzc b);

--删除
SELECT * FROM zcwxzc a WHERE a.cardobjectid NOT IN (SELECT b.cardobjectid FROM czwxzc b);

--插入
SELECT * FROM czwxzc b WHERE b.cardrecid NOT IN (SELECT a.cardid FROM zcwxzc a);

SELECT * FROM czwxzc WHERE id = '78674EAEE00004214BECEFF604D079DE'; --6ed4f864-6000-0241-00cb-e9053bdf1fa0

SELECT * FROM zcwxzc WHERE recid = '6ED4F8646000024100CBE9053BDF1FA0'; --78674EAEE00004214BECEFF604D079DE 

DROP TABLE czwxzc;
DROP TABLE zcwxzc;

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.BILLCODE = 'TY2019000001';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.OBJECTID = 'B9BB0B9E24E54FC39672A3B879BF5CAD';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = 'DBA1F1425947487480E266C703445781';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = 'DBA1F1425947487480E266C703445781';

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gcc WHERE gcc.CARDRECID = '6ED4F906E00002C1C4E3E72C43DD95A8';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE WHERE id = '6ED4E204C00001A15E192F649C391012';
--处理
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE SET SORTGB = '3711F12FC000000192E940E7FAE32E55' WHERE id = 'C0ECDF1E0F8447CA845203467150FAB5';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_JC_ASSETSORT_GB gjag ;

INSERT
	INTO
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE (ID,
	CARDID,
	CARDOBJECTID,
	BIZID,
	BIZTYPE,
	BIZTIME,
	ORG,
	JIZRQ,
	ZICFL,
	SHIYBM,
	SHIYZK,
	SHIYR,
	QUDFS,
	YONGTFL,
	CHANQXS,
	QUANSXZ,
	JIAZLX,
	CHUZXS,
	CUNFDD,
	JIAZ,
	JIAZ_Z,
	JIAZ_J,
	SHUL,
	SHUL_Z,
	SHUL_J,
	MIANJ,
	MIANJ_Z,
	MIANJ_J,
	BIANZQK,
	JIAOYSYFX,
	HANGYFL,
	SORTGB,
	BIZCODE,
	JIZQJ,
	HANGYDL,
	GRADE,
	NATURE,
	ZICFL_D,
	SORTGB_D,
	HANGYFL_D,
	HANGYDL_D,
	SHIYBM_D,
	SHIYR_D,
	CUNFDD_D,
	JIAOYSYFX_D,
	SHIYZK_D,
	QUDFS_D,
	BIANZQK_D,
	YONGTFL_D,
	CHANQXS_D,
	QUANSXZ_D,
	JIAZLX_D,
	JINGFKM_D,
	CAOZSJ,
	XIAOJBGYF,
	XIAOJBGYF_Z,
	XIAOJBGYF_J,
	XIAOJQZBGSYF,
	XIAOJQZBGSYF_Z,
	XIAOJQZBGSYF_J,
	XIAOJYWYF,
	XIAOJYWYF_Z,
	XIAOJYWYF_J,
	XIAOJIQTYF,
	XIAOJIQTYF_Z,
	XIAOJIQTYF_J,
	HANGYFLNEW,
	BIANDCZSXH,
	ZICFLCODE,
	CAIWJZRQ,
	FINALBILLID)
VALUES (SYS_GUID(),
'DBA1F1425947487480E266C703445781',
'DBA1F1425947487480E266C703445781',
'DBA1F1425947487480E266C703445781',
'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine',
TIMESTAMP'2019-12-05 15:06:52.496',
'6E35BC1F80000001F6D62BD49F8EC9CC',
TIMESTAMP'2019-11-25 00:00:00',
'3AD9F95520001021D4B15EC546906859',
'6E35DEF1000000414E80B62FA6F5769E',
'5E5B480EC000000128A33A05401E5748',
'6E35E0BD6000014107A9F66E5E2356BB',
'36B91A2620000001112E65D5B88F4774',
NULL,
NULL,
NULL,
'36B908C8A00000016F9E6175B4B985DA',
NULL,
'6E392ECDE00006A174843EBA4879C7FD',
48840,
48840,
NULL,
1,
1,
NULL,
0,
0,
NULL,
NULL,
'3AB70BFC40000021A9A6A1A1175DC935',
'3AD9F95520001021D4B15EC546906859',
'3DCA958F0000002178673E76D0CE4984',
'JJ2019003966',
'201911',
'3AB9A1E240000181A09D48039A0F7282',
'1',
NULL,
'3755B56700000B011DFCADA627833B44',
'3755B56700000B011DFCADA627833B44',
'3AD9F95520001021D4B15EC546906859',
'3AB9A1E240000181A09D48039A0F7282',
'6E35DEF1000000414E80B62FA6F5769E',
'6E35E0BD6000014107A9F66E5E2356BB',
'6E392ECDE00006A174843EBA4879C7FD',
'3AB70BFC40000021A9A6A1A1175DC935',
NULL,
'36B91A2620000001112E65D5B88F4774',
NULL,
NULL,
NULL,
NULL,
'36B908C8A00000016F9E6175B4B985DA',
NULL,
TIMESTAMP'2020-03-18 13:39:48.901',
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL);

DELETE FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.id IN (SELECT ID FROM (SELECT
	*
FROM
	CQDZGCZYXY_ZCGL.gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3DCA958F0000002178673E76D0CE4984') a WHERE a.cardobjectid NOT IN (SELECT b.cardobjectid FROM (SELECT
	*
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.SORTGBID IS NOT NULL
	AND CHANGE.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGBID = '3DCA958F0000002178673E76D0CE4984') b));

--
DELETE
FROM
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc
WHERE
	gcc.CARDID IN (
	SELECT
		CARDID
	FROM
		(SELECT
	*
FROM
	CQDZGCZYXY_ZCGL.gams_card_change CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.sortgb IS NOT NULL
	AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGB = '3711F12FC000000192E940E7FAE32E55') a
	WHERE
		a.cardid NOT IN (
		SELECT
			b.cardrecid
		FROM
			(SELECT
	*
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 CHANGE
WHERE
	change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND change.SORTGBID IS NOT NULL
	AND CHANGE.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND CHANGE.SORTGBID = '3711F12FC000000192E940E7FAE32E55') b) );

INSERT
	INTO
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE (ID,
	CARDID,
	CARDOBJECTID,
	BIZID,
	BIZTYPE,
	BIZTIME,
	ORG,
	JIZRQ,
	ZICFL,
	SHIYBM,
	SHIYZK,
	SHIYR,
	QUDFS,
	YONGTFL,
	CHANQXS,
	QUANSXZ,
	JIAZLX,
	CHUZXS,
	CUNFDD,
	JIAZ,
	JIAZ_Z,
	JIAZ_J,
	SHUL,
	SHUL_Z,
	SHUL_J,
	MIANJ,
	MIANJ_Z,
	MIANJ_J,
	BIANZQK,
	JIAOYSYFX,
	HANGYFL,
	SORTGB,
	BIZCODE,
	JIZQJ,
	HANGYDL,
	GRADE,
	NATURE,
	ZICFL_D,
	SORTGB_D,
	HANGYFL_D,
	HANGYDL_D,
	SHIYBM_D,
	SHIYR_D,
	CUNFDD_D,
	JIAOYSYFX_D,
	SHIYZK_D,
	QUDFS_D,
	BIANZQK_D,
	YONGTFL_D,
	CHANQXS_D,
	QUANSXZ_D,
	JIAZLX_D,
	JINGFKM_D,
	CAOZSJ,
	XIAOJBGYF,
	XIAOJBGYF_Z,
	XIAOJBGYF_J,
	XIAOJQZBGSYF,
	XIAOJQZBGSYF_Z,
	XIAOJQZBGSYF_J,
	XIAOJYWYF,
	XIAOJYWYF_Z,
	XIAOJYWYF_J,
	XIAOJIQTYF,
	XIAOJIQTYF_Z,
	XIAOJIQTYF_J,
	HANGYFLNEW,
	BIANDCZSXH,
	ZICFLCODE,
	CAIWJZRQ,
	FINALBILLID)
VALUES (SYS_GUID(),
'6ED4F906E00002C1C4E3E72C43DD95A8',
'6ED4F906E00002C1C4E3E72C43DD95A8',
'6ED4F906E00002C1C4E3E72C43DD95A8',
'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine',
TIMESTAMP'2019-12-05 15:06:52.496',
'6E35BC1F80000001F6D62BD49F8EC9CC',
TIMESTAMP'2019-11-25 00:00:00',
'3AD9F95520001021D4B15EC546906859',
'6E35DEF1000000414E80B62FA6F5769E',
'5E5B480EC000000128A33A05401E5748',
'6E35E0BD6000014107A9F66E5E2356BB',
'36B91A2620000001112E65D5B88F4774',
NULL,
NULL,
NULL,
'36B908C8A00000016F9E6175B4B985DA',
NULL,
'6E392ECDE00006A174843EBA4879C7FD',
2899,
2899,
NULL,
1,
1,
NULL,
0,
0,
NULL,
NULL,
'3AB70BFC40000021A9A6A1A1175DC935',
'3AD9F95520001021D4B15EC546906859',
'3711F12FC000000192E940E7FAE32E55',
'JJ2019003966',
'201911',
'3AB9A1E240000181A09D48039A0F7282',
'1',
NULL,
'3755B56700000B011DFCADA627833B44',
'3755B56700000B011DFCADA627833B44',
'3AD9F95520001021D4B15EC546906859',
'3AB9A1E240000181A09D48039A0F7282',
'6E35DEF1000000414E80B62FA6F5769E',
'6E35E0BD6000014107A9F66E5E2356BB',
'6E392ECDE00006A174843EBA4879C7FD',
'3AB70BFC40000021A9A6A1A1175DC935',
NULL,
'36B91A2620000001112E65D5B88F4774',
NULL,
NULL,
NULL,
NULL,
'36B908C8A00000016F9E6175B4B985DA',
NULL,
TIMESTAMP'2020-03-18 13:39:48.901',
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL);




	
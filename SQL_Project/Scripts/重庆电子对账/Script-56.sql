
DROP TABLE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE ;

CREATE TABLE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE AS SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE_js ;


SELECT
CASE
		WHEN guobdl.name = '01' THEN '— —'
		ELSE to_char(COALESCE(benqxz.benqxzsl, 0) + COALESCE(chaifxz.chaifxzsl, 0) + COALESCE(benqzj.benqzzsl, 0) + COALESCE(fenlbdxz.fenlbdxzsl, 0) + COALESCE(benntk.benntkxzsl, 0))
	END "本期新增合计数量",
	(COALESCE(benqxz.benqxzje, 0) + COALESCE(chaifxz.chaifxzje, 0) + COALESCE(benqzj.benqzzje, 0) + COALESCE(fenlbdxz.fenlbdxzje, 0) + COALESCE(benntk.benntkxzje, 0)) "本期新增合计金额"
FROM
	gams_jc_assetsort_gb guobdl
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) benqxzsl,
		COALESCE(sum(change.jiaz_z), 0) benqxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqxz ON
	benqxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) benqzzsl,
		COALESCE(sum(change.shul_j), 0) benqjzsl,
		COALESCE(sum(change.jiaz_z), 0) benqzzje,
		COALESCE(sum(change.jiaz_j), 0) benqjzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqzj ON
	benqzj.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) chaifxzsl,
		COALESCE(sum(change.jiaz_z), 0) chaifxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'account_entry'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.AssetsplitBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) chaifxz ON
	chaifxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) fenlbdxzsl,
		COALESCE(sum(change.jiaz_z), 0) fenlbdxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) fenlbdxz ON
	fenlbdxz.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_z), 0) benntkxzsl,
		COALESCE(sum(change.jiaz_z), 0) benntkxzje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benntk ON
	benntk.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(change.shul_j), 0) benqbfsl,
		COALESCE(sum(change.jiaz_j), 0) benqbfje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqbf ON
	benqbf.guobdl = guobdl.id
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		COALESCE(sum(abs(change.shul_j)), 0) benqtksl,
		COALESCE(sum(abs(change.jiaz_j)), 0) benqtkje
	FROM
		gams_card_change CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'sale'
		AND change.biztype = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb) benqtk ON
	benqtk.guobdl = guobdl.id
WHERE
	guobdl.id = '3DCA958F0000002178673E76D0CE4984';


SELECT
	COALESCE(sum(abs(bdcard.SHULZ)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.JIAZZ)), 0)   benqjsqtje
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 bdcard
WHERE
	bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGBID IS NOT NULL)
	AND bdcard.JIZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.JIZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGBID = '3DCA958F0000002178673E76D0CE4984';

SELECT
	COALESCE(sum(abs(bdcard.shul_z)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.jiaz_z)), 0)   benqjsqtje
FROM
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
WHERE
	bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGB IS NOT NULL)
	AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGB = '3711F12FC000000192E940E7FAE32E55';

CREATE TABLE czjsty AS 	
SELECT
	*
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 bdcard
WHERE
	bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGBID IS NOT NULL)
	AND bdcard.JIZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.JIZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGBID = '3711F12FC000000192E940E7FAE32E55';

CREATE TABLE zcjsty AS 	
SELECT
	*
FROM
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
WHERE
	bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGB IS NOT NULL)
	AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGB = '3711F12FC000000192E940E7FAE32E55';
	
DROP TABLE czjsty;
DROP TABLE zcjsty;	

SELECT * FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty);
		               
SELECT * FROM czjsty WHERE cardobjectid NOT IN (SELECT CARDOBJECTID FROM zcjsty);
		               
SELECT * FROM zcjsty WHERE cardid NOT IN (SELECT cardrecid FROM czjsty);
		               
SELECT gcc.CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc LEFT JOIN CQDZGCZYXY_ZCGL.GAMS_CARD gc ON gcc.CARDID = gc.ID WHERE gc.BILLCODE = 'TY2020000510';
 
SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000510';
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM zcjsty WHERE cardid = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM zcjsty WHERE ID = '43640364C4BB4CA59F8CEF26FC0FF794';

SELECT * FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE cardid = '6ED4F9A320000501D4755674201D3F76';

		              	
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDOBJECTID = '72466B147F66452BBF5F621BF9762C22';

SELECT gcc.SORTGB ,gcc.CAIWJZRQ ,ORG FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDOBJECTID = '72466B147F66452BBF5F621BF9762C22';

UPDATE GAMS_CARD_CHANGE a SET CAIWJZRQ = (SELECT JIZRQ FROM czjsty b WHERE a.CARDID = b.CARDRECID) WHERE a.CARDID IN (SELECT CARDID FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty))

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.CARDOBJECTID = '9F6F03D3A7C34C7781665BDE6BF810E6';


SELECT * FROM GAMS_CARD gc WHERE gc.OBJECTID = '72466B147F66452BBF5F621BF9762C22';

SELECT * FROM GAMS_CARD gc WHERE gc.ID = '6ED4F9A320000501D4755674201D3F76';

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.SORTGBID IS NULL ;

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gan WHERE gan.SORTGB IS NULL AND BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine';

SELECT count(1),BIZTYPE,nature FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gan WHERE gan.SORTGB IS NULL GROUP BY BIZTYPE,nature ;
--1、
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE a SET SORTGB = 
(SELECT gc.SORTGBID FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gc WHERE gc.CARDRECID = a.CARDID ) WHERE a.SORTGB IS NULL ;

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gcct ;

SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE gcct WHERE gcct.id = '6ED4F9A320000501D4755674201D3F76';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gan WHERE gan.ID = '6ED4F9A320000501D4755674201D3F76';


SELECT
		gcct.*
	FROM
		CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gcct WHERE gcct.CARDRECID = '6ED4F85F200000A10F6C586116E53AEC';

CREATE TABLE aa AS 
SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE gcc WHERE gcc.BIZTIME < to_date('2019-12-06 00:00:00', 'yyyy-mm-dd HH24:mi:ss');
CREATE TABLE bb AS 
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.BIZTIME < to_date('2019-12-06 00:00:00', 'yyyy-mm-dd HH24:mi:ss');

SELECT * FROM bb b WHERE b.id NOT IN (SELECT a.id FROM aa a);

SELECT BIZTYPE FROM aa a GROUP BY a.BIZTYPE ;

SELECT NATURE FROM GAMS_CARD_CHANGE gcc WHERE gcc.JIAZ = 48840;

UPDATE GAMS_CARD_CHANGE SET NATURE = 'process'WHERE JIAZ = 48840;
SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gcc WHERE gcc.JIAZ = 48840;

SELECT * FROM GAMS_CARD gc WHERE gc.ID = 'DBA1F1425947487480E266C703445781';

SELECT * FROM GAMS_CARD gc WHERE gc.JIAZ = 48840;

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARD_20210329 gcc WHERE gcc.JIAZ = 48840;





(
	SELECT
		change.sortgb   guobdl,
		COALESCE(sum(change.shul_z), 0)   benqzzsl,
		COALESCE(sum(change.shul_j), 0)   benqjzsl,
		COALESCE(sum(change.jiaz_z), 0)   benqzzje,
		COALESCE(sum(change.jiaz_j), 0)   benqjzje
	FROM
		gams_card_change   CHANGE
	WHERE
		change.jizrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.jizrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND change.nature = 'process'
		AND change.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		AND change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		change.sortgb)



INSERT INTO GAMS_CARD_CHANGE (ID,CARDID,CARDOBJECTID,BIZID,BIZTYPE,BIZTIME,ORG,JIZRQ,ZICFL,SHIYBM,SHIYZK,SHIYR,QUDFS,YONGTFL,CHANQXS,QUANSXZ,JIAZLX,CHUZXS,CUNFDD,JIAZ,JIAZ_Z,JIAZ_J,SHUL,SHUL_Z,SHUL_J,MIANJ,MIANJ_Z,MIANJ_J,BIANZQK,JIAOYSYFX,HANGYFL,SORTGB,BIZCODE,JIZQJ,HANGYDL,GRADE,NATURE,ZICFL_D,SORTGB_D,HANGYFL_D,HANGYDL_D,SHIYBM_D,SHIYR_D,CUNFDD_D,JIAOYSYFX_D,SHIYZK_D,QUDFS_D,BIANZQK_D,YONGTFL_D,CHANQXS_D,QUANSXZ_D,JIAZLX_D,JINGFKM_D,CAOZSJ,XIAOJBGYF,XIAOJBGYF_Z,XIAOJBGYF_J,XIAOJQZBGSYF,XIAOJQZBGSYF_Z,XIAOJQZBGSYF_J,XIAOJYWYF,XIAOJYWYF_Z,XIAOJYWYF_J,XIAOJIQTYF,XIAOJIQTYF_Z,XIAOJIQTYF_J,HANGYFLNEW,BIANDCZSXH,ZICFLCODE,CAIWJZRQ,FINALBILLID) VALUES
	 ('D3E04A1AB3B6416D9BEC66A691A00139','DBA1F1425947487480E266C703445781','DBA1F1425947487480E266C703445781','DBA1F1425947487480E266C703445781','com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine',TIMESTAMP'2019-12-05 15:06:52.496','6E35BC1F80000001F6D62BD49F8EC9CC',TIMESTAMP'2019-11-25 00:00:00','3AD9F95520001021D4B15EC546906859','6E35DEF1000000414E80B62FA6F5769E','5E5B480EC000000128A33A05401E5748','6E35E0BD6000014107A9F66E5E2356BB','36B91A2620000001112E65D5B88F4774',NULL,NULL,NULL,'36B908C8A00000016F9E6175B4B985DA',NULL,'6E392ECDE00006A174843EBA4879C7FD',48840,48840,NULL,1,1,NULL,0,0,NULL,NULL,'3AB70BFC40000021A9A6A1A1175DC935','3AD9F95520001021D4B15EC546906859','3DCA958F0000002178673E76D0CE4984','JJ2019003966','201911','3AB9A1E240000181A09D48039A0F7282','1',NULL,'3755B56700000B011DFCADA627833B44','3755B56700000B011DFCADA627833B44','3AD9F95520001021D4B15EC546906859','3AB9A1E240000181A09D48039A0F7282','6E35DEF1000000414E80B62FA6F5769E','6E35E0BD6000014107A9F66E5E2356BB','6E392ECDE00006A174843EBA4879C7FD','3AB70BFC40000021A9A6A1A1175DC935',NULL,'36B91A2620000001112E65D5B88F4774',NULL,NULL,NULL,NULL,'36B908C8A00000016F9E6175B4B985DA',NULL,TIMESTAMP'2020-03-18 13:39:48.901',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM GAMS_CARD_CHANGE WHERE ID = 'D3E04A1AB3B6416D9BEC66A691A00139';

SELECT
--	c.id AS id,
--	c.objectid AS objectid,
--	c.billcode AS billcode,
--	c.zicmc AS zicmc,
--	c.zicfl AS zicfl,
--	c.hangyfl AS hangyfl,
--	c.jizrq AS jizrq,
--	c.shulj,
--	c.mianjj,
--	c.jiazj,
--	c.jiaoysyfx AS jiaoysyfx,
--	c.shiybm AS shiybm,
--	c.shiyr AS shiyr,
--	c.cunfdd AS cunfdd,
--	c.zicgs AS zicgs,
--	c.shiyzk AS shiyzk,
--	c.ruzxs AS ruzxs,
--	c.sortgb AS sortgb,
--	c.hangydl AS hangydl,
--	c.beiz AS beiz
sum(SHULJ)
FROM
	(
	SELECT
		c.id AS id,
		c.objectid AS objectid,
		c.billcode AS billcode,
		c.zicmc AS zicmc,
		c.zicfl AS zicfl,
		c.hangyfl AS hangyfl,
		c.jizrq AS jizrq,
	CASE
			WHEN (ch.nature = 'process'
			OR (ch.nature = 'sale'
			AND ch.biztype IN ('com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine',
			'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'))) THEN COALESCE(ch.shul_j, 0)
			WHEN ch.nature = 'sale'
			AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' THEN abs(COALESCE(ch.shul_z, 0))
			ELSE 0
		END AS shulj,
	CASE
			WHEN (ch.nature = 'process'
			OR (ch.nature = 'sale'
			AND ch.biztype IN ('com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine',
			'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'))) THEN COALESCE(ch.mianj_j, 0)
			WHEN ch.nature = 'sale'
			AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' THEN abs(COALESCE(ch.mianj_z, 0))
			ELSE 0
		END AS mianjj,
	CASE
			WHEN (ch.nature = 'process'
			OR (ch.nature = 'sale'
			AND ch.biztype IN ('com.jiuqi.np.gams2.business.bill.Assetdisposereg_BillDefine',
			'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine'))) THEN COALESCE(ch.jiaz_j, 0)
			WHEN ch.nature = 'sale'
			AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' THEN abs(COALESCE(ch.jiaz_z, 0))
			ELSE 0
		END AS jiazj,
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
		gams_card_change  ch
	LEFT JOIN gams_card  c ON
		ch.cardid = c.id
	WHERE
		ch.caiwjzrq IS NOT NULL
		AND ch.caiwjzrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND ch.caiwjzrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND ((ch.nature = 'process'
		AND ch.biztype <> 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine')
		OR ch.nature = 'sale')
		AND ch.sortgb = '3711F2B38000000196D90238154FE14D'
		AND ch.org = '6E35BC1F80000001F6D62BD49F8EC9CC')  c
WHERE
	(COALESCE(c.shulj, 0) <> 0
	OR COALESCE(c.mianjj, 0) <> 0
	OR COALESCE(c.jiazj, 0) <> 0);
	
	SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.NATURE IS NULL ;
	SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan  WHERE gan. IS NULL ;
	
	SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.caiwjzrq IS NULL ;
	SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan  WHERE gan. IS NULL ;


SELECT
	COALESCE(sum(abs(bdcard.SHULJ)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.JIAZJ)), 0)   benqjsqtje
FROM
	CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 bdcard
WHERE
	bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGBID IS NOT NULL)
	AND bdcard.JIZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.JIZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGBID = '3DCA958F0000002178673E76D0CE4984';

SELECT
	COALESCE(sum(abs(bdcard.shul_j)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.jiaz_j)), 0)   benqjsqtje
FROM
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
WHERE
	bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGB IS NOT NULL)
	AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGB = '3DCA958F0000002178673E76D0CE4984';

	
CREATE TABLE czjsty AS 
select *
           from CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329   bdcard 
           where bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
               and (bdcard.SORTGBID is not null)
                 and bdcard.JIZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
                 and bdcard.JIZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
           		AND BDCARD.SORTGBID = '3DCA958F0000002178673E76D0CE4984';
           	
 CREATE TABLE zcjsty AS 
		           select *
		           from CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE  bdcard 
		           where bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
		               and (bdcard.SORTGB is not null)
		                 and bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 and bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 AND BDCARD.SORTGB = '3DCA958F0000002178673E76D0CE4984';
		                
SELECT * FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty);
		               
SELECT * FROM czjsty WHERE cardobjectid NOT IN (SELECT CARDOBJECTID FROM zcjsty);
		               
SELECT * FROM zcjsty WHERE cardid NOT IN (SELECT cardrecid FROM czjsty);
		               
SELECT gcc.CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc LEFT JOIN CQDZGCZYXY_ZCGL.GAMS_CARD gc ON gcc.CARDID = gc.ID WHERE gc.BILLCODE = 'TY2020000510';
 
SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000510';
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM zcjsty WHERE cardid = '6F2460C5200000A1C08CBB8CCC53CC42';
SELECT * FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE cardid = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_JC_ASSETSORT_GB gjag WHERE id = '3DCA958F0000002178673E76D0CE4984';
		              	
SELECT * FROM GAMS_CARD_CHANGE gcc WHERE SORTGB IS NULL ;

UPDATE GAMS_CARD_CHANGE a SET SORTGB = (SELECT gc.SORTGB FROM GAMS_CARD gc WHERE gc.ID = a.CARDID) WHERE a.SORTGB IS NULL ;

SELECT * FROM GAMS_CARD gc WHERE gc.SORTGB IS NULL ;

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.SORTGBID IS NULL ;



CREATE TABLE CQDZGCZYXY_ZCGL.gams_card_change AS SELECT * FROM GAMS_CARD_CHANGE_TEMP gcct ;

--处理通用
UPDATE
	CQDZGCZYXY_ZCGL.GAMS_CARD
SET
	CAIWJZRQ = CAIWRZRQ
WHERE
	id IN (
	SELECT
		CARDRECID
	FROM
		(
		SELECT
			*
		FROM
			CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 bdcard
		WHERE
			bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
			AND (bdcard.SORTGBID IS NOT NULL)
			AND bdcard.JIZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
			AND bdcard.JIZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
			AND BDCARD.SORTGBID = '3711F12FC000000192E940E7FAE32E55')
	WHERE
		cardrecid NOT IN (
		SELECT
			cardid
		FROM
			(
			SELECT
				*
			FROM
				CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
			WHERE
				bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
				AND (bdcard.SORTGB IS NOT NULL)
				AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
				AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
				AND BDCARD.SORTGB = '3711F12FC000000192E940E7FAE32E55')));
--处理家具
UPDATE
	CQDZGCZYXY_ZCGL.GAMS_CARD
SET
	CAIWJZRQ = CAIWRZRQ
WHERE
	id IN (
	SELECT
		CARDRECID
	FROM
		(
		SELECT
			*
		FROM
			CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 bdcard
		WHERE
			bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
			AND (bdcard.SORTGBID IS NOT NULL)
			AND bdcard.JIZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
			AND bdcard.JIZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
			AND BDCARD.SORTGBID = '3711F2B38000000196D90238154FE14D')
	WHERE
		cardrecid NOT IN (
		SELECT
			cardid
		FROM
			(
			SELECT
				*
			FROM
				CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
			WHERE
				bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
				AND (bdcard.SORTGB IS NOT NULL)
				AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
				AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
				AND BDCARD.SORTGB = '3711F2B38000000196D90238154FE14D')));

UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE a SET CAIWJZRQ = (SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE a.CARDID = gc.ID) WHERE a.CAIWJZRQ IS NULL ;
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET shul_j = abs(shul_z) WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET jiaz_j = abs(jiaz_z) WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET shul_z = NULL WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET jiaz_z = NULL WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';

DROP TABLE czjsty;
DROP TABLE zcjsty;
--期初期末对完

DROP TABLE CQDZGCZYXY_ZCGL.gams_card_change ;
CREATE TABLE CQDZGCZYXY_ZCGL.gams_card_change0331 AS SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE;

CREATE TABLE CQDZGCZYXY_ZCGL.gams_card_change AS SELECT * FROM gams_card_change0331;

CREATE TABLE CQDZGCZYXY_ZCGL.gams_card_change AS SELECT * FROM GAMS_CARD_CHANGE_TEMP gcct ;


SELECT CAIWJZRQ,JIZRQ,CAIWRZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE id IN (SELECT CARDRECID  FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty)) ;

SELECT * FROM czjsty a LEFT JOIN zcjsty b ON a.CARDRECID = b.CARDID WHERE a.SHULJ = b.SHUL_J ;

SELECT b.BIZCODE ,sum(SHUL_J) FROM zcjsty b  WHERE b.SHUL_J IS NOT NULL GROUP BY b.BIZCODE;

SELECT a.BILLCODE ,sum(SHULJ) FROM czjsty a WHERE a.SHULJ  IS NOT NULL GROUP BY a.BILLCODE;

SELECT * FROM czjsty WHERE BILLCODE = 'TKSQ2020000004';

SELECT * FROM zcjsty WHERE CARDID = '63932042BF054259B56931A9FD6E50A7';

SELECT * FROM GAMS_CARD gc WHERE gc.ID = '63932042BF054259B56931A9FD6E50A7';

SELECT * FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';

SELECT jizrq,nature,biztype,sortgb FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.BILLCODE = 'WX2020000023';

SELECT * FROM CQDZGCZYXY_ZCGL.gams_card_change a WHERE a.cardobjectid = 'EA3F90F9D3DD4CC385CD578B9F48EE80';

UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET shul_j = abs(shul_z) WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';

UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET jiaz_j = abs(jiaz_z) WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';

UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET shul_z = NULL WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';

UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET jiaz_z = NULL WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine';

SELECT * FROM gams_card_change WHERE id = '864B55FAD50E4948B15888324C8A9527';

DELETE FROM gams_card_change WHERE id = '864B55FAD50E4948B15888324C8A9527';

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE ='WX2020000036';

SELECT * FROM GAMS_CARD gc WHERE gc.OBJECTID ='EA3F90F9D3DD4CC385CD578B9F48EE80';

INSERT INTO CQDZGCZYXY_ZCGL.gams_card_change (ID,CARDID,CARDOBJECTID,BIZID,BIZTYPE,BIZTIME,ORG,JIZRQ,ZICFL,SHIYBM,SHIYZK,SHIYR,QUDFS,YONGTFL,CHANQXS,QUANSXZ,JIAZLX,CHUZXS,CUNFDD,JIAZ,JIAZ_Z,JIAZ_J,SHUL,SHUL_Z,SHUL_J,MIANJ,MIANJ_Z,MIANJ_J,BIANZQK,JIAOYSYFX,HANGYFL,SORTGB,BIZCODE,JIZQJ,HANGYDL,GRADE,NATURE,ZICFL_D,SORTGB_D,HANGYFL_D,HANGYDL_D,SHIYBM_D,SHIYR_D,CUNFDD_D,JIAOYSYFX_D,SHIYZK_D,QUDFS_D,BIANZQK_D,YONGTFL_D,CHANQXS_D,QUANSXZ_D,JIAZLX_D,JINGFKM_D,CAOZSJ,XIAOJBGYF,XIAOJBGYF_Z,XIAOJBGYF_J,XIAOJQZBGSYF,XIAOJQZBGSYF_Z,XIAOJQZBGSYF_J,XIAOJYWYF,XIAOJYWYF_Z,XIAOJYWYF_J,XIAOJIQTYF,XIAOJIQTYF_Z,XIAOJIQTYF_J,HANGYFLNEW,BIANDCZSXH,ZICFLCODE,CAIWJZRQ,FINALBILLID) VALUES
('864B55FAD50E4948B15888324C8A9527',
'48BF902C02CC49B198234DBDF1C46EF1',
'EA3F90F9D3DD4CC385CD578B9F48EE80',
'29320B09E4D742409AC4298F3DB9A202',
'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine',
TIMESTAMP'2020-09-28 09:39:13.677',
'6E35BC1F80000001F6D62BD49F8EC9CC',
TIMESTAMP'2020-09-25 00:00:00',
'66C8BC4D00000001C72D9DB1D2BECDBE',
'6E35DEF140000061B633A57BFA16DED0',
'5E5B480EC000000128A33A05401E5748',
'6E35E0BF20000001278AD5E1C23FEC14',
'36B91A2620000001112E65D5B88F4774',
NULL,
NULL,
NULL,
'36B908C8A00000016F9E6175B4B985DA',
NULL,
NULL,
1120,
NULL,
1120,
1,
NULL,
1,
0,
0,
NULL,
NULL,
'3AB70BFC40000021A9A6A1A1175DC935',
'66C8BC4D00000001C72D9DB1D2BECDBE',
'3DCA958F0000002178673E76D0CE4984',
'TKSQ2020000006',
'202009',
'3AF8EAD040000001C2BD309451B5B7AC',
'strict',
'sale',
'66C8BC4D00000001C72D9DB1D2BECDBE',
'3DCA958F0000002178673E76D0CE4984',
'66C8BC4D00000001C72D9DB1D2BECDBE',
'3AF8EAD040000001C2BD309451B5B7AC',
'6E35DEF140000061B633A57BFA16DED0',
'6E35E0BF20000001278AD5E1C23FEC14',
NULL,
'3AB70BFC40000021A9A6A1A1175DC935',
'5E5B480EC000000128A33A05401E5748',
'36B91A2620000001112E65D5B88F4774',
NULL,
NULL,
NULL,
NULL,
'36B908C8A00000016F9E6175B4B985DA',
'48BA306840000001BB59F5B46FD08CC6',
TIMESTAMP'2020-09-28 09:39:13.706',
NULL,
0,
NULL,
NULL,
0,
NULL,
NULL,
0,
NULL,
NULL,
0,
NULL,
'B12ECF8897EA4A2A86B6118C45D63706',
1,
'6050633',
TIMESTAMP'2020-09-24 09:39:13.706',
'29320B09E4D742409AC4298F3DB9A202');
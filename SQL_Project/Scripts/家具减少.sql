SELECT * FROM GAMS_ASSETCARD_20210329 ga ;

SELECT * FROM GAMS_ASSETCARDCHANGE_NEW_0329 gan ;

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_JC_ASSETSORT_GB gjag ;

DROP TABLE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE ;

CREATE TABLE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE AS SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE_qm ;
--CREATE TABLE table33097 AS 
SELECT
--c.*
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
	AND BDCARD.SORTGBID = '3711F2B38000000196D90238154FE14D';

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
	AND BDCARD.SORTGB = '3711F2B38000000196D90238154FE14D';

DROP TABLE czjsty;
DROP TABLE zcjsty;	

CREATE TABLE czjsty AS 
select *
           from CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329   bdcard 
           where bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
               and (bdcard.SORTGBID is not null)
                 and bdcard.JIZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
                 and bdcard.JIZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
           		AND BDCARD.SORTGBID = '3711F2B38000000196D90238154FE14D';
           	
 CREATE TABLE zcjsty AS 
		           select *
		           from CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE  bdcard 
		           where bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
		               and (bdcard.SORTGB is not null)
		                 and bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 and bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 AND BDCARD.SORTGB = '3711F2B38000000196D90238154FE14D';
		                
SELECT * FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty);
		               
SELECT * FROM czjsty WHERE cardobjectid NOT IN (SELECT CARDOBJECTID FROM zcjsty);
		               
SELECT * FROM zcjsty WHERE cardid NOT IN (SELECT cardrecid FROM czjsty);
		               
SELECT gcc.CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc LEFT JOIN CQDZGCZYXY_ZCGL.GAMS_CARD gc ON gcc.CARDID = gc.ID WHERE gc.BILLCODE = 'TY2020000510';
 
SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000510';
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM zcjsty WHERE cardid = '6F2460C5200000A1C08CBB8CCC53CC42';

SELECT * FROM zcjsty WHERE ID = '43640364C4BB4CA59F8CEF26FC0FF794';

SELECT * FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE cardid = 'EC6CFDB6D82D4307813C7A779B20FB2B';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_JC_ASSETSORT_GB gjag WHERE id = '3711F2B38000000196D90238154FE14D';
		              	
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDOBJECTID = '72466B147F66452BBF5F621BF9762C22';

SELECT gcc.SORTGB ,gcc.CAIWJZRQ ,ORG FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.CARDOBJECTID = '72466B147F66452BBF5F621BF9762C22';

UPDATE GAMS_CARD_CHANGE a SET CAIWJZRQ = (SELECT JIZRQ FROM czjsty b WHERE a.CARDID = b.CARDRECID) WHERE a.CARDID IN (SELECT CARDID FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty))

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.CARDOBJECTID = '9F6F03D3A7C34C7781665BDE6BF810E6';

--UPDATE GAMS_CARD_CHANGE a SET SORTGB = (SELECT gc.SORTGB FROM GAMS_CARD gc WHERE gc.ID = a.CARDID) WHERE a.SORTGB IS NULL ;

SELECT * FROM GAMS_CARD gc WHERE gc.OBJECTID = '72466B147F66452BBF5F621BF9762C22';

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.SORTGBID IS NULL ;



CREATE TABLE CQDZGCZYXY_ZCGL.gams_card_change AS SELECT * FROM GAMS_CARD_CHANGE_TEMP gcct ;

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

				
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE a SET CAIWJZRQ = (SELECT JIZRQ FROM czjsty b WHERE a.CARDID = b.CARDRECID) 

WHERE a.CARDID IN ('E84F7E75E8AD4305BBB07B0332BA7C4A',
'9F395B65C223484C98116726E008A2F8',
'E4EF4665AD0E44448C57881145E6D179',
'FCB978489CD3441AAE3012C4A2FC1680',
'9F6F03D3A7C34C7781665BDE6BF810E6',
'FC09F9337CB2417A8C0ADEB3486FBE8D',
'72466B147F66452BBF5F621BF9762C22',
'5437070A4525422A8E7738F0FD16CD5C',
'A007F49CC9834D96A1C099125ED72F5C',
'61A83DBB8ADA4CFE837410913C7AF1C4',
'03F8B742CF974991BDA5D1F5AA774557',
'EC6CFDB6D82D4307813C7A779B20FB2B',
'6C70D8E7D3164DCFB233A1FBECD8EF25',
'F6DBB13547E44FCF8E8EE9BB59007DE9',
'B06684A5121B443A99F90C34BC3BDB37');

UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE a SET CAIWJZRQ = (SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE a.CARDID = gc.ID) WHERE a.CAIWJZRQ IS NULL ;
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET shul_j = abs(shul_z) WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' AND CARDOBJECTID <> 'EA3F90F9D3DD4CC385CD578B9F48EE80';
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET jiaz_j = abs(jiaz_z) WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' AND CARDOBJECTID <> 'EA3F90F9D3DD4CC385CD578B9F48EE80';
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET shul_z = NULL WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' AND CARDOBJECTID <> 'EA3F90F9D3DD4CC385CD578B9F48EE80';
UPDATE CQDZGCZYXY_ZCGL.gams_card_change SET jiaz_z = NULL WHERE BIZTYPE = 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' AND CARDOBJECTID <> 'EA3F90F9D3DD4CC385CD578B9F48EE80';

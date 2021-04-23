
	SELECT
--	sum(ch.shul_z) AS shulz,
--	sum(ch.mianj_z) AS mianjz,
--	sum(ch.jiaz_z) AS jiazz
	ch.NATURE ,ch.BIZTYPE ,ch.*
FROM
	gams_card_change  ch
LEFT JOIN gams_card  c ON
	ch.cardid = c.id
WHERE
	ch.caiwjzrq IS NOT NULL
	AND ch.caiwjzrq >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
	AND ch.caiwjzrq <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
	AND (COALESCE(ch.shul_z, 0) <> 0
	OR COALESCE(ch.mianj_z, 0) <> 0
	OR COALESCE(ch.jiaz_z, 0) <> 0)
	AND ch.sortgb = '3711F235200000010959C9C3DCE08650'
	AND ch.org = '6E35BC1F80000001F6D62BD49F8EC9CC';
	
SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_JC_ASSETSORT_GB gjag WHERE id = '3711F235200000010959C9C3DCE08650';


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
	AND BDCARD.SORTGBID = '3711F235200000010959C9C3DCE08650';

SELECT
	COALESCE(sum(abs(bdcard.SHUL_Z)), 0)   benqjsqtsl,
	COALESCE(sum(abs(bdcard.JIAZ_Z)), 0)   benqjsqtje
FROM
	CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE bdcard
WHERE
	bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	AND (bdcard.SORTGB IS NOT NULL)
	AND bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
	AND BDCARD.SORTGB = '3711F235200000010959C9C3DCE08650';

DROP TABLE czjsty;
DROP TABLE zcjsty;
	
CREATE TABLE czjsty AS 
select *
           from CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329   bdcard 
           where bdcard.orgunit = '6E35BC1F80000001F6D62BD49F8EC9CC'
               and (bdcard.SORTGBID is not null)
                 and bdcard.JIZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
                 and bdcard.JIZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
           		AND BDCARD.SORTGBID = '3711F235200000010959C9C3DCE08650';
           	
 CREATE TABLE zcjsty AS 
		           select *
		           from CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE  bdcard 
		           where bdcard.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
		               and (bdcard.SORTGB is not null)
		                 and bdcard.CAIWJZRQ >= to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 and bdcard.CAIWJZRQ <= to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss')
		                 AND BDCARD.SORTGB = '3711F235200000010959C9C3DCE08650';
		                
SELECT * FROM czjsty WHERE cardrecid NOT IN (SELECT cardid FROM zcjsty);
		               
SELECT * FROM czjsty WHERE cardobjectid NOT IN (SELECT CARDOBJECTID FROM zcjsty);
		               
SELECT * FROM zcjsty WHERE cardid NOT IN (SELECT cardrecid FROM czjsty);
		               
SELECT gcc.CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc LEFT JOIN CQDZGCZYXY_ZCGL.GAMS_CARD gc ON gcc.CARDID = gc.ID WHERE gc.BILLCODE = 'TY2020000510';
 
SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000510';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = '8602EF31E9E943528A5BF3C7BC2A235B';

SELECT gc.CAIWJZRQ ,gc.CAIWRZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE gc.ID = '8602EF31E9E943528A5BF3C7BC2A235B';

SELECT * FROM zcjsty WHERE cardid = '8602EF31E9E943528A5BF3C7BC2A235B';

SELECT * FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE cardid = '6ED4E81FC00001A174D33B3A39F3C86F';

SELECT CAIWJZRQ ,CAIWJZRQ FROM CQDZGCZYXY_ZCGL.gams_card_change WHERE cardid = '6ED4E81FC00001A174D33B3A39F3C86F';

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_JC_ASSETSORT_GB gjag WHERE id = '3DCA958F0000002178673E76D0CE4984';
		              	
SELECT * FROM GAMS_CARD_CHANGE gcc WHERE SORTGB IS NULL ;

UPDATE GAMS_CARD_CHANGE a SET SORTGB = (SELECT gc.SORTGB FROM GAMS_CARD gc WHERE gc.ID = a.CARDID) WHERE a.SORTGB IS NULL ;

SELECT * FROM GAMS_CARD gc WHERE gc.SORTGB IS NULL ;

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan WHERE gan.SORTGBID IS NULL ;



CREATE TABLE CQDZGCZYXY_ZCGL.gams_card_change AS SELECT * FROM GAMS_CARD_CHANGE_TEMP gcct ;

---处理通用
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
			AND BDCARD.SORTGBID = '3711F235200000010959C9C3DCE08650')
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
				AND BDCARD.SORTGB = '3711F235200000010959C9C3DCE08650')));

---
UPDATE CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE a SET CAIWJZRQ = (SELECT CAIWJZRQ FROM CQDZGCZYXY_ZCGL.GAMS_CARD gc WHERE a.CARDID = gc.ID) WHERE a.CAIWJZRQ IS NULL ;



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

	SELECT
	c.id AS id,
	c.objectid AS objectid,
	c.billcode AS billcode,
	c.zicmc AS zicmc,
	c.zicfl AS zicfl,
	c.hangyfl AS hangyfl,
	c.jizrq AS jizrq,
	COALESCE(ch.shul_z, 0) AS shulz,
	COALESCE(ch.mianj_z, 0) AS mianjz,
	COALESCE(ch.jiaz_z, 0) AS jiazz,
	c.jiaoysyfx AS jiaoysyfx,
	c.shiybm AS shiybm,
	c.shiyr AS shiyr,
	c.cunfdd AS cunfdd,
	c.zicgs AS zicgs,
	c.yuanzcbh AS yuanzcbh,
	c.shiyzk AS shiyzk,
	c.ruzxs AS ruzxs,
	c.sortgb AS sortgb,
	c.hangydl AS hangydl,
	c.beiz AS beiz
FROM
	gams_card_change AS ch
LEFT JOIN gams_card AS c ON
	ch.cardid = c.id
WHERE
	c.cunfdd IN (@cunfdd)
	AND c.zicgs IN (@zicgs)
	AND c.shiyr IN (@shiyr)
	AND c.shiybm IN (@shiybm)
	AND c.hangyfl IN (@hangyfl)
	AND c.zicfl IN (@zicfl)
	AND c.jiaoysyfx IN (@jiaoysyfx)
	AND ch.caiwjzrq IS NOT NULL
	AND truncday(ch.caiwjzrq) >= truncday(@caiwjzrq_min)
	AND truncday(ch.caiwjzrq) <= truncday(@caiwjzrq_max)
	AND (COALESCE(ch.shul_z, 0) <> 0
	OR COALESCE(ch.mianj_z, 0) <> 0
	OR COALESCE(ch.jiaz_z, 0) <> 0)
	AND ch.nature = @nature
	AND ch.biztype <> @biztype1
	AND ch.biztype = @biztype2
	AND (ch.nature IN (@nature2)
	OR (ch.nature = @nature3
	AND ch.biztype = @biztype3))
	AND ch.sortgb = @sortgb
	AND ch.hangydl = @hangydl
	AND ch.org = @orgunit
END

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.JIZRQ <to_date('2019-11-20 00:00:00', 'yyyy-mm-dd HH24:mi:ss') AND  gcc.BIZTYPE IS NULL ;

SELECT * FROM XXKD.GAMS_CARD_CHANGE gcc WHERE gcc.JIZRQ <to_date('2019-11-20 00:00:00', 'yyyy-mm-dd HH24:mi:ss') AND  gcc.BIZTYPE IS NULL ;

SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE gcc WHERE gcc.JIZRQ <to_date('2019-11-20 00:00:00', 'yyyy-mm-dd HH24:mi:ss') AND  gcc.BIZTYPE IS NULL ;

SELECT * FROM CQS_ZCGL.GAMS_ASSETCARDCHANGE_NEW_0329 gan ;

SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE gcc WHERE gcc.JIZRQ <to_date('2019-11-20 00:00:00', 'yyyy-mm-dd HH24:mi:ss') AND  gcc.BIZTYPE IS NULL ;


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
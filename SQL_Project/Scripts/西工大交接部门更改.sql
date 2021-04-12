
SELECT max(CAOZSJ),CARDID 
--SELECT gcc.CAOZSJ ,gcc.*
FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine' AND gcc.BIANDCZSXH = 1  

AND gcc.CARDID = '6ED57E2980000201142A67CE25F1F9CD' 
GROUP BY CARDID;

UPDATE GAMS_CARD_CHANGE a SET SHIYBM = (SELECT max(CAOZSJ),CARDID 
--SELECT gcc.CAOZSJ ,gcc.*
FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine' AND gcc.BIANDCZSXH = 1  

AND gcc.CARDID = '6ED57E2980000201142A67CE25F1F9CD' 
GROUP BY CARDID;) WHERE a.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine' AND a.CARDID = 


SELECT max(CAOZSJ),CARDID 
--SELECT gcc.CAOZSJ ,gcc.*
FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine' AND gcc.BIANDCZSXH = 1  

AND gcc.CARDID = '6ED57E2980000201142A67CE25F1F9CD' 
GROUP BY CARDID;

--所有第一次交接
CREATE TABLE  temp_table AS 
SELECT a.* FROM GAMS_CARD_CHANGE a,(SELECT max(CAOZSJ) AS CAOZSJ,CARDID 
--SELECT gcc.CAOZSJ ,gcc.*
FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine' AND gcc.BIANDCZSXH = 1  
--AND gcc.CARDID = '6ED57DCB2000030175EA229ED0DF08D3' 
GROUP BY CARDID)   b WHERE a.CARDID = b.CARDID AND a.CAOZSJ = b.CAOZSJ AND a.BIANDCZSXH = 1;

SELECT * FROM temp_table;
DROP TABLE GAMS_CARD_CHANGE;
DROP TABLE temp_table;
CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM GAMS_CARD_CHANGE_QM gccq ;

UPDATE GAMS_CARD_CHANGE b SET SHIYBM = (SELECT shiybm FROM temp_table a WHERE a.cardid = b.CARDID) WHERE b.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine';

UPDATE
	GAMS_CARD a
SET
	a.SHIYBM = (
	SELECT
		SHIYBM
	FROM
		temp_table gcc
	WHERE
		gcc.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine'
		AND gcc.CARDID = a.id
	GROUP BY
		SHIYBM)
WHERE
	a.id IN (
	SELECT
		CARDid
	FROM
		GAMS_CARD_CHANGE gcc
	WHERE
		gcc.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine')
	AND a.id NOT IN (
	SELECT
		id
	FROM
		GAMS_CARD_CHANGE gcc2
	WHERE
		gcc2.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.TransferBillDefine'
		OR gcc2.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.NormalAssetChangeBillDefine');





SELECT SHIYBM 
FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTYPE = 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine'
AND gcc.CARDID = '6ED57DCB2000030175EA229ED0DF08D3';

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = 'JJ2013000002';

SELECT BIZTYPE FROM GAMS_CARD_CHANGE gcc GROUP BY BIZTYPE 

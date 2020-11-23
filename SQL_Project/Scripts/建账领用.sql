






SELECT
	rownum ,
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
	AND c.CARDSTATE LIKE '0%' AND  rownum < = 500;

CREATE TABLE temp_1020 AS (SELECT
	c.*
FROM
	GAMS_ACCEPTANCEUSE ga
LEFT JOIN GAMS_CARD c ON
	ga.cardid = c.id
WHERE
	ga.lingyzt = 0
	AND ga.BILLDEFINE = 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine'
	AND ga.BILLDEFINE IS NOT NULL
	AND ga.cardid IS NOT NULL
	AND c.CARDSTATE LIKE '0%')
	

	
SELECT * FROM GAMS_JC_ENTRYFORM gje ;

SELECT *FROM GAMS_ACCEPTANCEUSE ga WHERE ga.BILLDEFINE = 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine'; --领用信息表

SELECT gc.* FROM GAMS_CARD gc ; --卡片表

SELECT * FROM GAMS_CARD_LOCK gcl ;  --卡片锁定表



	
SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020011039';

SELECT * FROM GAMS_CARD_TYSB gct WHERE gct.BILLCODE = 'TY2020011039';

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE CARDID = '7B1EECDA4DF547EB8DE875964BA5D3A3';

SELECT * FROM GAMS_CARD_OUTLAY WHERE  MASTER_ID = '7B1EECDA4DF547EB8DE875964BA5D3A3';

SELECT * FROM GAMS_CARD_INVOICE WHERE MASTER_ID = '7B1EECDA4DF547EB8DE875964BA5D3A3';

SELECT A.constraint_name, A.table_name, b.constraint_name
  FROM user_constraints A, user_constraints b
 WHERE A.constraint_type = 'R'
   AND b.constraint_type = 'P'
   AND A.r_constraint_name = b.constraint_name
   AND A.constraint_name = UPPER('FK2XBEYCFSEEYCSE9YOR2SCP4OP')




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
DELETE  FROM GAMS_ACCEPTANCEUSE WHERE id IN (SELECT a.id FROM  GAMS_ACCEPTANCEUSE  a  left join gams_card b on a.cardid = b.id left join gams_jc_depositary c on c.id = b.cunfdd where  a.lingyzt= 0 AND a.CARDID NOT IN (SELECT id FROM GAMS_CARD gc));




	
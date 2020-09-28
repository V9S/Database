SELECT
	*
FROM
	GAMS_JC_DEPARTMENT gjd
WHERE
	gjd.id = 'F738A86BCB074070E0430A1401494070';

SELECT
	*
FROM
	ORG o2 ;

SELECT
	*
FROM
	NP_USER nu ;

SELECT
	*
FROM
	GAMS_JC_PERSONNEL gjp
WHERE
	gjp.code = '0001';

UPDATE
	GAMS_JC_DEPARTMENT a
SET
	a.DEPARTMENTLEVEL = (
		CASE WHEN LENGTH(a.PARENTS) = 37 THEN 'DF13D835A6644935B66D085B5BF3F3E3'
		WHEN LENGTH(a.PARENTS) = 74 THEN 'B3DE15348C3D47178E98FA876EE19C5F'
		WHEN LENGTH(a.PARENTS) = 111 THEN '480ECA83A0A842789D3C607A47F136B2'
		WHEN LENGTH(a.PARENTS) = 148 THEN '135D32ABA6D64A02BE1A3D393C2D27CE'
		WHEN LENGTH(a.PARENTS) = 183 THEN 'C76CCA44D29748E194B89614A112ECE5'
	END);

UPDATE
	org_t_admin a
SET
	a.validtime = to_date('1969-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss');

SELECT
	*
FROM
	gams_jc_department;

SELECT
	SHIXRQ
FROM
	GAMS_CARD gc
WHERE
	gc.BILLCODE = 'TY2020002604'
	OR GC.BILLCODE = '000000002';

SELECT
	count(1),
	SHIXRQ
FROM
	GAMS_CARD
GROUP BY
	SHIXRQ;

SELECT
	count(1)
FROM
	GAMS_CARD g;

/*28783*/
SELECT
	count(1),
	SHIXRQ
FROM
	GAMS_CARD_TYSB gct
GROUP BY
	SHIXRQ;

UPDATE
	GAMS_CARD_TYSB a
SET
	a.SHIXRQ = to_date('9999-12-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss')
WHERE
	a.SHIXRQ IS NULL;

SELECT
	*
FROM
	GAMS_JC_ZICGS gjz ;

SELECT
	*
FROM
	GAMS_ASSETCHANGE ga
UPDATE
	org_t_admin a
SET
	a.validtime = to_date('1969-01-01 00:00:00', 'yyyy-mm-dd HH24:mi:ss');

SELECT
	BIZTYPE
FROM
	GAMS_CARD_CHANGE gcc
GROUP BY
	BIZTYPE ;

SELECT
	*
FROM
	GAMS_CARD_TRACE gct
WHERE
	gct.CARDID = (
	SELECT
		ID
	FROM
		GAMS_CARD gc
	WHERE
		gc.BILLCODE = 'FW2020000016');

SELECT
	gct.BIZTYPE,
	gct.BIZCODE
FROM
	GAMS_CARD_TRACE gct
GROUP BY
	gct.BIZTYPE ,
	gct.BIZCODE ;

SELECT
	gct.BIZTYPE
FROM
	GAMS_CARD_TRACE gct
GROUP BY
	gct.BIZTYPE ;

SELECT
	COUNT(1),
	gc.yujsmzl
FROM
	GAMS_CARD gc
GROUP BY
	gc.yujsmzl;

UPDATE
	gams_unitdatatrans_detail l
SET
	l.isfinishtrans = 0;

SELECT
	l.ISFINISHTRANS
FROM
	gams_unitdatatrans_detail l;

CREATE TABLE GAMS_CARD_bak_0821 AS
SELECT
	*
FROM
	GAMS_CARD gc
UPDATE
	gams_card a
SET
	a.yujsmzl = (
	SELECT
		yujsmzl
	FROM
		GAMS_CARD_BAK_0821 gcb
	WHERE
		gcb.id = a.ID );

DROP TABLE GAMS_CARD_BAK_0821 ;

DELETE
FROM
	gams_card;

SELECT
	count(1),
	yujsmzl
FROM
	GAMS_CARD_TYSB
GROUP BY
	yujsmzl
SELECT
	*
FROM
	GAMS_JC_DEPARTMENT;

SELECT
	ID
FROM
	GAMS_INSPECTIONENTRY gi
WHERE
	gi.ORG_ID <> (
	SELECT
		ID
	FROM
		ORG o2) ;

SELECT
	*
FROM
	GAMS_INSPECTIONENTRY_PAYINFO
SELECT
	COUNT(1),
	BILL_GROUP
FROM
	GAMS_BILL_ANNEX gba
GROUP BY
	BILL_GROUP CREATE VIEW test AS
SELECT
	gjp.ID ,
	gjp.CODE ,
	gjp.NAME
FROM
	GAMS_JC_PERSONNEL gjp
SELECT
	*
FROM
	test;

SELECT
	*
FROM
	GAMS_JC_DEPOSITARY;

SELECT
	*
FROM
	GAMS_JC_DEPARTMENTLEVEL;

SELECT
	gc.BILLCODE ,
	gc.ZICMC ,
	gc.CARDSTATE ,
	gc.
FROM
	GAMS_CARD gc
LEFT JOIN

	
	

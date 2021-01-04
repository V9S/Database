SELECT
	qim.*
FROM
	gams_jc_assetsort_gb guobdl
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC' ) qim ON
	qim.guobdl = guobdl.id
WHERE
	guobdl.name = '02' ;
	
	
	
SELECT
	*
FROM
	GAMS_CARD_TYSB gct
WHERE
	gct.OBJECTID NOT IN (
	SELECT
		qim.cardobjectid
	FROM
		gams_jc_assetsort_gb guobdl
	LEFT JOIN (
		SELECT
			change.sortgb guobdl,
			CHANGE.*
		FROM
			gams_card_change CHANGE
		WHERE
			change.sortgb IS NOT NULL
			AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC' ) qim ON
		qim.guobdl = guobdl.id
	WHERE
		guobdl.name = '02') AND gct.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC';

	
	
	
		

SELECT
	qim.*
FROM
	gams_jc_assetsort_gb guobdl
LEFT JOIN (
	SELECT
		change.sortgb guobdl,
		CHANGE.*
	FROM
		gams_card_change CHANGE
	WHERE
		change.sortgb IS NOT NULL
		AND change.org = '6E35BC1F80000001F6D62BD49F8EC9CC' ) qim ON
	qim.guobdl = guobdl.id
WHERE
	guobdl.name = '02'AND qim.cardobjectid NOT IN (SELECT gct.OBJECTID FROM GAMS_CARD_TYSB gct WHERE gct.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC');
		
SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = 'AA79CD034FA04AC8BD6560B17F448BD8';

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDOBJECTID = '306EF9E3154B471BA3F13F96872D840C';

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.CARDID = '6ED57D72C0000221DB6A8C40D682A2BC';
	
SELECT * FROM GAMS_CARD gct WHERE gct.BILLCODE = 'TY2019000009';


--解决期初金额问题

SELECT
		gjag.TITLE   guobdl,
		COALESCE(COALESCE(sum(change.shul_z), 0) - COALESCE(sum(change.shul_j), 0), 0)   qicsl,
		COALESCE(COALESCE(sum(change.jiaz_z), 0) - COALESCE(sum(change.jiaz_j), 0), 0)   qicje
	FROM
		GAMS_CARD_CHANGE  CHANGE
		LEFT JOIN GAMS_JC_ASSETSORT_GB gjag ON CHANGE.SORTGB = gjag.ID 
	WHERE
		change.sortgb IS NOT NULL
		AND change.jizrq < to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss')
		AND CHANGE.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC'
	GROUP BY
		gjag.TITLE;
		
		SELECT sum(jiaz_z),sum(jiaz_j) FROM GAMS_CARD_CHANGE gcc WHERE gcc.jizrq < to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss') AND gcc.SORTGB IS NULL AND gcc.ORG = '6E35BC1F80000001F6D62BD49F8EC9CC';
	
		SELECT * FROM GAMS_CARD gc WHERE id = '6ED4F85F200000A10F6C586116E53AEC';
	
		SELECT BIZTYPE FROM GAMS_CARD_CHANGE gcc WHERE gcc.SORTGB IS NULL GROUP BY BIZTYPE ;
		
		UPDATE GAMS_CARD_CHANGE a  SET sortgb = (SELECT SORTGB FROM gams_card c WHERE c.id =a.CARDID ) WHERE a.SORTGB IS NULL;
		
		CREATE TABLE gams_card_change_temp AS SELECT * FROM GAMS_CARD_CHANGE;
		
		DROP TABLE GAMS_CARD_CHANGE;
		
		CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM gams_card_change_temp;
		
	SELECT * FROM GAMS_JC_ASSETSORT_GB WHERE id = '3711F0FCC0000001BFFFD450E0E1A606';
	

UPDATE
	GAMS_CARD_CHANGE a
SET
	JIZRQ = (
	SELECT
		JIZRQ
	FROM
		GAMS_CARD gc
	WHERE
		gc.id = a.CARDID)
WHERE
	a.CARDID IN ('6ED50A1B40000221BACE6D9BC0952C4E',
	'6ED50A1B600003A146EBDD619F4617D0',
	'6ED50A1B400000A1003B8EFDF7208E33',
	'6ED50A1B60000221128DECE3723AAB8C',
	'6ED50A1B600000A19074166DCE260A4C',
	'6ED50A1B800002017DB80651A5CCA081',
	'6ED50A1B600001614931BB4470FF7AF5',
	'6ED50A1B800004413EFD31CF21D7B04A',
	'6ED50A1B800000813D826FE8F412D9C5',
	'6ED50A1B60000461D3E3D7244C7A68C8',
	'6ED50A1B200000014E1EFDEAD346BC34',
	'6ED50A1BA0000381BDC76DFD88D178E3',
	'6ED50A1BA000014177A29D6204C5925E',
	'6ED50A1B80000141F61EB0A2210217F4',
	'6ED50A1B800002C1D5C824ACB83B5543',
	'6ED50A1BA0000081E080A84E21C0063D',
	'6ED50A1B400001610DB15CEE9014C47D',
	'6ED50A1BA00002C139B89E6BAB21A63C',
	'6ED50A1BA0000201D0FABD5D51C03C9E',
	'6ED50A1B600002E1A13F02D991568E7C',
	'6ED50A1B80000381DC0ABA986499C710');

UPDATE
	GAMS_CARD_CHANGE a
SET
	JIZQJ = (
	SELECT
		JIZQJ
	FROM
		GAMS_CARD gc
	WHERE
		gc.id = a.CARDID)
WHERE
	a.CARDID IN ('6ED50A1B40000221BACE6D9BC0952C4E',
	'6ED50A1B600003A146EBDD619F4617D0',
	'6ED50A1B400000A1003B8EFDF7208E33',
	'6ED50A1B60000221128DECE3723AAB8C',
	'6ED50A1B600000A19074166DCE260A4C',
	'6ED50A1B800002017DB80651A5CCA081',
	'6ED50A1B600001614931BB4470FF7AF5',
	'6ED50A1B800004413EFD31CF21D7B04A',
	'6ED50A1B800000813D826FE8F412D9C5',
	'6ED50A1B60000461D3E3D7244C7A68C8',
	'6ED50A1B200000014E1EFDEAD346BC34',
	'6ED50A1BA0000381BDC76DFD88D178E3',
	'6ED50A1BA000014177A29D6204C5925E',
	'6ED50A1B80000141F61EB0A2210217F4',
	'6ED50A1B800002C1D5C824ACB83B5543',
	'6ED50A1BA0000081E080A84E21C0063D',
	'6ED50A1B400001610DB15CEE9014C47D',
	'6ED50A1BA00002C139B89E6BAB21A63C',
	'6ED50A1BA0000201D0FABD5D51C03C9E',
	'6ED50A1B600002E1A13F02D991568E7C',
	'6ED50A1B80000381DC0ABA986499C710');
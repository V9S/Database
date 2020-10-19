
	SELECT
	tt.cwhstsdm,
	sum(i.zhejje)
FROM
	GAMS_ASSETDEPRECDETAIL  i
LEFT JOIN gams_card  gc ON
	gc.id = i.CARD_ID 
LEFT JOIN tc_temp  tt ON
	gc.hangyfl = tt.id
GROUP BY
	tt.cwhstsdm
	
	SELECT * FROM GAMS_CWJK_LOG gcl 
	
SELECT * FROM gams_interface_log;
	
DELETE FROM gams_interface_log;
2020-12-25 14:36:46,
056 [http-nio-8080-EXEC-1] DEBUG org.hibernate.SQL -
SELECT
	gamsaccept0_.id AS col_0_0_,
	gams_jc_de2_.id AS col_1_0_
FROM
	gams_acceptanceuse gamsaccept0_
LEFT OUTER JOIN gams_card gams_card1_ ON
	(gamsaccept0_.cardid = gams_card1_.id)
LEFT OUTER JOIN gams_jc_depositary gams_jc_de2_ ON
	(gams_jc_de2_.id = gams_card1_.cunfdd)
WHERE
	gamsaccept0_.lingyzt = 0
	AND gamsaccept0_.id = '3E0060B015464D8E81112C60F8ECDB2A'






SELECT ga.ID ,gc.ID FROM GAMS_ACCEPTANCEUSE ga   LEFT JOIN GAMS_CARD gc  ON ga.CARDID = gc.ID WHERE LINGYZT = 0 GROUP BY ga.ID ,gc.ID ;

SELECT * FROM GAMS_ACCEPTANCEUSE ga WHERE ga.ID = '3E0060B015464D8E81112C60F8ECDB2A';

SELECT * FROM GAMS_CARD gc WHERE id = '5FA32757A55D4F3FB2CB17DC61B3BC71';

SELECT count(1),LINGYZT FROM GAMS_ACCEPTANCEUSE ga  GROUP BY LINGYZT  ;

SELECT * FROM GAMS_ACCEPTANCEUSE ga WHERE ga.ID = 'A90E2E6AC3524611A46FE7446C330476';

UPDATE GAMS_CARD SET CUNFDD = '6E392ECE200003A17D70DAC96B48CCC0' WHERE id = '6B6545FAAAA64DE4900917D74B781A34';
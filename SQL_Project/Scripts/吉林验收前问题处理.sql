SELECT * FROM GAMS_CARD gc WHERE gc.ZICGS IS   NULL ;

SELECT * FROM GAMS_JC_ZICGS gjz ;

----重要信息变动无法选择全部资产（部分卡片无资产归属）
UPDATE GAMS_CARD SET ZICGS = (SELECT ID FROM GAMS_JC_ZICGS gjz );
--存放地点上级部门显示错误
INSERT INTO AUTHZ_IDENTITY_ROLE VALUES ('632756ECC38240C3B5FE362B5114CD62',)

SELECT * FROM GAMS_JC_DEPOSITARY gjd WHERE code IN ('001003003307','001003003308');

SELECT * FROM GAMS_JC_DEPOSITARY_temp gjd WHERE code IN ('001003003307','001003003308');

CREATE TABLE GAMS_JC_DEPOSITARY_temp AS SELECT * FROM GAMS_JC_DEPOSITARY;

UPDATE
	GAMS_JC_DEPOSITARY a
SET
	PARENTNAME = (
	SELECT
		NAME
	FROM
		GAMS_JC_DEPOSITARY
	WHERE
		id = (
		SELECT
			upper(PARENTNAME)
		FROM
			GAMS_JC_DEPOSITARY_temp b
		WHERE
			a.id = b.id) );

UPDATE GAMS_JC_DEPOSITARY a SET PARENTNAME = (SELECT PARENTNAME FROM GAMS_JC_DEPOSITARY_temp b WHERE a.id = b.id );

SELECT * FROM GAMS_JC_DEPOSITARY WHERE id = '757769C5800006E133EC85D3D740725B'

SELECT * FROM GAMS_JC_DEPOSITARY_temp ;

DELETE FROM GAMS_JC_DEPOSITARY;

SELECT * FROM GAMS_JC_DEPOSITARY WHERE id = (SELECT upper(PARENTNAME) FROM GAMS_JC_DEPOSITARY WHERE id = '757769C5C000024135E5A27F4CD5FD66');

--------建账新加字段

SELECT gi.weixlxr,gi.weixlxdh,heth, hetmc,gid.HETBH, FROM GAMS_INSPECTIONENTRY gi LEFT JOIN GAMS_INSPECTIONENTRY_DETAIL gid ON gi.ID = gid.MASTER_ID ;

SELECT weixlxdh FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020019178';

SELECT gi.weixlxr,gi.weixlxdh,heth, hetmc FROM GAMS_INSPECTIONENTRY gi ;

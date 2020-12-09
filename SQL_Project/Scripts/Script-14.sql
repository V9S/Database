update org_t_admin a set a.validtime = to_date('1966-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss');

SELECT *FROM org_t_admin;

SELECT *FROM ORG o ;

SELECT gc.YUJSMZL FROM GAMS_CARD gc ;

SELECT gct.YUJSMZL FROM GAMS_CARD_TYSB gct ;

SELECT * FROM GAMS_CARD gc WHERE gc.BILLCODE = '000000002';

SELECT * FROM GAMS_CARD_TYSB gct WHERE gct.BILLCODE = '000000002';

------------------------------
SELECT 'drop table '||table_name||' cascade constraints;' FROM USER_TABLES;

SELECT * FROM NP_USER nu WHERE nu.NAME = '00080102';

SELECT * FROM GAMS_JC_PERSONNEL gjp WHERE code = '00080102'; 

SELECT * FROM GAMS_JC_DEPARTMENT gjd WHERE id = (SELECT gjp.DEPARTMENT from GAMS_JC_PERSONNEL gjp WHERE code = '00080102'); 

SELECT * FROM authz_rule_authorization WHERE GRANTEE_ID = '6665b500-19d0-44a0-bdf6-c9ec16a83d5b';

SELECT * FROM AUTHZ_IDENTITY ai WHERE name LIKE '%00080102%';

select * from authz_identity where id NOT in (select a.grantee_id from authz_rule_authorization a group by a.grantee_id);


select * from authz_object_authorization;

SELECT * FROM GAMS_USER_SIGNATURE gus;

SELECT * FROM assign
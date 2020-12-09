delete from gams_card  WHERE BILLCODE = '19960027S'; 

SELECT * FROM GAMS2_WORKFLOW_DEFINITION gwd ;

SELECT * FROM gams_assetchange_outlay;

SELECT *FROM  GAMS_USER_ORG_REL guor ; 

np_user

np_password

SELECT * FROM AUTHZ_IDENTITY ai ;

select l.username from gams_jc_personnel l group by l.username having count(l.stdcode)>1

SELECT * FROM gams_inspectionentry;
SELECT * FROM  gams_jc_cwparam;

SELECT
	sess.sid,
	sess.serial#,
	lo.oracle_username,
	lo.os_user_name,
	ao.object_name,
	lo.locked_mode
FROM
	v$locked_object lo,
	dba_objects ao,
	v$session sess
WHERE
	ao.object_id = lo.object_id
	AND lo.session_id = sess.sid;

CREATE TABLE gams_jc_cwparambak AS SELECT * FROM gams_jc_cwparam;
DROP TABLE gams_jc_cwparam;

CREATE TABLE gams_jc_cwparam AS SELECT * FROM XXKD.gams_jc_cwparam;

SELECT * FROM GAMS_SYSTEMOPTION gs ;

SELECT
	cu.*
FROM
	user_cons_columns cu,
	user_constraints au
WHERE
	cu.constraint_name = au.constraint_name
	AND au.constraint_type = 'P'
	AND au.constraint_name = 'PK_ZC_YWLX';

SELECT YWDH FROM ZC_YWLX;

DELETE FROM ZC_YWLX;

alter table ZC_YWLX add BILLID varchar(60 char)  NULL;
alter table ZC_YWLX add BILLDEFINE varchar(100 char)  NULL;
alter table ZC_YWLX add MODIFYTIME varchar(60 char)  NULL;
alter table ZC_YWLX add INPUTTIME varchar(60 char)  NULL;
alter table ZC_YWLX add ZCLBMXDM varchar(100 char)  NULL;

alter table zc_xx add ZCLBMXDM varchar(100 char)  NULL;
alter table zc_xx add ZCLBMXDM1 varchar(100 char)  NULL;

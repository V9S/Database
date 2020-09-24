ALTER TABLE GAMS_SYS_LOG ADD os varchar(30 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD requestUrl varchar(300 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD ISP varchar(100 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD ipLocation varchar(100 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD realIP varchar(20 char)  NULL;



SELECT * FROM gams_query_task;

SELECT * FROM GAMS_SYS_LOG gsl ;

SELECT * FROM GAMS_JC_FUNDNUMBER gjf ;

SELECT
	this_.id AS id1_247_0_,
	this_.ordinal AS ordinal2_247_0_,
	this_.gradation AS gradatio3_247_0_,
	this_.code AS code4_247_0_,
	this_.name AS name5_247_0_,
	this_.shortName AS shortNam6_247_0_,
	this_.parents AS parents7_247_0_,
	this_.parent AS parent8_247_0_,
	this_.parentName AS parentNa9_247_0_,
	this_.nature AS nature10_247_0_,
	this_.departmentLevel AS departm11_247_0_,
	this_.administrator AS adminis12_247_0_,
	this_.enabled AS enabled13_247_0_,
	this_.creator AS creator14_247_0_,
	this_.createTime AS createT15_247_0_,
	this_.modifyUser AS modifyU16_247_0_,
	this_.modifyTime AS modifyT17_247_0_,
	this_.memo AS memo18_247_0_,
	this_.isLeaf AS isLeaf19_247_0_,
	this_.orgId AS orgId20_247_0_
FROM
	gams_jc_department this_
WHERE
	this_.orgId =?
LIMIT ?
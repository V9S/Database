	------部门视图-------
 CREATE VIEW VIEW_DEPARTMENT AS
SELECT
	gjd.CODE "代码",
	gjd.NAME "名称",
	gjd3.NAME "上级部门",
	BJGJD . title "部门属性",
	gjd2 .title "部门级次",
	gjd.ENABLED "是否启用"
FROM
	GAMS_JC_DEPARTMENT gjd
LEFT JOIN BIZ_JY00_GAMS_JC_DEPTPROPERTY bjgjd ON
	gjd.NATURE = BJGJD .ID
LEFT JOIN GAMS_JC_DEPARTMENTLEVEL gjd2 ON
	gjd.DEPARTMENTLEVEL = gjd2.ID
LEFT JOIN GAMS_JC_DEPARTMENT gjd3 ON
	gjd.PARENT = gjd3.ID
	------人员视图-------
 CREATE VIEW VIEW_PERSONNEL AS
SELECT
	gjp.CODE "工号",
	gjp.NAME "姓名",
	gjd.NAME "所属部门",
	gjp.ENABLED "是否启用"
FROM
	GAMS_JC_PERSONNEL gjp
LEFT JOIN GAMS_JC_DEPARTMENT gjd ON
	gjp.DEPARTMENT = gjd.ID
	------存放地点视图-------
 CREATE VIEW VIEW_DEPOSITARY AS
SELECT
	gjd.CODE "代码",
	gjd.NAME "名称",
	gjd2.NAME "上级存放地点",
	gjd.ENABLED "是否启用"
FROM
	GAMS_JC_DEPOSITARY gjd
LEFT JOIN GAMS_JC_DEPOSITARY gjd2 ON
	gjd.PARENT = gjd2.ID
	------������ͼ-------
 CREATE VIEW VIEW_DEPARTMENT AS
SELECT
	gjd.CODE "����",
	gjd.NAME "����",
	gjd3.NAME "�ϼ�����",
	BJGJD . title "��������",
	gjd2 .title "���ż���",
	gjd.ENABLED "�Ƿ�����"
FROM
	GAMS_JC_DEPARTMENT gjd
LEFT JOIN BIZ_JY00_GAMS_JC_DEPTPROPERTY bjgjd ON
	gjd.NATURE = BJGJD .ID
LEFT JOIN GAMS_JC_DEPARTMENTLEVEL gjd2 ON
	gjd.DEPARTMENTLEVEL = gjd2.ID
LEFT JOIN GAMS_JC_DEPARTMENT gjd3 ON
	gjd.PARENT = gjd3.ID
	------��Ա��ͼ-------
 CREATE VIEW VIEW_PERSONNEL AS
SELECT
	gjp.CODE "����",
	gjp.NAME "����",
	gjd.NAME "��������",
	gjp.ENABLED "�Ƿ�����"
FROM
	GAMS_JC_PERSONNEL gjp
LEFT JOIN GAMS_JC_DEPARTMENT gjd ON
	gjp.DEPARTMENT = gjd.ID
	------��ŵص���ͼ-------
 CREATE VIEW VIEW_DEPOSITARY AS
SELECT
	gjd.CODE "����",
	gjd.NAME "����",
	gjd2.NAME "�ϼ���ŵص�",
	gjd.ENABLED "�Ƿ�����"
FROM
	GAMS_JC_DEPOSITARY gjd
LEFT JOIN GAMS_JC_DEPOSITARY gjd2 ON
	gjd.PARENT = gjd2.ID
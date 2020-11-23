define query queryInfo(@orgunit guid, @billcode string, @billcode_min string, @billcode_max string, @shenqsj_min DATE, @shenqsj_max DATE, @shenqr guid, @shenqbm guid, @yewlx string)
BEGIN
	SELECT
	dataAll.billid AS billid,
	dataAll.orgid AS orgid,
	dataAll.billdefine AS billdefine,
	dataAll.billcode AS billcode,
	dataAll.yewlx AS yewlx,
	shenqr.name AS shenqr,
	shenqbm.name AS shenqbm,
	dataAll.shenqrq AS shenqrq
FROM
	(
	SELECT
		biz.id AS billid, biz.orgId AS orgid, to_char(biz.billdefine) AS billdefine, to_char(biz.billCode) AS billcode, to_char('��������') AS yewlx, biz.shenqr AS shenqrId, biz.shenqbm AS shenqbmId, biz.shenqsj AS shenqrq, biz.createTime AS createtime
	FROM
		gams_inspectionentry AS biz
	WHERE
		biz.workflowState = 2
		AND biz.billState = 2
		AND (biz.datasource IS NULL
		OR biz.datasource <> 1)
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')
UNION ALL
	SELECT
		biz.id AS billid, biz.orgId AS orgid, to_char(biz.billdefine) AS billdefine, to_char(biz.billCode) AS billcode, to_char('�ʲ��䶯') AS yewlx, biz.shenqr AS shenqrId, biz.shenqbm AS shenqbmId, biz.shenqsj AS shenqrq, biz.createTime AS createtime
	FROM
		gams_assetchange AS biz
	WHERE
		biz.workflowState = 2
		AND biz.billState = 2
		AND (biz.datasource IS NULL
		OR biz.datasource <> 1)
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')
		AND biz.biandlx = '��Ҫ��Ϣ�䶯'
UNION ALL
	SELECT
		biz.id AS billid, biz.orgId AS orgid, to_char(biz.billdefine) AS billdefine, to_char(biz.billCode) AS billcode, to_char('�ʲ�����') AS yewlx, shenqr.id AS shenqrId, shenqbm.id AS shenqbmId, biz.createTime AS shenqrq, biz.createTime AS createtime
	FROM
		gams_assetdisposereg AS biz
	LEFT JOIN gams_jc_personnel AS shenqr ON
		shenqr.userid = biz.creatorId
	LEFT JOIN gams_jc_department AS shenqbm ON
		shenqbm.id = shenqr.department
	LEFT JOIN gams_jc_disposmode AS mo ON
		mo.id = biz.chuzlx
	WHERE
		biz.workflowState = 2
		AND biz.billState = 2
		AND (biz.datasource IS NULL
		OR biz.datasource <> 1)
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')
		AND (mo.title = '����/����/ת��'
		OR mo.title = '�������'
		OR mo.title = '���ϱ���'
		OR mo.title = '�û�'
		OR mo.title = '�޳���������ת��')
UNION ALL
	SELECT
		biz.id AS billid, biz.orgId AS orgid, to_char(biz.billdefine) AS billdefine, to_char(biz.billCode) AS billcode, to_char('�ʲ�����') AS yewlx, biz.shenqr AS shenqrId, biz.shenqbm AS shenqbmId, biz.shenqsj AS shenqrq, biz.createTime AS createtime
	FROM
		gams_transfer AS biz
	WHERE
		biz.workflowState = 2
		AND biz.billState = 2
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')
		AND biz.yewlx = '���ż����'
UNION ALL
	SELECT
		biz.id AS billid, biz.orgId AS orgid, to_char(biz.billdefine) AS billdefine, to_char(biz.billCode) AS billcode, to_char('�ʲ��˿�') AS yewlx, biz.zhidry AS shenqrId, biz.zhidbm AS shenqbmId, biz.shenqsj AS shenqrq, biz.createTime AS createtime
	FROM
		gams_withdraw AS biz
	LEFT JOIN gams_jc_entryform AS m ON
		biz.ruzxs = m.id
	WHERE
		biz.workflowState = 2
		AND biz.billState = 2
		AND (biz.datasource IS NULL
		OR biz.datasource <> 1)
		AND m.title = '������'
		AND (biz.pushmake IS NULL
		OR biz.pushmake = 0)
		AND (biz.caiwrzrq IS NULL)
		AND (biz.kuaijpzh IS NULL
		OR biz.kuaijpzh = '')) AS dataAll
LEFT JOIN gams_jc_personnel AS shenqr ON
	shenqr.id = dataAll.shenqrId
LEFT JOIN gams_jc_department AS shenqbm ON
	shenqbm.id = dataAll.shenqbmId
WHERE
	1 = 1
	AND dataAll.orgid = @orgunit
	AND dataAll.billcode LIKE '%' + @billcode + '%'
	AND truncday(dataAll.shenqrq) >= truncday(@shenqsj_min)
	AND truncday(dataAll.shenqrq) <= truncday(@shenqsj_max)
	AND dataAll.billcode >= @billcode_min
	AND dataAll.billcode <= @billcode_max
	AND dataAll.shenqrId IN (@shenqr)
	AND dataAll.shenqbmId IN (@shenqbm)
	AND dataAll.yewlx IN (@yewlx)
ORDER BY
	dataAll.createtime DESC
END
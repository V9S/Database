define query queryInfo(@billcode string, @businessTypeName string, @billcode_min string, @billcode_max string, @submitTime_min DATE, @submitTime_max DATE, @submiter guid, @submitdepart guid)
BEGIN
	SELECT
	tt.id AS id,
	tt.state AS state,
	tt.businessTypeName AS businessTypeName,
	tt.billcode AS billcode,
	jp.name AS submiter,
	tt.submitTime AS submitTime,
	jd.name AS submitDepartment,
	tt.businessDataId AS businessDataId,
	tt.businessType AS businessType
FROM
	(
	SELECT
		gwbp.id AS id, '办理中' AS state, gwbp.businessObjectName AS businessTypeName, gwbp.businesscode AS billcode, gwbp.submitTime AS submitTime, gwbp.businessDataId AS businessDataId, gwbp.businessTypeName AS businessType, gwbp.submitterId AS submitterId
	FROM
		BusinessProcessInstance AS gwbp
	WHERE
		gwbp.businesscode IS NOT NULL
		AND gwbp.last = TRUE
		AND gwbp.workflowState = 1
		AND gwbp.businesscode LIKE '%' + @billcode + '%'
		AND gwbp.businessObjectName LIKE '%' + @businessTypeName + '%'
		AND gwbp.businesscode >= @billcode_min
		AND gwbp.businesscode <= @billcode_max
		AND gwbp.submitTime >= @submitTime_min
		AND gwbp.submitTime <= @submitTime_max
		AND gwbp.businessTypeName NOT IN ('com.jiuqi.np.gams2.business.bill.ReimbursePickingBillDefine',
		'com.jiuqi.np.gams2.business.bill.ReimburseBillDefine')
UNION ALL
	SELECT
		gwbp.id AS id, '办理中' AS state, gwbp.businessObjectName AS businessTypeName, gwbp.businesscode AS billcode, gwbp.submitTime AS submitTime, gwbp.businessDataId AS businessDataId, gwbp.businessTypeName AS businessType, gwbp.submitterId AS submitterId
	FROM
		BusinessProcessInstance AS gwbp
	JOIN (
		SELECT
			max(gwbp1.id) AS idt1
		FROM
			BusinessProcessInstance AS gwbp1
		JOIN gams_reimburse AS bus ON
			gwbp1.businessDataId = bus.id
		WHERE
			gwbp1.workflowState = 1
		GROUP BY
			gwbp1.businesscode) AS t1 ON
		gwbp.id = t1.idt1
	WHERE
		gwbp.businesscode IS NOT NULL
		AND gwbp.last = TRUE
		AND gwbp.workflowState = 1
		AND gwbp.businesscode LIKE '%' + @billcode + '%'
		AND gwbp.businessObjectName LIKE '%' + @businessTypeName + '%'
		AND gwbp.businesscode >= @billcode_min
		AND gwbp.businesscode <= @billcode_max
		AND gwbp.submitTime >= @submitTime_min
		AND gwbp.submitTime <= @submitTime_max
UNION ALL
	SELECT
		gwbp.id AS id, '办理中' AS state, gwbp.businessObjectName AS businessTypeName, gwbp.businesscode AS billcode, gwbp.submitTime AS submitTime, props.master AS businessDataId, gwbp.businessTypeName AS businessType, gwbp.submitterId AS submitterId
	FROM
		BusinessProcessInstance AS gwbp
	JOIN (
		SELECT
			max(gwbp1.id) AS idt1
		FROM
			BusinessProcessInstance AS gwbp1
		JOIN gams_reimburse_properties AS props ON
			gwbp1.businessDataId = props.id
		WHERE
			gwbp1.workflowState = 1
		GROUP BY
			gwbp1.businesscode) AS t1 ON
		gwbp.id = t1.idt1
	JOIN gams_reimburse_properties AS props ON
		gwbp.businessDataId = props.id
	WHERE
		gwbp.businesscode IS NOT NULL
		AND gwbp.last = TRUE
		AND gwbp.workflowState = 1
		AND gwbp.businesscode LIKE '%' + @billcode + '%'
		AND gwbp.businessObjectName LIKE '%' + @businessTypeName + '%'
		AND gwbp.businesscode >= @billcode_min
		AND gwbp.businesscode <= @billcode_max
		AND gwbp.submitTime >= @submitTime_min
		AND gwbp.submitTime <= @submitTime_max) AS tt
LEFT JOIN user_identity AS ui ON
	ui.identityId = tt.submitterId
LEFT JOIN UserOrgRelation AS uor ON
	ui.userId = uor.userId
LEFT JOIN gams_jc_personnel AS jp ON
	ui.userId = jp.userId
LEFT JOIN gams_jc_department AS jd ON
	jd.id = jp.department
WHERE
	1 = 1
	AND jp.id = @submiter
	AND jd.id = @submitdepart
END",

SELECT * FROM GAMS2_WORKFLOW_BUS_PROCESS gwbp ;

SELECT * FROM GAMS_JC_PERSONNEL gjp ;
SELECT
	gwbp.id id,
CASE
		WHEN gwbp.workflowState = 2 THEN '�����'
		ELSE '��ֹ����'
	END AS state,
	gwbp.workflowProcessInstance AS workflowProcessInstance,
	gwbp.businessObjectName businessTypeName,
	gwbp.businesscode billcode,
	jp.name submiter,
	gwbp.submitTime submitTime,
	jd.name submitDepartment,
	gwbp.businessTypeName AS businessType,
	gwbp.businessDataId AS businessDataId,
	gwbp.submitterId AS identityId,
	identity.name AS identityName
FROM
	BusinessProcessInstance gwbp
LEFT JOIN user_identity ui ON
	ui.identityId = gwbp.submitterId
LEFT JOIN IDENTITY AS IDENTITY ON
	gwbp.submitterId = identity.id
LEFT JOIN UserOrgRelation uor ON
	ui.userId = uor.userId
LEFT JOIN gams_jc_personnel jp ON
	ui.userId = jp.userId
LEFT JOIN gams_jc_department jd ON
	jd.id = jp.department
WHERE
	gwbp.businessObjectName NOT IN ('�ʲ����������',
	'����Ȩ�޹���')
	AND gwbp.businessTypeName NOT IN ('com.jiuqi.np.gams2.business.bill.ReimbursePickingBillDefine')
	AND gwbp.businesscode IS NOT NULL
	AND gwbp.last = TRUE
	AND gwbp.workflowState IN (2,
	6)
	AND gwbp.businesscode LIKE :? billcode
	AND gwbp.businessObjectName LIKE :? businessTypeName
	AND gwbp.businesscode >= :? billcode_min
	AND gwbp.businesscode <= :? billcode_max
	AND truncday(gwbp.submitTime) >= truncday(:? submitTime_min)
	AND truncday(gwbp.submitTime) <= truncday(:? submitTime_max)
	AND jp.id = :? submiter
	AND jd.id = :? submitdepart
	AND jd.id IN (:? departments)
	AND gwbp.submitterId = :? currentIdentity
	AND uor.orgId = :? orgunit
ORDER BY
	gwbp.businesscode
SELECT
	gwbp.id id,
	'办理中' state,
	gwbp.businessObjectName businessTypeName,
	gwbp.businesscode billcode,
	jp.name submiter,
	gwbp.submitTime submitTime,
	jd.name submitDepartment,
	gwbp.businessDataId AS businessDataId,
	gwbp.businessTypeName AS businessType,
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
	gwbp.businessObjectName NOT IN ('资产入库子流程',
	'建账权限管理')
	AND gwbp.businesscode IS NOT NULL
	AND gwbp.last = TRUE
	AND gwbp.workflowState = 1
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
	gwbp.businesscode",
	
	SELECT * FROM NP_USER nu WHERE nu.NICKNAME = '王欢' AND rownum < 3 ;
	
SELECT * FROM GAMS_JC_CLPP gjc 

SELECT * FROM sysco
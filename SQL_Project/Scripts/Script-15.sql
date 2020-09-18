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
	gwbp.businessObjectName NOT IN ('资产入库子流程', '建账权限管理')
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
	
UPDATE NP_PASSWORD SET PASSWORD 	= 'e10adc3949ba59abbe56e057f20f883e';

SELECT * FROM GAMS2_WORKFLOW_BUS_PROCESS gwbp WHERE gwbp.BUSINESS_DATA_ID = '44DC38E9559C42D4A0F27668ED9A5A5D';
	
SELECT * FROM GAMS2_WORKFLOW_PROCESS_INS gwpi WHERE gwpi.id = '2AD6FB753F3D40A392FB054677E44328';

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.id = '44DC38E9559C42D4A0F27668ED9A5A5D'

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.MASTER_ID = '44DC38E9559C42D4A0F27668ED9A5A5D'
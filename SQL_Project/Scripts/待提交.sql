define query queryInfo(@orgunit guid, @billcode string, @billcode_min string, @billcode_max string, @submitTime_min DATE, @submitTime_max DATE, @submiter guid, @submitdepart guid, @businessTypeName string, @departments guid, @currentIdentity guid)
BEGIN
	SELECT
	busAll.id AS id,
	busAll.state AS state,
	busAll.billcode AS billcode,
	busAll.businessTypeName AS businessTypeName,
	busAll.businessDataId AS businessDataId,
	busAll.businessType AS businessType,
	jp.name AS submiter,
	busAll.createTime AS submitTime,
	jd.name AS submitDepartment,
	busAll.identityId AS identityId,
	identity.name AS identityName
FROM
	(
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ʲ����') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.ReimburseBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_reimburse AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ʲ���������') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.AssetadjustmentBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_assetadjustment AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ʲ���������') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.AssetinusedBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_assetinused AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('У�ڴ�������') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.InnerdispregBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_innerdispreg AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char(bus.biandlx) AS businessTypeName, bus.id AS businessDataId,
			CASE WHEN bus.biandlx = '��Ҫ��Ϣ�䶯' THEN 'com.jiuqi.np.gams2.business.bill.ImportantAssetChangeBillDefine'
			WHEN bus.biandlx = '��ͨ��Ϣ�䶯' THEN 'com.jiuqi.np.gams2.business.bill.NormalAssetChangeBillDefine'
			ELSE 'com.jiuqi.np.gams2.business.bill.ClassAssetChangeBillDefine'
		END AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_assetchange AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ʲ�����') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.HandoverBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_handover AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�������') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.ExpectedstorageBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_expectedstorage AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ʲ��˿�') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.WithdrawBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_withdraw AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ʲ��ɹ�') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.PurchaseBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_purchase AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ɹ�����') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.PurchaseacceptBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_purchaseaccept AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode,
			CASE WHEN bus.yewlx = '�����ڽ���' THEN to_char('�����ڽ���')
			ELSE to_char('�ʲ�����(���ż�)')
		END AS businessTypeName, bus.id AS businessDataId,
			CASE WHEN bus.yewlx = '�����ڵ���' THEN 'com.jiuqi.np.gams2.business.bill.InnerTransferBillDefine'
			ELSE 'com.jiuqi.np.gams2.business.bill.TransferBillDefine'
		END AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_transfer AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('�ʲ�����') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.AssetdisposeappBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_assetdisposeapp AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit
UNION ALL
	SELECT
		bus.id AS id, '���ύ' AS state, to_char('') AS billcode, to_char('��������') AS businessTypeName, bus.id AS businessDataId, 'com.jiuqi.np.gams2.business.bill.InspectionEntryBillDefine' AS businessType, bus.creatorId AS creatorId, bus.createTime AS createTime, bus.identity AS identityId
	FROM
		gams_inspectionentry AS bus
	WHERE
		bus.creatorId IS NOT NULL
		AND COALESCE(bus.billState,
		0) = 0
		AND bus.identity = @currentIdentity
		AND bus.orgId = @orgunit ) AS busAll
LEFT JOIN UserOrgRelation AS uor ON
	busAll.creatorId = uor.userId
LEFT JOIN gams_jc_personnel AS jp ON
	busAll.creatorId = jp.userId
LEFT JOIN gams_jc_department AS jd ON
	jp.department = jd.id
LEFT JOIN IDENTITY AS IDENTITY ON
	busAll.identityId = identity.id
WHERE
	1 = 1
	AND busAll.businessTypeName LIKE '%' + @businessTypeName + '%'
	AND busAll.billcode LIKE '%' + @billcode + '%'
	AND busAll.billcode >= @billcode_min
	AND busAll.billcode <= @billcode_max
	AND truncday(busAll.createTime) >= truncday(@submitTime_min)
	AND truncday(busAll.createTime) <= truncday(@submitTime_max)
	AND jp.id = @submiter
	AND jd.id = @submitdepart
	AND busAll.identityId = @currentIdentity
	AND jd.id IN (@departments)
ORDER BY
	busAll.createTime DESC
END ",
SELECT
	cls.fl, count(1),
	sum(CASE WHEN card.JIZRQ < TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') THEN COALESCE(card.JIAZ , 0) ELSE 0 END) AS HJJIAZ
FROM
	gams_jc_assetclass cls
LEFT JOIN gams_assetcard card ON
	card.zifl = cls.recid
LEFT JOIN (
	SELECT
		a.objectid, max(a.jizrq) AS jizrq, max(recid) recid
	FROM
		gams_assetcard a
	GROUP BY
		a.objectid ) temp ON
	card.recid = temp.recid
--	AND card.jizrq = temp.jizrq
LEFT JOIN md_org md ON
	card.orgunit = md.recid
WHERE
	card.cardstate IN ('00', '02')
	AND md.stdcode = '000223'
	AND card.jizrq < TO_DATE('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
GROUP BY
	cls.fl
	
	
--验证凭证表
SELECT * FROM GL_VOUCHER  v where v.acctyear=年度 and v.vchrnum='凭证号'  AND v.ACCTPERIOD = 期间;
eg:
SELECT * FROM GL_VOUCHER  v where v.acctyear=2019 and v.vchrnum='7418'  AND v.ACCTPERIOD = 4;
--验证凭证子表
SELECT * FROM  GL_VOUCHERITEM  m
left join GL_VOUCHER  v on v.recid=m.vchrid
where v.acctyear=年度 and v.vchrnum='凭证号'   AND v.ACCTPERIOD = 期间;
eg:
SELECT * FROM  GL_VOUCHERITEM  m
left join GL_VOUCHER  v on v.recid=m.vchrid
where v.acctyear=2019 and v.vchrnum='7418'  AND v.ACCTPERIOD = 4;

SELECT * FROM MD_ORG mo ;


select distinct v.unitid as unitid,org.stdname as unit,org.stdcode as unitcode from gl_voucher v
         left join md_org org on v.unitid = org.recid where v.unitid is not null 
         
 select distinct v.acctyear, v.acctperiod, v.unitid
-- , org.stdname 
 as unit
-- ,org.stdcode as unitcode  
	    from gl_voucher v
--        left join md_org org on v.unitid = org.recid 
where
       v.acctyear is not null and v.unitid is not null and v.acctperiod  is not null 
	
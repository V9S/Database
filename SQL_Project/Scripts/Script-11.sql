
select sum(JIAZ ),count(1),type from (
	select g.objectid,g.jiaz,gc.stdcode,
	(case when (gc.stdcode like '101%' or gc.stdcode like '102%' or gc.stdcode like '103%') then '���ء����ݼ�������' 
	when gc.stdcode like '2%' then 'ͨ���豸'
	when gc.stdcode like '3%' then 'ר���豸' 
	when gc.stdcode like '4%' then '����ͳ���Ʒ' 
	when gc.stdcode like '5%' then 'ͼ�鵵��'  
	when gc.stdcode like '605%' then '�����ʲ�'  
	else '�Ҿߡ��þߡ�װ�߼���ֲ��' end) type 
	from gams_assetcard g 
	left join (
	 select ga.objectid,max(ga.jizrq) AS jizrq  from gams_assetcard ga WHERE t.jizrq < to_date('2020-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss') group by ga.objectid
	) t on g.objectid = t.objectid 
	left join md_org md_org on g.orgunit = md_org.recid 
	left join  gams_jc_assetclass gc on g.zifl = gc.recid 
	where g.cardstate in ('00','02') 
	and md_org.stdcode = '000223'  
	and t.jizrq = g.jizrq and 
	)  GROUP BY TYPE
	
alter table z01 add (Z01F28 NUMBER(20,2),acctyear NUMBER(10));

alter table GAMS_JC_ASSETCLASS ADD  fl varchar(10 char)  NULL;

alter table GL_VOUCHER ADD  IMPORTFLAG  NUMBER(10)  NULL;

SELECT * FROM MD_ORG mo ;

SELECT * FROM GAMS_ASSETCARD ga 
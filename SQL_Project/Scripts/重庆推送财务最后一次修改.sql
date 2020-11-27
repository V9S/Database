


处置 zc_xx：国标分类、行业分类、单价、数量、金额、使用年限、项目编号
  	cz_zjcl:项目编号、累计折旧、资产净值、srje


1、验收上账zc_xx: 金额、单价、数量

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000429';

SELECT gid.DANJ ,gid.SHUL ,gid.JIAZ,gid.yujsmzl FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE MASTER_ID = 'E734B4BD5EC94AC59CE8B19775027D58';

select * from gams_jc_cwparam WHERE id = '8231A713A404434CA0E57BB93951596A';


2、变动  zc_xx:使用年限（Synx）

select * from gams_jc_cwparam WHERE id = 'BB0184C084FD47F3A62771A6FDC6A089';

SELECT * FROM GAMS_ASSETCHANGE ga WHERE ga.BILL_CODE = 'ZYBD2020000008';

SELECT gad.yujsmzl FROM GAMS_ASSETCHANGE_DETAIL gad WHERE gad.MASTER_ID = (SELECT id FROM GAMS_ASSETCHANGE ga WHERE ga.BILL_CODE = 'ZYBD2020000008');

SELECT gad.yujsmzl FROM GAMS_ASSETCHANGE_DETAIL gad;

SELECT yujsmzl FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000569';

3、退库 zc_xx：单价、价值、使用年限

select * from gams_jc_cwparam WHERE id = '166FC6D092DA447183B2B25AD9F2CCFF';

SELECT * FROM GAMS_WITHDRAW gw WHERE gw.BILL_CODE = 'TKSQ2020000008';

SELECT gwd.JIAZ ,gwd.yujsmzl FROM GAMS_WITHDRAW_DETAIL gwd WHERE gwd.MASTER_ID = '5EAB6186DA9A481489A9AF2A7DC01C0D';

SELECT gc.danj,gc.yujsmzl FROM GAMS_CARD gc WHERE BILLCODE = 'JJ2019000005' AND gc.ISLASTEST  = 1;

SELECT yujnxsmzl FROM GAMS_CARD_JJYJZJ gcj ;

SELECT gc.yujnxsmzl FROM GAMS_CARD gc;

4、处置 	zc_xx：国标分类、行业分类、单价、数量、金额、使用年限、项目编号
  		cz_zjcl:项目编号、累计折旧、资产净值、srje
  		
select * from gams_jc_cwparam WHERE id = '4BC9046CEC9C425CA9C2E296ABDC8509' OR id = '8231A713A404434CA0E57BB93951596A';

SELECT leijzj,zhangmjz ,chuzsy,zicbh ,zicmcFROM GAMS_ASSETDISPOSEREG_DETAIL gad  WHERE gad.MASTER_ID = (SELECT ID FROM gams_assetdisposereg WHERE BILL_CODE = 'XWCZZX2020000003');	
  		
SELECT  yujsmzl ,zicfl,hangyfl,danj,shul,jiaz FROM gams_card;

SELECT jingfly FROM gams_card;
  		
  		
SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM GAMS_ASSETDISPOSEREG ga ;
  		
SELECT jingfly FROM gams_card ;

SELECT jingfly FROM  gams_assetdisposereg_detail;
  		
DELETE FROM GAMS_INTERFACE_LOG;
  		
  		
  		
  		
  		
  		
  		
select * from gams_interface_log;

SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM GAMS_INSPECTIONENTRY ga ;

UPDATE GAMS_INSPECTIONENTRY SET PUSHMAKE = NULL ;





处置 zc_xx：国标分类、行业分类、单价、数量、金额、使用年限、项目编号
  	cz_zjcl:项目编号、累计折旧、资产净值、srje


1、验收上账zc_xx: 金额、单价、数量

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000429';

SELECT gid.DANJ ,gid.SHUL ,gid.JIAZ,gid.yujsmzl FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE MASTER_ID = 'E734B4BD5EC94AC59CE8B19775027D58';

select * from gams_jc_cwparam WHERE id = '8231A713A404434CA0E57BB93951596A';


2、变动  zc_xx:使用年限（Synx）
资产变动无需推送
zc_xx：部门编号（bmbh）、部门名称（bmmc）、项目编号（xmbh）
zc_zcjf：部门编号（bmbh）、项目编号（xmbh）

select * from gams_jc_cwparam WHERE id = 'BB0184C084FD47F3A62771A6FDC6A089';

SELECT * FROM GAMS_ASSETCHANGE ga WHERE ga.BILL_CODE = 'ZYBD2020000008';

SELECT gad.yujsmzl FROM GAMS_ASSETCHANGE_DETAIL gad WHERE gad.MASTER_ID = (SELECT id FROM GAMS_ASSETCHANGE ga WHERE ga.BILL_CODE = 'ZYBD2020000008');

SELECT gad.yujsmzl FROM GAMS_ASSETCHANGE_DETAIL gad;

SELECT yujsmzl FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000569';

3、退库 zc_xx：单价、价值、使用年限
资产退库无需推送
zc_xx：部门编号（bmbh）、部门名称（bmmc）、项目编号（xmbh）
zc_jzcl：项目编号（xmbh）
资产退库需要推送
zc_jzcl：资产原值（zcyz）、累计折旧（ljzj）、资产净值（zcjz）、资产收益（srje）

select * from gams_jc_cwparam WHERE id = '166FC6D092DA447183B2B25AD9F2CCFF';

SELECT * FROM GAMS_WITHDRAW gw WHERE gw.BILL_CODE = 'TKSQ2020000008';

SELECT gwd.JIAZ ,gwd.yujsmzl FROM GAMS_WITHDRAW_DETAIL gwd WHERE gwd.MASTER_ID = '5EAB6186DA9A481489A9AF2A7DC01C0D';

SELECT gc.danj,gc.yujsmzl FROM GAMS_CARD gc WHERE BILLCODE = 'JJ2019000005' AND gc.ISLASTEST  = 1;

SELECT yujnxsmzl FROM GAMS_CARD_JJYJZJ gcj ;

SELECT gc.yujnxsmzl FROM GAMS_CARD gc;

SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM GAMS_ASSETDISPOSEREG ga ;


4、处置 	zc_xx：国标分类、行业分类、单价、数量、金额、使用年限、项目编号
  		cz_zjcl:项目编号、累计折旧、资产净值、srje
  		
资产处置无需推送
zc_xx：部门编号（bmbh）、部门名称（bmmc）
zc_jzcl：部门编号（bmbh）
  		
select * from gams_jc_cwparam WHERE id = '4BC9046CEC9C425CA9C2E296ABDC8509' OR id = '8231A713A404434CA0E57BB93951596A';

SELECT leijzj,zhangmjz ,chuzsy,zicbh ,zicmcFROM GAMS_ASSETDISPOSEREG_DETAIL gad  WHERE gad.MASTER_ID = (SELECT ID FROM gams_assetdisposereg WHERE BILL_CODE = 'XWCZZX2020000003');	
  		
SELECT  yujsmzl ,zicfl,hangyfl,danj,shul,jiaz FROM gams_card;

SELECT jingfly FROM gams_card;
  		
  		
SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM GAMS_ASSETDISPOSEREG ga ;
  		
SELECT jingfly FROM gams_card ;

SELECT jingfly FROM  gams_assetdisposereg_detail;
  		
DELETE FROM GAMS_INTERFACE_LOG;

--资产调拨需要推送
--zc_bmbd：累计折旧（ljzj）

select * from gams_jc_cwparam WHERE id = '66BE8077E0000081F7E7FECEF0C1F0E2';

SELECT gtd.* FROM GAMS_TRANSFER_DETAIL gtd ;

SELECT gad.LEIJZJ FROM GAMS_ASSETCHANGE_DETAIL gad 
  		
SELECT LEIJZJ FROM GAMS_CARD gc ;
  		
  		
  		
  		
  		
select * from gams_interface_log;

SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM gams_withdraw ga ;

UPDATE GAMS_INSPECTIONENTRY SET PUSHMAKE = NULL ;

DELETE from gams_interface_log;


SELECT jiaz,leijzj,jingz FROM GAMS_CARD gc ;
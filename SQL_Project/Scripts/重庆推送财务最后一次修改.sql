


���� zc_xx��������ࡢ��ҵ���ࡢ���ۡ���������ʹ�����ޡ���Ŀ���
  	cz_zjcl:��Ŀ��š��ۼ��۾ɡ��ʲ���ֵ��srje


1����������zc_xx: �����ۡ�����

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000429';

SELECT gid.DANJ ,gid.SHUL ,gid.JIAZ,gid.yujsmzl FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE MASTER_ID = 'E734B4BD5EC94AC59CE8B19775027D58';

select * from gams_jc_cwparam WHERE id = '8231A713A404434CA0E57BB93951596A';


2���䶯  zc_xx:ʹ�����ޣ�Synx��
�ʲ��䶯��������
zc_xx�����ű�ţ�bmbh�����������ƣ�bmmc������Ŀ��ţ�xmbh��
zc_zcjf�����ű�ţ�bmbh������Ŀ��ţ�xmbh��

select * from gams_jc_cwparam WHERE id = 'BB0184C084FD47F3A62771A6FDC6A089';

SELECT * FROM GAMS_ASSETCHANGE ga WHERE ga.BILL_CODE = 'ZYBD2020000008';

SELECT gad.yujsmzl FROM GAMS_ASSETCHANGE_DETAIL gad WHERE gad.MASTER_ID = (SELECT id FROM GAMS_ASSETCHANGE ga WHERE ga.BILL_CODE = 'ZYBD2020000008');

SELECT gad.yujsmzl FROM GAMS_ASSETCHANGE_DETAIL gad;

SELECT yujsmzl FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2020000569';

3���˿� zc_xx�����ۡ���ֵ��ʹ������
�ʲ��˿���������
zc_xx�����ű�ţ�bmbh�����������ƣ�bmmc������Ŀ��ţ�xmbh��
zc_jzcl����Ŀ��ţ�xmbh��
�ʲ��˿���Ҫ����
zc_jzcl���ʲ�ԭֵ��zcyz�����ۼ��۾ɣ�ljzj�����ʲ���ֵ��zcjz�����ʲ����棨srje��

select * from gams_jc_cwparam WHERE id = '166FC6D092DA447183B2B25AD9F2CCFF';

SELECT * FROM GAMS_WITHDRAW gw WHERE gw.BILL_CODE = 'TKSQ2020000008';

SELECT gwd.JIAZ ,gwd.yujsmzl FROM GAMS_WITHDRAW_DETAIL gwd WHERE gwd.MASTER_ID = '5EAB6186DA9A481489A9AF2A7DC01C0D';

SELECT gc.danj,gc.yujsmzl FROM GAMS_CARD gc WHERE BILLCODE = 'JJ2019000005' AND gc.ISLASTEST  = 1;

SELECT yujnxsmzl FROM GAMS_CARD_JJYJZJ gcj ;

SELECT gc.yujnxsmzl FROM GAMS_CARD gc;

SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM GAMS_ASSETDISPOSEREG ga ;


4������ 	zc_xx��������ࡢ��ҵ���ࡢ���ۡ���������ʹ�����ޡ���Ŀ���
  		cz_zjcl:��Ŀ��š��ۼ��۾ɡ��ʲ���ֵ��srje
  		
�ʲ�������������
zc_xx�����ű�ţ�bmbh�����������ƣ�bmmc��
zc_jzcl�����ű�ţ�bmbh��
  		
select * from gams_jc_cwparam WHERE id = '4BC9046CEC9C425CA9C2E296ABDC8509' OR id = '8231A713A404434CA0E57BB93951596A';

SELECT leijzj,zhangmjz ,chuzsy,zicbh ,zicmcFROM GAMS_ASSETDISPOSEREG_DETAIL gad  WHERE gad.MASTER_ID = (SELECT ID FROM gams_assetdisposereg WHERE BILL_CODE = 'XWCZZX2020000003');	
  		
SELECT  yujsmzl ,zicfl,hangyfl,danj,shul,jiaz FROM gams_card;

SELECT jingfly FROM gams_card;
  		
  		
SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM GAMS_ASSETDISPOSEREG ga ;
  		
SELECT jingfly FROM gams_card ;

SELECT jingfly FROM  gams_assetdisposereg_detail;
  		
DELETE FROM GAMS_INTERFACE_LOG;

--�ʲ�������Ҫ����
--zc_bmbd���ۼ��۾ɣ�ljzj��

select * from gams_jc_cwparam WHERE id = '66BE8077E0000081F7E7FECEF0C1F0E2';

SELECT gtd.* FROM GAMS_TRANSFER_DETAIL gtd ;

SELECT gad.LEIJZJ FROM GAMS_ASSETCHANGE_DETAIL gad 
  		
SELECT LEIJZJ FROM GAMS_CARD gc ;
  		
  		
  		
  		
  		
select * from gams_interface_log;

SELECT ga.PUSHMAKE ,ga.DATASOURCE,ga.jizrq,ga.* FROM gams_withdraw ga ;

UPDATE GAMS_INSPECTIONENTRY SET PUSHMAKE = NULL ;

DELETE from gams_interface_log;


SELECT jiaz,leijzj,jingz FROM GAMS_CARD gc ;
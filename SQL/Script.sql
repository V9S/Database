/*
�ʲ���š��ʲ����ơ�ҵ��״̬��������ࡢ������ࡢ��ҵ���ࡢ��ҵ���ࡢ
����ʹ�÷��򡢵��ۡ���������ֵ���͡���ֵ���ۼ��۾ɡ���ֵ��Ʒ�ơ�����ͺš�
ʹ���ˡ������ˡ�ʹ�ò��š���ŵص㡢��������ǲ������ȡ�÷�ʽ��ȡ�����ڡ�
�ʲ��������ڡ���������״̬�������������ڡ���ʹ�����ޡ����ƾ֤�š��豸��;��
�ɹ���֯��ʽ�����ѿ�Ŀ���������ҡ������̡������롢������;�����ƺš�������������
�۾�״̬���۾����ޡ����۾ɶ�����۾���������ע��
*/


SELECT
	gc.BILLCODE "�ʲ����",
	gc.ZICMC "�ʲ�����",
	gjs.TITLE "�ʲ�ʹ��״��",
	gja.TITLE "�������",
	GJAG .TITLE "�������",
	gjai.TITLE "��ҵ����",
	gjai2.TITLE "��ҵ����",
	bjgjj.TITLE "����ʹ�÷���",
	gc.DANJ "����",
	gc.SHUL "����",
	gjv.TITLE "��ֵ����",
	gc.JIAZ "��ֵ",
	gc.LEIJZJ "�ۼ��۾�",
	gc.JINGZ "��ֵ",
	gc.PINP "Ʒ��",
	gc.GUIGXH "����ͺ�",
	gjp.NAME "ʹ����",
	gjd.NAME "ʹ�ò���",
	gjd2.NAME "��ŵص�",
	gc.caizxzj "��������",
	gc.feiczxzj "�ǲ�������",
	gjg.TITLE "ȡ�÷�ʽ",
	gc.QUDRQ "ȡ������",
	gc.JIZRQ "�ʲ���������",
	gc.CAIWJZRQ "��������״̬",
	gc.CAIWRZRQ "������������",
	gc.YUJSMZL "��ʹ������",
	gc.KUAIJPZH "���ƾ֤��",
	to_char('') "�豸��;",
	gjp3.TITLE "�ɹ���֯��ʽ",
	gjf.TITLE "���ѿ�Ŀ",
	gc.SHENGCCJ "��������",
	gcc.jixs"������",
	BJGJC.TITLE "������",
	gjc.TITLE "������;",
	gcc.CHEPH "���ƺ�",
	gjq.TITLE "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_TD gc
LEFT JOIN GAMS_JC_SYZK gjs ON 
	gc.SHIYZK = gjs.ID 
LEFT JOIN GAMS_JC_ASSETCLASS gja ON 
	gc.ZICFL = gja.ID 
LEFT JOIN GAMS_JC_ASSETSORT_GB gjag ON
	gc.SORTGB = gjag.ID
LEFT JOIN GAMS_JC_ASSETCLASS_IND gjai ON 
	gc.HANGYFL = gjai.ID 
LEFT JOIN GAMS_JC_ASSETSORT_IND gjai2 ON 
	gc.HANGYDL = gjai2.ID 
LEFT JOIN BIZ_JY00_GAMS_JC_JIAOYUSAGE bjgjj ON 
	gc.JIAOYSYFX = bjgjj.ID 
LEFT JOIN GAMS_JC_VALUETYPE gjv ON 
	gc.JIAZLX = gjv.ID 
LEFT JOIN GAMS_JC_PERSONNEL gjp ON 
	gc.SHIYR = gjp.ID 
LEFT JOIN GAMS_JC_DEPARTMENT gjd ON
	gc.SHIYBM = gjd.ID 
LEFT JOIN GAMS_JC_DEPOSITARY gjd2 ON 
	gc.CUNFDD = gjd2.ID 
LEFT JOIN GAMS_JC_GAINMANNER gjg ON
	gc.QUDFS = gjg.ID 
LEFT JOIN GAMS_JC_ENTRYFORM gje ON 
	gc.RUZXS = gje.ID 
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON 
	gc.CAIGZZXS = gjp3.ID 
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON 
	gc.JIAOYSYFX = gjf.ID 
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON 
	gc.GUOBM = BJGJC .ID 
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON 
	gc.ZHEJZT = gjd3.ID 
LEFT JOIN GAMS_CARD_CL gcc ON 
	gc.id = gcc.ID 
LEFT JOIN GAMS_JC_QICPQL gjq ON 
	gcc.PAIQL = gjq.ID 
LEFT JOIN GAMS_JC_CLYTFL gjc ON 
	gcc.YONGTFL = gjc.ID ;
 UNION ALL
 

	
	
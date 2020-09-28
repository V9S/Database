CREATE VIEW VIEW_CARD AS
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
	to_char(gc.PINP) "Ʒ��",
	to_char(gc.GUIGXH) "����ͺ�",
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
	to_char(gjd4.TITLE) "�豸��;",
	gjp3.TITLE "�ɹ���֯��ʽ",
	gjf.TITLE "���ѿ�Ŀ",
	to_char(gc.SHENGCCJ) "��������",
	to_char(gc.JIXS) "������",
	to_char(BJGJC.TITLE) "������",
	to_char(gjc.TITLE) "������;",
	to_char(gc.CHEPH) "���ƺ�",
	to_char(gjq.TITLE) "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_CL gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
LEFT JOIN GAMS_JC_QICPQL gjq ON
	gc.PAIQL = gjq.ID
LEFT JOIN GAMS_JC_CLYTFL gjc ON
	gc.YONGTFL = gjc.ID 
UNION ALL 
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
	to_char(gc.PINP) "Ʒ��",
	to_char(gc.GUIGXH) "����ͺ�",
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
	to_char(gjd4.TITLE) "�豸��;",
	gjp3.TITLE "�ɹ���֯��ʽ",
	gjf.TITLE "���ѿ�Ŀ",
	to_char(gc.SHENGCCJ) "��������",
	to_char(gc.JIXS) "������",
	to_char(BJGJC.TITLE) "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('')  "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_FW gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID 
UNION ALL 
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
	to_char('') "Ʒ��",
	to_char('') "����ͺ�",
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
	to_char('') "��������",
	to_char('') "������",
	to_char('') "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('')  "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_GZW gc
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID 
UNION ALL 
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
	to_char(gc.PINP) "Ʒ��",
	to_char(gc.GUIGXH) "����ͺ�",
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
	to_char(gjd4.TITLE) "�豸��;",
	gjp3.TITLE "�ɹ���֯��ʽ",
	gjf.TITLE "���ѿ�Ŀ",
	to_char(gc.SHENGCCJ) "��������",
	to_char(gc.JIXS) "������",
	to_char('') "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('') "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_JJYJZJ gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
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
	to_char('') "Ʒ��",
	to_char('') "����ͺ�",
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
	to_char(gc.SHENGCCJ) "��������",
	to_char('') "������",
	to_char('') "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('') "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_TZDZW gc
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
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
	to_char(gc.PINP) "Ʒ��",
	to_char(gc.GUIGXH) "����ͺ�",
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
	to_char(gjd4.TITLE) "�豸��;",
	gjp3.TITLE "�ɹ���֯��ʽ",
	gjf.TITLE "���ѿ�Ŀ",
	to_char(gc.SHENGCCJ) "��������",
	to_char(gc.JIXS) "������",
	to_char(BJGJC.TITLE) "������",
	to_char(gjc.TITLE) "������;",
	to_char(gc.CHEPH) "���ƺ�",
	to_char(gjq.TITLE) "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_TYSB gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
LEFT JOIN GAMS_JC_QICPQL gjq ON
	gc.PAIQL = gjq.ID
LEFT JOIN GAMS_JC_CLYTFL gjc ON
	gc.YONGTFL = gjc.ID 
UNION ALL 
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
	to_char('') "Ʒ��",
	to_char('') "����ͺ�",
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
	to_char(gc.SHENGCCJ) "��������",
	to_char(gc.JIXS) "������",
	to_char(BJGJC.TITLE) "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('') "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_TSDA gc
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
UNION ALL
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
	to_char('') "Ʒ��",
	to_char('') "����ͺ�",
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
	to_char('') "��������",
	to_char('') "������",
	to_char('') "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('') "����������",
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
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
	to_char(gc.PINP) "Ʒ��",
	to_char(gc.GUIGXH) "����ͺ�",
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
	to_char(gjd4.TITLE) "�豸��;",
	gjp3.TITLE "�ɹ���֯��ʽ",
	gjf.TITLE "���ѿ�Ŀ",
	to_char(gc.SHENGCCJ) "��������",
	to_char(gc.JIXS) "������",
	to_char(BJGJC.TITLE) "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('') "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_WWHCLP gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
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
	to_char('') "Ʒ��",
	to_char('') "����ͺ�",
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
	to_char('') "��������",
	to_char(gc.JIXS) "������",
	to_char('') "������",
	to_char('') "������;",
	to_char('') "���ƺ�",
	to_char('') "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_WXZC gc
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
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
UNION ALL 
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
	to_char(gc.PINP) "Ʒ��",
	to_char(gc.GUIGXH) "����ͺ�",
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
	to_char(gjd4.TITLE) "�豸��;",
	gjp3.TITLE "�ɹ���֯��ʽ",
	gjf.TITLE "���ѿ�Ŀ",
	to_char(gc.SHENGCCJ) "��������",
	to_char(gc.JIXS) "������",
	to_char(BJGJC.TITLE) "������",
	to_char(gjc.TITLE) "������;",
	to_char(gc.CHEPH) "���ƺ�",
	to_char(gjq.TITLE) "����������",
	gjd3.TITLE "�۾�״̬",
	gc.YUJSMZL "�۾�����",
	gc.YUEZJE "���۾ɶ�",
	gc.YITZJYS "�����۾�����",
	gc.BEIZ "��ע"
FROM
	GAMS_CARD_ZYSB gc
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
LEFT JOIN GAMS_JC_DEVICEUSE gjd4 ON
	gc.SHEBYT = gjd4.ID
LEFT JOIN GAMS_JC_PURORGFORM gjp3 ON
	gc.CAIGZZXS = gjp3.ID
LEFT JOIN GAMS_JC_FUNDSACCOUNTS gjf ON
	gc.JIAOYSYFX = gjf.ID
LEFT JOIN BIZ_JY00_GAMS_JC_COUNTRY bjgjc ON
	gc.GUOBM = BJGJC .ID
LEFT JOIN GAMS_JC_DEPRECSTATE gjd3 ON
	gc.ZHEJZT = gjd3.ID
LEFT JOIN GAMS_JC_QICPQL gjq ON
	gc.PAIQL = gjq.ID
LEFT JOIN GAMS_JC_CLYTFL gjc ON
	gc.YONGTFL = gjc.ID 
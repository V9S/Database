SELECT * FROM CQDZGCZYXY_ZCGL.VIEW_CARD;

SELECT * FROM CQDZGCZYXY_ZCGL.VIEW_DEPARTMENT;

�����û�
CREATE USER view_user IDENTIFIED BY view_user DEFAULT TABLESPACE CQDZGCZYXY_ZCGL;
ɾ���û�
drop user view_user cascade;
��Ȩ
grant connect to view_user;



ֻ���Է���ĳ����ͼ��
grant  select on VIEW_CARD to view_user;
grant  select on VIEW_DEPARTMENT to view_user;

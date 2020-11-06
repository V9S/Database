SELECT * FROM CQDZGCZYXY_ZCGL.VIEW_CARD;

SELECT * FROM CQDZGCZYXY_ZCGL.VIEW_DEPARTMENT;

创建用户
CREATE USER view_user IDENTIFIED BY view_user DEFAULT TABLESPACE CQDZGCZYXY_ZCGL;
删除用户
drop user view_user cascade;
授权
grant connect to view_user;



只可以访问某个视图：
grant  select on VIEW_CARD to view_user;
grant  select on VIEW_DEPARTMENT to view_user;

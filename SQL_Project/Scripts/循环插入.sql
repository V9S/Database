
insert ALL into gams_assetchange_increase
  (ID, master_id, Shebmc, Xingh, CHANGJ, Shul, JIAZ, Gongys)
values
  (SELECT id
     from gams_assetchange_detail d
    where d.master_id = '16FCC706E992471CB0F0C08E4968DEB4', '���豸���з��þ�̯', 'X', 'X', 1,
    2790.99, 'X')
    
    -----------ѭ��
declare
  cursor c1 is
    select id from gams_assetchange_detail d where d.master_id = '16FCC706E992471CB0F0C08E4968DEB4';
begin
  for n1 in c1 loop
    insert into gams_assetchange_increase (ID, master_id, Shebmc, Xingh, CHANGJ, Shul, JIAZ, Gongys) values(sys_guid(),n1.id,'���豸���з��þ�̯', 'X', 'X', 1,
    2790.99, 'X');
  end loop;
  commit;
end;

SELECT * FROM gams_assetchange_increase WHERE SHEBMC = '���豸���з��þ�̯';
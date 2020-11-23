select   request_session_id   spid,OBJECT_NAME(resource_associated_entity_id) tableName   
from   sys.dm_tran_locks where resource_type='OBJECT'

declare @spid  int 
Set @spid  = 135 --Ëø±í½ø³Ì
declare @sql varchar(1000)
set @sql='kill '+cast(@spid  as varchar)
exec(@sql)
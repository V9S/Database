-- Could not find process e4fffce1-1ecd-4d1b-a6b8-db7350576f84 when restoring process instance 46



select * from deploymentstore d where d.DEPLOYMENT_ID like '%e4fffce1-1ecd-4d1b-a6b8-db7350576f84%';

select * from nodeinstancelog n where n.externalId like '%e4fffce1-1ecd-4d1b-a6b8-db7350576f84%';

select * from processinstanceinfo p where p.InstanceId = '46';


-- Could not find process 3960bec0-c509-4abf-98e6-69908f0ff7b8 when restoring process instance 1037

select * from deploymentstore d where d.DEPLOYMENT_ID like '%3960bec0-c509-4abf-98e6-69908f0ff7b8%';

select * from nodeinstancelog n where n.externalId like '%3960bec0-c509-4abf-98e6-69908f0ff7b8%';

select * from nodeinstancelog n where n.externalId like '%3960bec0-c509-4abf-98e6-69908f0ff7b8%' and n.processInstanceId = 1037;

select * from processinstanceinfo p where p.InstanceId = '1037';


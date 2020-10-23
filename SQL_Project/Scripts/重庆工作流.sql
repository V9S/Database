
--Error occurs while starting process instance: No deployments available for com.beecode:5f219a0c-0a62-4769-9254-2e6680a1f3a5:3:flow:ksession01

SELECT * FROM GAMS2_WORKFLOW_DEFINITION gwd WHERE gwd.NAME = '5f219a0c-0a62-4769-9254-2e6680a1f3a5';

SELECT * FROM GAMS2_WORKFLOW_DEFINITION gwd WHERE gwd.BUSINESS_TYPE_NAMES LIKE '%InnerdispregBillDefine%'
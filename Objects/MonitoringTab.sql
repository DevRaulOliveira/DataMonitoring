
  CREATE TABLE SCHEMA_NAME.MONITORING 
   (	"NU_SESSION" NUMBER(10,0), 
	"DT_INSERT" DATE, 
	"DT_LAST_UPDATE" DATE, 
	"SCHEMA_NAME" VARCHAR2(50 BYTE), 
	"OBJECT_NAME" VARCHAR2(50 BYTE), 
	"FREQUENCY_TYPE" VARCHAR2(9 BYTE), 
	"ACTUAL_DATE" DATE, 
	"ESTIMATED_TIME" VARCHAR2(8 BYTE), 
	"LIMIT_TIME" VARCHAR2(8 BYTE), 
	"FINISH_TIME" VARCHAR2(20 BYTE), 
	"DATA_VOLUME" NUMBER(12,0), 
	"UP_DATE_CHECK" VARCHAR2(8 BYTE), 
	"UP_HOUR_CHECK" VARCHAR2(8 BYTE), 
	"RESULT_UPDATE" VARCHAR2(14 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE SCHEMA_NAME ;

   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.NU_SESSION IS 'Session update number';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.DT_INSERT IS 'Its the date of insert in ODI';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.DT_LAST_UPDATE IS 'Its the date that happened the last update in ODI';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.SCHEMA_NAME IS 'Its the schemas name';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.OBJECT_NAME IS 'Its the objects name';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.FREQUENCY_TYPE IS 'Its the frequency of update in ODI';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.ACTUAL_DATE IS 'Its the date the load was validated';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.ESTIMATED_TIME IS 'Its the time the load is due to start on the odi';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.LIMIT_TIME IS 'Its the limit time to end update process';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.FINISH_TIME IS 'Its the hour that happened last update in ODI';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.DATA_VOLUME IS 'Its the quantity of lines that are being uploaded';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.UP_DATE_CHECK IS 'Its used to check if the update happened on the right day';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.UP_HOUR_CHECK IS 'Its used to check if the update happened on the right time';
   COMMENT ON COLUMN SCHEMA_NAME.MONITORING.RESULT_UPDATE IS 'Its used to return the result of the update check process';
   COMMENT ON TABLE SCHEMA_NAME.MONITORING   IS 'This table contains information about data base update status, by crossing default information with ODI settings';


  GRANT SELECT ON SCHEMA_NAME.MONITORING  TO "UserName";

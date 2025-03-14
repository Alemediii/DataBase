--------------------------------------------------------
-- Archivo creado  - jueves-octubre-31-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CITY
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."CITY" 
   (	"CITY_ID" NUMBER, 
	"CITY_NAME" VARCHAR2(30 BYTE), 
	"COUNTRY_COUNTRY_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table COUNTRY
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."COUNTRY" 
   (	"COUNTRY_ID" NUMBER, 
	"COUNTRY_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table ERASMUS
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."ERASMUS" 
   (	"STUDENT_ID" NUMBER, 
	"CITY_CITY_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table HASHOBBY
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."HASHOBBY" 
   (	"STUDENT_STUDENT_ID" NUMBER, 
	"HOBBY_HOBBY_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table HOBBY
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."HOBBY" 
   (	"HOBBY_ID" NUMBER, 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table IS_MOTIVATED
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."IS_MOTIVATED" 
   (	"STUDENT_STUDENT_ID" NUMBER, 
	"MOTIVATION_MOTIVATION_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table MOTIVATION
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."MOTIVATION" 
   (	"MOTIVATION_ID" NUMBER, 
	"NAME" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "SIM247WHEY"."STUDENT" 
   (	"STUDENT_ID" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"AGE" NUMBER, 
	"STUDENT_STUDENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
REM INSERTING into SIM247WHEY.CITY
SET DEFINE OFF;
Insert into SIM247WHEY.CITY (CITY_ID,CITY_NAME,COUNTRY_COUNTRY_ID) values ('1','Koriskce','1');
Insert into SIM247WHEY.CITY (CITY_ID,CITY_NAME,COUNTRY_COUNTRY_ID) values ('2','Kremanchuku','2');
Insert into SIM247WHEY.CITY (CITY_ID,CITY_NAME,COUNTRY_COUNTRY_ID) values ('3','Kuala Lumpur','3');
Insert into SIM247WHEY.CITY (CITY_ID,CITY_NAME,COUNTRY_COUNTRY_ID) values ('4','Busan','4');
Insert into SIM247WHEY.CITY (CITY_ID,CITY_NAME,COUNTRY_COUNTRY_ID) values ('5','Nancy','5');
REM INSERTING into SIM247WHEY.COUNTRY
SET DEFINE OFF;
Insert into SIM247WHEY.COUNTRY (COUNTRY_ID,COUNTRY_NAME) values ('1','Slovakia');
Insert into SIM247WHEY.COUNTRY (COUNTRY_ID,COUNTRY_NAME) values ('2','Ucrkaine');
Insert into SIM247WHEY.COUNTRY (COUNTRY_ID,COUNTRY_NAME) values ('3','Malaysia');
Insert into SIM247WHEY.COUNTRY (COUNTRY_ID,COUNTRY_NAME) values ('4','South Korea');
Insert into SIM247WHEY.COUNTRY (COUNTRY_ID,COUNTRY_NAME) values ('5','France');
REM INSERTING into SIM247WHEY.ERASMUS
SET DEFINE OFF;
Insert into SIM247WHEY.ERASMUS (STUDENT_ID,CITY_CITY_ID) values ('22222','2');
Insert into SIM247WHEY.ERASMUS (STUDENT_ID,CITY_CITY_ID) values ('33333','4');
REM INSERTING into SIM247WHEY.HASHOBBY
SET DEFINE OFF;
Insert into SIM247WHEY.HASHOBBY (STUDENT_STUDENT_ID,HOBBY_HOBBY_ID) values ('11111','1');
Insert into SIM247WHEY.HASHOBBY (STUDENT_STUDENT_ID,HOBBY_HOBBY_ID) values ('11111','2');
Insert into SIM247WHEY.HASHOBBY (STUDENT_STUDENT_ID,HOBBY_HOBBY_ID) values ('22222','1');
Insert into SIM247WHEY.HASHOBBY (STUDENT_STUDENT_ID,HOBBY_HOBBY_ID) values ('22222','3');
Insert into SIM247WHEY.HASHOBBY (STUDENT_STUDENT_ID,HOBBY_HOBBY_ID) values ('33333','4');
Insert into SIM247WHEY.HASHOBBY (STUDENT_STUDENT_ID,HOBBY_HOBBY_ID) values ('33333','6');
Insert into SIM247WHEY.HASHOBBY (STUDENT_STUDENT_ID,HOBBY_HOBBY_ID) values ('44444','5');
REM INSERTING into SIM247WHEY.HOBBY
SET DEFINE OFF;
Insert into SIM247WHEY.HOBBY (HOBBY_ID,NAME) values ('1','Football');
Insert into SIM247WHEY.HOBBY (HOBBY_ID,NAME) values ('2','Play guitar');
Insert into SIM247WHEY.HOBBY (HOBBY_ID,NAME) values ('3','Videogames');
Insert into SIM247WHEY.HOBBY (HOBBY_ID,NAME) values ('4','Basketball');
Insert into SIM247WHEY.HOBBY (HOBBY_ID,NAME) values ('5','Karate');
Insert into SIM247WHEY.HOBBY (HOBBY_ID,NAME) values ('6','Music hearing');
REM INSERTING into SIM247WHEY.IS_MOTIVATED
SET DEFINE OFF;
Insert into SIM247WHEY.IS_MOTIVATED (STUDENT_STUDENT_ID,MOTIVATION_MOTIVATION_ID) values ('11111','3');
Insert into SIM247WHEY.IS_MOTIVATED (STUDENT_STUDENT_ID,MOTIVATION_MOTIVATION_ID) values ('22222','1');
Insert into SIM247WHEY.IS_MOTIVATED (STUDENT_STUDENT_ID,MOTIVATION_MOTIVATION_ID) values ('22222','4');
Insert into SIM247WHEY.IS_MOTIVATED (STUDENT_STUDENT_ID,MOTIVATION_MOTIVATION_ID) values ('22222','5');
Insert into SIM247WHEY.IS_MOTIVATED (STUDENT_STUDENT_ID,MOTIVATION_MOTIVATION_ID) values ('33333','1');
Insert into SIM247WHEY.IS_MOTIVATED (STUDENT_STUDENT_ID,MOTIVATION_MOTIVATION_ID) values ('33333','4');
Insert into SIM247WHEY.IS_MOTIVATED (STUDENT_STUDENT_ID,MOTIVATION_MOTIVATION_ID) values ('44444','6');
REM INSERTING into SIM247WHEY.MOTIVATION
SET DEFINE OFF;
Insert into SIM247WHEY.MOTIVATION (MOTIVATION_ID,NAME) values ('1','Learn Spanish');
Insert into SIM247WHEY.MOTIVATION (MOTIVATION_ID,NAME) values ('6','Good Professors');
Insert into SIM247WHEY.MOTIVATION (MOTIVATION_ID,NAME) values ('2','Improve CV');
Insert into SIM247WHEY.MOTIVATION (MOTIVATION_ID,NAME) values ('3','Learn English');
Insert into SIM247WHEY.MOTIVATION (MOTIVATION_ID,NAME) values ('4','Good Weather');
Insert into SIM247WHEY.MOTIVATION (MOTIVATION_ID,NAME) values ('5','The Culture');
REM INSERTING into SIM247WHEY.STUDENT
SET DEFINE OFF;
Insert into SIM247WHEY.STUDENT (STUDENT_ID,NAME,EMAIL,AGE,STUDENT_STUDENT_ID) values ('11111','Madison Madden','pede.nunc@hotmail.co','18','22222');
Insert into SIM247WHEY.STUDENT (STUDENT_ID,NAME,EMAIL,AGE,STUDENT_STUDENT_ID) values ('22222','Christine Goff','rutrum@yahoo.com','19','11111');
Insert into SIM247WHEY.STUDENT (STUDENT_ID,NAME,EMAIL,AGE,STUDENT_STUDENT_ID) values ('33333','Althea Lopez','nisl.quisque@aol.com','19','44444');
Insert into SIM247WHEY.STUDENT (STUDENT_ID,NAME,EMAIL,AGE,STUDENT_STUDENT_ID) values ('44444','Allistair Keith','>et.netus.et@hotmail.couk','20','33333');
--------------------------------------------------------
--  DDL for Index CITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIM247WHEY"."CITY_PK" ON "SIM247WHEY"."CITY" ("CITY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIM247WHEY"."COUNTRY_PK" ON "SIM247WHEY"."COUNTRY" ("COUNTRY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index ERASMUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIM247WHEY"."ERASMUS_PK" ON "SIM247WHEY"."ERASMUS" ("STUDENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index HASHOBBY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIM247WHEY"."HASHOBBY_PK" ON "SIM247WHEY"."HASHOBBY" ("STUDENT_STUDENT_ID", "HOBBY_HOBBY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index IS_MOTIVATED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIM247WHEY"."IS_MOTIVATED_PK" ON "SIM247WHEY"."IS_MOTIVATED" ("STUDENT_STUDENT_ID", "MOTIVATION_MOTIVATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index MOTIVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIM247WHEY"."MOTIVATION_PK" ON "SIM247WHEY"."MOTIVATION" ("MOTIVATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIM247WHEY"."STUDENT_PK" ON "SIM247WHEY"."STUDENT" ("STUDENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."STUDENT" ADD CONSTRAINT "STUDENT_PK" PRIMARY KEY ("STUDENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."STUDENT" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."STUDENT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."STUDENT" MODIFY ("AGE" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."STUDENT" MODIFY ("STUDENT_STUDENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOBBY
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."HOBBY" ADD CONSTRAINT "HOBBY_PK" PRIMARY KEY ("HOBBY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."HOBBY" MODIFY ("HOBBY_ID" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."HOBBY" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HASHOBBY
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."HASHOBBY" ADD CONSTRAINT "HASHOBBY_PK" PRIMARY KEY ("STUDENT_STUDENT_ID", "HOBBY_HOBBY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."HASHOBBY" MODIFY ("STUDENT_STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."HASHOBBY" MODIFY ("HOBBY_HOBBY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ERASMUS
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."ERASMUS" ADD CONSTRAINT "ERASMUS_PK" PRIMARY KEY ("STUDENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."ERASMUS" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."ERASMUS" MODIFY ("CITY_CITY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."COUNTRY" ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."COUNTRY" MODIFY ("COUNTRY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."COUNTRY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOTIVATION
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."MOTIVATION" ADD CONSTRAINT "MOTIVATION_PK" PRIMARY KEY ("MOTIVATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."MOTIVATION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."MOTIVATION" MODIFY ("MOTIVATION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IS_MOTIVATED
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."IS_MOTIVATED" ADD CONSTRAINT "IS_MOTIVATED_PK" PRIMARY KEY ("STUDENT_STUDENT_ID", "MOTIVATION_MOTIVATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."IS_MOTIVATED" MODIFY ("STUDENT_STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."IS_MOTIVATED" MODIFY ("MOTIVATION_MOTIVATION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CITY
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."CITY" ADD CONSTRAINT "CITY_PK" PRIMARY KEY ("CITY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "SIM247WHEY"."CITY" MODIFY ("CITY_ID" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."CITY" MODIFY ("CITY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SIM247WHEY"."CITY" MODIFY ("COUNTRY_COUNTRY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CITY
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."CITY" ADD CONSTRAINT "CITY_COUNTRY_FK1" FOREIGN KEY ("COUNTRY_COUNTRY_ID")
	  REFERENCES "SIM247WHEY"."COUNTRY" ("COUNTRY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ERASMUS
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."ERASMUS" ADD CONSTRAINT "ERASMUS_CITY_FK1" FOREIGN KEY ("CITY_CITY_ID")
	  REFERENCES "SIM247WHEY"."CITY" ("CITY_ID") ENABLE;
  ALTER TABLE "SIM247WHEY"."ERASMUS" ADD CONSTRAINT "ERASMUS_STUDENT_FK2" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "SIM247WHEY"."STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HASHOBBY
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."HASHOBBY" ADD CONSTRAINT "HASHOBBY_HOBBY_FK" FOREIGN KEY ("HOBBY_HOBBY_ID")
	  REFERENCES "SIM247WHEY"."HOBBY" ("HOBBY_ID") ENABLE;
  ALTER TABLE "SIM247WHEY"."HASHOBBY" ADD CONSTRAINT "HASHOBBY_STUDENT_FK" FOREIGN KEY ("STUDENT_STUDENT_ID")
	  REFERENCES "SIM247WHEY"."STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IS_MOTIVATED
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."IS_MOTIVATED" ADD CONSTRAINT "IS_MOTIVATED_MOTIVATION_FK" FOREIGN KEY ("MOTIVATION_MOTIVATION_ID")
	  REFERENCES "SIM247WHEY"."MOTIVATION" ("MOTIVATION_ID") ENABLE;
  ALTER TABLE "SIM247WHEY"."IS_MOTIVATED" ADD CONSTRAINT "IS_MOTIVATED_STUDENT_FK" FOREIGN KEY ("STUDENT_STUDENT_ID")
	  REFERENCES "SIM247WHEY"."STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "SIM247WHEY"."STUDENT" ADD CONSTRAINT "STUDENT_FK1" FOREIGN KEY ("STUDENT_STUDENT_ID")
	  REFERENCES "SIM247WHEY"."STUDENT" ("STUDENT_ID") ENABLE;

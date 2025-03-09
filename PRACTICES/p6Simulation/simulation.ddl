-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-31 12:16:15 CET
--   sitio:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



CREATE SMALLFILE TABLESPACE ts_alumnos 
--  WARNING: Tablespace has no data files defined 
 LOGGING ONLINE DEFAULT NOCOMPRESS NO INMEMORY
    EXTENT MANAGEMENT LOCAL AUTOALLOCATE
FLASHBACK ON 
;

CREATE USER sim247whey 
    IDENTIFIED BY
    DEFAULT TABLESPACE ts_alumnos
    QUOTA 10485760 ON ts_alumnos
    ACCOUNT UNLOCK;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE sim247whey.city (
    city_id            NUMBER NOT NULL,
    city_name          VARCHAR2(30 BYTE) NOT NULL,
    country_country_id NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.city_pk ON
    sim247whey.city (
        city_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.city
    ADD CONSTRAINT city_pk PRIMARY KEY ( city_id )
        USING INDEX sim247whey.city_pk;

CREATE TABLE sim247whey.country (
    country_id   NUMBER NOT NULL,
    country_name VARCHAR2(30 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.country_pk ON
    sim247whey.country (
        country_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.country
    ADD CONSTRAINT country_pk PRIMARY KEY ( country_id )
        USING INDEX sim247whey.country_pk;

CREATE TABLE sim247whey.erasmus (
    student_id   NUMBER NOT NULL,
    city_city_id NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.erasmus_pk ON
    sim247whey.erasmus (
        student_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.erasmus
    ADD CONSTRAINT erasmus_pk PRIMARY KEY ( student_id )
        USING INDEX sim247whey.erasmus_pk;

CREATE TABLE sim247whey.hashobby (
    student_student_id NUMBER NOT NULL,
    hobby_hobby_id     NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.hashobby_pk ON
    sim247whey.hashobby (
        student_student_id
    ASC,
        hobby_hobby_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.hashobby
    ADD CONSTRAINT hashobby_pk PRIMARY KEY ( student_student_id,
                                             hobby_hobby_id )
        USING INDEX sim247whey.hashobby_pk;

CREATE TABLE sim247whey.hobby (
    hobby_id NUMBER NOT NULL,
    name     VARCHAR2(50 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.sys_c0030688 ON
    sim247whey.hobby (
        hobby_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.hobby
    ADD CONSTRAINT hobby_pk PRIMARY KEY ( hobby_id )
        USING INDEX sim247whey.sys_c0030688;

CREATE TABLE sim247whey.is_motivated (
    student_student_id       NUMBER NOT NULL,
    motivation_motivation_id NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.is_motivated_pk ON
    sim247whey.is_motivated (
        student_student_id
    ASC,
        motivation_motivation_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.is_motivated
    ADD CONSTRAINT is_motivated_pk PRIMARY KEY ( student_student_id,
                                                 motivation_motivation_id )
        USING INDEX sim247whey.is_motivated_pk;

CREATE TABLE sim247whey.motivation (
    motivation_id NUMBER NOT NULL,
    name          VARCHAR2(60 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.motivation_pk ON
    sim247whey.motivation (
        motivation_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.motivation
    ADD CONSTRAINT motivation_pk PRIMARY KEY ( motivation_id )
        USING INDEX sim247whey.motivation_pk;

CREATE TABLE sim247whey.student (
    student_id         NUMBER NOT NULL,
    name               VARCHAR2(50 BYTE) NOT NULL,
    email              VARCHAR2(50 BYTE),
    age                NUMBER NOT NULL,
    student_student_id NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    )
NO INMEMORY;

CREATE UNIQUE INDEX sim247whey.student_pk ON
    sim247whey.student (
        student_id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE sim247whey.student
    ADD CONSTRAINT student_pk PRIMARY KEY ( student_id )
        USING INDEX sim247whey.student_pk;

ALTER TABLE sim247whey.city
    ADD CONSTRAINT city_country_fk1 FOREIGN KEY ( country_country_id )
        REFERENCES sim247whey.country ( country_id )
    NOT DEFERRABLE;

ALTER TABLE sim247whey.erasmus
    ADD CONSTRAINT erasmus_city_fk1 FOREIGN KEY ( city_city_id )
        REFERENCES sim247whey.city ( city_id )
    NOT DEFERRABLE;

ALTER TABLE sim247whey.erasmus
    ADD CONSTRAINT erasmus_student_fk2 FOREIGN KEY ( student_id )
        REFERENCES sim247whey.student ( student_id )
    NOT DEFERRABLE;

ALTER TABLE sim247whey.hashobby
    ADD CONSTRAINT hashobby_hobby_fk FOREIGN KEY ( hobby_hobby_id )
        REFERENCES sim247whey.hobby ( hobby_id )
    NOT DEFERRABLE;

ALTER TABLE sim247whey.hashobby
    ADD CONSTRAINT hashobby_student_fk FOREIGN KEY ( student_student_id )
        REFERENCES sim247whey.student ( student_id )
    NOT DEFERRABLE;

ALTER TABLE sim247whey.is_motivated
    ADD CONSTRAINT is_motivated_motivation_fk FOREIGN KEY ( motivation_motivation_id )
        REFERENCES sim247whey.motivation ( motivation_id )
    NOT DEFERRABLE;

ALTER TABLE sim247whey.is_motivated
    ADD CONSTRAINT is_motivated_student_fk FOREIGN KEY ( student_student_id )
        REFERENCES sim247whey.student ( student_id )
    NOT DEFERRABLE;

ALTER TABLE sim247whey.student
    ADD CONSTRAINT student_fk1 FOREIGN KEY ( student_student_id )
        REFERENCES sim247whey.student ( student_id )
    NOT DEFERRABLE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             8
-- ALTER TABLE                             16
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        1
-- CREATE USER                              1
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 1

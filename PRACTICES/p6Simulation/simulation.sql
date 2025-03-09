-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-31 10:44:38 CET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE city (
    city_id            VARCHAR2(12 CHAR) NOT NULL,
    city_name          VARCHAR2(12 CHAR) NOT NULL,
    country_country_id VARCHAR2(12 CHAR) NOT NULL
);

ALTER TABLE city ADD CONSTRAINT city_pk PRIMARY KEY ( city_id );

CREATE TABLE country (
    country_id   VARCHAR2(12 CHAR) NOT NULL,
    country_name VARCHAR2(12 CHAR) NOT NULL
);

ALTER TABLE country ADD CONSTRAINT country_pk PRIMARY KEY ( country_id );

CREATE TABLE erasmus (
    student_id   VARCHAR2(10 CHAR) NOT NULL,
    city_city_id VARCHAR2(12 CHAR) NOT NULL
);

ALTER TABLE erasmus ADD CONSTRAINT erasmus_pk PRIMARY KEY ( student_id );

CREATE TABLE has_a_hobby_fan (
    student_student_id  VARCHAR2(10 CHAR) NOT NULL,
    hobby_motivation_id VARCHAR2(10 CHAR) NOT NULL
);

ALTER TABLE has_a_hobby_fan ADD CONSTRAINT has_a_hobby_fan_pk PRIMARY KEY ( student_student_id,
                                                                            hobby_motivation_id );

CREATE TABLE hobby (
    motivation_id VARCHAR2(10 CHAR) NOT NULL,
    name          VARCHAR2(11 CHAR) NOT NULL
);

ALTER TABLE hobby ADD CONSTRAINT hobby_pk PRIMARY KEY ( motivation_id );

CREATE TABLE motivates_to_by (
    student_student_id       VARCHAR2(10 CHAR) NOT NULL,
    motivation_motivation_id VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE motivates_to_by ADD CONSTRAINT motivates_to_by_pk PRIMARY KEY ( student_student_id,
                                                                            motivation_motivation_id );

CREATE TABLE motivation (
    motivation_id VARCHAR2(15 CHAR) NOT NULL,
    name          VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE motivation ADD CONSTRAINT motivation_pk PRIMARY KEY ( motivation_id );

CREATE TABLE student (
    student_id         VARCHAR2(10 CHAR) NOT NULL,
    name               VARCHAR2(10) NOT NULL,
    email              VARCHAR2(25),
    age                INTEGER NOT NULL,
    student_student_id VARCHAR2(10 CHAR) NOT NULL
);

CREATE UNIQUE INDEX student__idx ON
    student (
        student_student_id
    ASC );

ALTER TABLE student ADD CONSTRAINT student_pk PRIMARY KEY ( student_id );

ALTER TABLE city
    ADD CONSTRAINT city_country_fk FOREIGN KEY ( country_country_id )
        REFERENCES country ( country_id );

ALTER TABLE erasmus
    ADD CONSTRAINT erasmus_city_fk FOREIGN KEY ( city_city_id )
        REFERENCES city ( city_id );

ALTER TABLE erasmus
    ADD CONSTRAINT erasmus_student_fk FOREIGN KEY ( student_id )
        REFERENCES student ( student_id );

ALTER TABLE has_a_hobby_fan
    ADD CONSTRAINT has_a_hobby_fan_hobby_fk FOREIGN KEY ( hobby_motivation_id )
        REFERENCES hobby ( motivation_id );

ALTER TABLE has_a_hobby_fan
    ADD CONSTRAINT has_a_hobby_fan_student_fk FOREIGN KEY ( student_student_id )
        REFERENCES student ( student_id );

ALTER TABLE motivates_to_by
    ADD CONSTRAINT motivates_to_by_motivation_fk FOREIGN KEY ( motivation_motivation_id )
        REFERENCES motivation ( motivation_id );

ALTER TABLE motivates_to_by
    ADD CONSTRAINT motivates_to_by_student_fk FOREIGN KEY ( student_student_id )
        REFERENCES student ( student_id );

ALTER TABLE student
    ADD CONSTRAINT student_student_fk FOREIGN KEY ( student_student_id )
        REFERENCES student ( student_id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             1
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
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
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
-- WARNINGS                                 0

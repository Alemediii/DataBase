-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-31 19:22:24 CET
--   sitio:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE hotel (
    code  VARCHAR2(20 BYTE) NOT NULL,
    stars INTEGER NOT NULL,
    wifi  VARCHAR2(10 CHAR) NOT NULL
);

ALTER TABLE hotel ADD CONSTRAINT hotel_pk PRIMARY KEY ( code );

CREATE TABLE ubd1318.hotel (
    stars NUMBER(*, 0) NOT NULL,
    wifi  VARCHAR2(20 BYTE) NOT NULL
);

CREATE UNIQUE INDEX ubd1318.hotel_pk ON
    ubd1318.hotel (
        stars
    ASC,
        wifi
    ASC );

ALTER TABLE ubd1318.hotel ADD CONSTRAINT hotel_pk PRIMARY KEY ( stars,
                                                                wifi );

CREATE TABLE ubd1318.opinion (
    date_eat             VARCHAR2(20 BYTE) NOT NULL,
    "OPINION.DATE_EAT"   VARCHAR2(20 BYTE) NOT NULL,
    grade                NUMBER(*, 0),
    place_code           VARCHAR2(20 BYTE) NOT NULL,
    code1                VARCHAR2(20 BYTE),
    owner_email          VARCHAR2(20 BYTE) NOT NULL,
    email1               VARCHAR2(20 BYTE),
    place_code2          VARCHAR2(20 BYTE) NOT NULL,
    owner_email2         VARCHAR2(20 BYTE) NOT NULL,
    opinion_place_code2  VARCHAR2(20 BYTE),
    opinion_owner_email2 VARCHAR2(20 BYTE),
    "COMMENT"            CLOB
);

CREATE UNIQUE INDEX ubd1318.opinion_pk ON
    ubd1318.opinion (
        date_eat
    ASC );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_pk PRIMARY KEY ( place_code2,
                                            owner_email2,
                                            date_eat );

CREATE TABLE ubd1318.owner (
    email   VARCHAR2(20 BYTE) NOT NULL,
    name    VARCHAR2(20 BYTE),
    surname VARCHAR2(20 BYTE)
);

CREATE UNIQUE INDEX ubd1318.owner_pk ON
    ubd1318.owner (
        email
    ASC );

ALTER TABLE ubd1318.owner ADD CONSTRAINT owner_pk PRIMARY KEY ( email );

CREATE TABLE ubd1318.owner_fk1 (
    owner_email  VARCHAR2(20 BYTE) NOT NULL,
    owner_email1 VARCHAR2(20 BYTE) NOT NULL
);

CREATE UNIQUE INDEX ubd1318.owner_fk1_pk ON
    ubd1318.owner_fk1 (
        owner_email
    ASC,
        owner_email1
    ASC );

ALTER TABLE ubd1318.owner_fk1 ADD CONSTRAINT owner_fk1_pk PRIMARY KEY ( owner_email,
                                                                        owner_email1 );

CREATE TABLE ubd1318.place (
    code        VARCHAR2(20 BYTE) NOT NULL,
    name        VARCHAR2(20 BYTE) NOT NULL,
    owner_email VARCHAR2(20 BYTE) NOT NULL,
    city        VARCHAR2(20 BYTE) NOT NULL,
    phone       VARCHAR2(20 BYTE),
    avgscore    VARCHAR2(20 BYTE) NOT NULL,
    adress      VARCHAR2(15 CHAR) NOT NULL
);

CREATE UNIQUE INDEX ubd1318.place_adress_uk2 ON
    ubd1318.place (
        owner_email
    ASC );

CREATE UNIQUE INDEX ubd1318.place_pk ON
    ubd1318.place (
        code
    ASC );

CREATE UNIQUE INDEX ubd1318.place_uk1 ON
    ubd1318.place (
        city
    ASC );

ALTER TABLE ubd1318.place ADD CONSTRAINT place_pk PRIMARY KEY ( code );

ALTER TABLE ubd1318.place ADD CONSTRAINT place_owner_email_un UNIQUE ( owner_email );

ALTER TABLE ubd1318.place ADD CONSTRAINT place_city_un UNIQUE ( city );

ALTER TABLE ubd1318.place ADD CONSTRAINT place_adress_un UNIQUE ( adress );

CREATE TABLE relation_13 (
    owner_email  VARCHAR2(20 BYTE) NOT NULL,
    owner_email1 VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE relation_13 ADD CONSTRAINT relation_13_pk PRIMARY KEY ( owner_email,
                                                                    owner_email1 );

CREATE TABLE ubd1318.resaurant (
    typeoffodd VARCHAR2(20 BYTE) NOT NULL
);

CREATE UNIQUE INDEX ubd1318.resaurant_pk ON
    ubd1318.resaurant (
        typeoffodd
    ASC );

ALTER TABLE ubd1318.resaurant ADD CONSTRAINT resaurant_pk PRIMARY KEY ( typeoffodd );

CREATE TABLE restaurant (
    code       VARCHAR2(20 BYTE) NOT NULL,
    typeoffood VARCHAR2(10 CHAR)
);

ALTER TABLE restaurant ADD CONSTRAINT restaurant_pk PRIMARY KEY ( code );

CREATE TABLE ubd1318.restaurant (
    code       VARCHAR2(20 BYTE) NOT NULL,
    typeoffood VARCHAR2(10 CHAR) NOT NULL
);

CREATE UNIQUE INDEX ubd1318.restaurant_pk ON
    ubd1318.restaurant (
        code
    ASC );

ALTER TABLE ubd1318.restaurant ADD CONSTRAINT restaurant_pk PRIMARY KEY ( code );

ALTER TABLE hotel
    ADD CONSTRAINT hotel_place_fk FOREIGN KEY ( code )
        REFERENCES ubd1318.place ( code );

ALTER TABLE ubd1318.hotel
    ADD CONSTRAINT hotel_place_fk1 FOREIGN KEY ( wifi )
        REFERENCES ubd1318.place ( code );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_fk1 FOREIGN KEY ( "OPINION.DATE_EAT" )
        REFERENCES ubd1318.place ( code );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_opinion_fk FOREIGN KEY ( opinion_place_code2,
                                                    opinion_owner_email2 )
        REFERENCES ubd1318.opinion ( place_code2,
                                     owner_email2,
                                     date_eat );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_owner_fk FOREIGN KEY ( owner_email )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_owner_fk2 FOREIGN KEY ( "OPINION.DATE_EAT" )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_owner_fkv1 FOREIGN KEY ( owner_email2 )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_place_fk FOREIGN KEY ( place_code )
        REFERENCES ubd1318.place ( code );

ALTER TABLE ubd1318.opinion
    ADD CONSTRAINT opinion_place_fkv1 FOREIGN KEY ( place_code2 )
        REFERENCES ubd1318.place ( code );

ALTER TABLE ubd1318.owner_fk1
    ADD CONSTRAINT owner_fk1_owner_fk FOREIGN KEY ( owner_email )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE ubd1318.owner_fk1
    ADD CONSTRAINT owner_fk1_owner_fkv1 FOREIGN KEY ( owner_email1 )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE ubd1318.place
    ADD CONSTRAINT place_owner_fk FOREIGN KEY ( owner_email )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE relation_13
    ADD CONSTRAINT relation_13_owner_fk FOREIGN KEY ( owner_email )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE relation_13
    ADD CONSTRAINT relation_13_owner_fkv1 FOREIGN KEY ( owner_email1 )
        REFERENCES ubd1318.owner ( email );

ALTER TABLE ubd1318.resaurant
    ADD CONSTRAINT resaurant_place_fk1 FOREIGN KEY ( typeoffodd )
        REFERENCES ubd1318.place ( code );

ALTER TABLE restaurant
    ADD CONSTRAINT restaurant_place_fk FOREIGN KEY ( code )
        REFERENCES ubd1318.place ( code );

ALTER TABLE ubd1318.restaurant
    ADD CONSTRAINT restaurant_place_fk FOREIGN KEY ( code )
        REFERENCES ubd1318.place ( code );

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             9
-- ALTER TABLE                             30
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
-- ERRORS                                   2
-- WARNINGS                                 0

CREATE TABLE PAIS (ID NUMBER PRIMARY KEY, 
                    NOME VARCHAR2(30));

CREATE TABLE ESTADO (ID_ESTADO NUMBER PRIMARY KEY,
                      NOME VARCHAR2(30),
                      ID_PAIS NUMBER);

ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY  (ID_PAIS)
REFERENCES PAIS (ID_PAIS);

SELECT 'DROP TABLE ' ||TABLE_NAME|| ' CASCADE CONSTRAINTS;'
FROM user_tables;



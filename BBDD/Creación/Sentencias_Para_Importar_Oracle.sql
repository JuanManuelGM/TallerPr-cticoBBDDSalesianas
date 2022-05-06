--alter session set "_ORACLE_SCRIPT"=true;--
--CREATE USER PANDEMIA IDENTIFIED BY rootroot DEFAULT TABLESPACE NTTDATA_FPDUAL_ORACLE_TS;--
--GRANT CREATE SESSION, ALTER SESSION, CREATE TABLE, CREATE SEQUENCE,--
--CREATE TABLESPACE, UNLIMITED TABLESPACE TO USERFPDUAL;--

CREATE TABLE CIUDAD(

ID_CIUDAD INT NOT NULL,
NOMBRE VARCHAR (30),
PROVINCIA VARCHAR (30),
POBLACION INT,
PRIMARY KEY(ID_CIUDAD)

);

CREATE TABLE CONTAGIOS(

ID_RECUENTO_CONT VARCHAR (11) NOT NULL,
CONTAGIOS_TOTALES INT,
FECHA DATE,
ID_CIUDAD INT,
PRIMARY KEY (ID_RECUENTO_CONT, ID_CIUDAD),
FOREIGN KEY (ID_CIUDAD) REFERENCES CIUDAD(ID_CIUDAD)

);
CREATE TABLE HOSPITALIZACIONES(

ID_RECUENTO_HOS VARCHAR (11) NOT NULL,
CAMAS_OCUPADAS INT,
FECHA DATE,
ID_CIUDAD INT,
PRIMARY KEY (ID_RECUENTO_HOS, ID_CIUDAD),
FOREIGN KEY (ID_CIUDAD) REFERENCES CIUDAD(ID_CIUDAD)

);

CREATE TABLE VACUNACIONES(

ID_RECUENTO_VAC VARCHAR (11) NOT NULL,
VACUNACIONES_TOTALES INT,
FECHA DATE,
ID_CIUDAD INT,
PRIMARY KEY (ID_RECUENTO_VAC, ID_CIUDAD),
FOREIGN KEY (ID_CIUDAD) REFERENCES CIUDAD(ID_CIUDAD)

);

CREATE TABLE CENTRO_VACUNACION(

ID_CENTRO VARCHAR (11) NOT NULL,
ID_CIUDAD INT ,
NOMBRE VARCHAR (50),
DIRECCION VARCHAR (50),
AFORO INT ,
PRIMARY KEY (ID_CENTRO),
FOREIGN KEY (ID_CIUDAD) REFERENCES CIUDAD(ID_CIUDAD)

);

CREATE TABLE DISTRIBUIDOR_VACUNA(

ID_VACUNA VARCHAR (11) NOT NULL,
ID_CENTRO VARCHAR (11),
NOMBRE VARCHAR (30),
PRIMARY KEY (ID_VACUNA, ID_CENTRO),
FOREIGN KEY (ID_CENTRO) REFERENCES CENTRO_VACUNACION(ID_CENTRO)

);

INSERT INTO CIUDAD VALUES(1,'Madrid','Madrid', 3305408);
INSERT INTO CIUDAD VALUES(2,'Pontevedra','Galicia', 83029);
INSERT INTO CIUDAD VALUES(3,'Valencia','Valencia', 789744);
INSERT INTO CIUDAD VALUES(4,'Sevilla','Andalucía', 684234);
INSERT INTO CIUDAD VALUES(5,'Málaga','Andalucía', 577405);

INSERT INTO CONTAGIOS VALUES('C1', 2000, '25/08/2020', 1);
INSERT INTO CONTAGIOS VALUES('C2', 2200, '25/09/2020', 1);
INSERT INTO CONTAGIOS VALUES('C3', 4000, '25/10/2020', 1);
INSERT INTO CONTAGIOS VALUES('C4', 1500, '25/11/2020', 1);
INSERT INTO CONTAGIOS VALUES('C5', 2000, '25/08/2020', 2);
INSERT INTO CONTAGIOS VALUES('C6', 2200, '25/09/2020', 2);
INSERT INTO CONTAGIOS VALUES('C7', 4800, '25/10/2020', 2);
INSERT INTO CONTAGIOS VALUES('C8', 1000, '25/11/2020', 2);
INSERT INTO CONTAGIOS VALUES('C9', 2000, '25/08/2020', 3);
INSERT INTO CONTAGIOS VALUES('C10', 2600, '25/09/2020', 3);
INSERT INTO CONTAGIOS VALUES('C11', 5000, '25/10/2020', 3);
INSERT INTO CONTAGIOS VALUES('C12', 1000, '25/11/2020', 3);
INSERT INTO CONTAGIOS VALUES('C13', 2000, '25/08/2020', 4);
INSERT INTO CONTAGIOS VALUES('C14', 2100, '25/09/2020', 4);
INSERT INTO CONTAGIOS VALUES('C15', 800, '25/10/2020', 4);
INSERT INTO CONTAGIOS VALUES('C16', 10000, '25/11/2020', 4);
INSERT INTO CONTAGIOS VALUES('C17', 1200, '25/08/2020', 5);
INSERT INTO CONTAGIOS VALUES('C18', 1100, '25/09/2020', 5);
INSERT INTO CONTAGIOS VALUES('C19', 1000, '25/10/2020', 5);
INSERT INTO CONTAGIOS VALUES('C20', 1100, '25/11/2020', 5);


INSERT INTO HOSPITALIZACIONES VALUES('H1', 200, '25/08/2020', 1);
INSERT INTO HOSPITALIZACIONES VALUES('H2', 220, '25/09/2020', 1);
INSERT INTO HOSPITALIZACIONES VALUES('H3', 400, '25/10/2020', 1);
INSERT INTO HOSPITALIZACIONES VALUES('H4', 150, '25/11/2020', 1);
INSERT INTO HOSPITALIZACIONES VALUES('H5', 200, '25/08/2020', 2);
INSERT INTO HOSPITALIZACIONES VALUES('H6', 220, '25/09/2020', 2);
INSERT INTO HOSPITALIZACIONES VALUES('H7', 480, '25/10/2020', 2);
INSERT INTO HOSPITALIZACIONES VALUES('H8', 100, '25/11/2020', 2);
INSERT INTO HOSPITALIZACIONES VALUES('H9', 200, '25/08/2020', 3);
INSERT INTO HOSPITALIZACIONES VALUES('H10', 260, '25/09/2020', 3);
INSERT INTO HOSPITALIZACIONES VALUES('H11', 500, '25/10/2020', 3);
INSERT INTO HOSPITALIZACIONES VALUES('H12', 100, '25/11/2020', 3);
INSERT INTO HOSPITALIZACIONES VALUES('H13', 200, '25/08/2020', 4);
INSERT INTO HOSPITALIZACIONES VALUES('H14', 210, '25/09/2020', 4);
INSERT INTO HOSPITALIZACIONES VALUES('H15', 80, '25/10/2020', 4);
INSERT INTO HOSPITALIZACIONES VALUES('H16', 1000, '25/11/2020', 4);
INSERT INTO HOSPITALIZACIONES VALUES('H17', 120, '25/08/2020', 5);
INSERT INTO HOSPITALIZACIONES VALUES('H18', 110, '25/09/2020', 5);
INSERT INTO HOSPITALIZACIONES VALUES('H19', 100, '25/10/2020', 5);
INSERT INTO HOSPITALIZACIONES VALUES('H20', 110, '25/11/2020', 5);

INSERT INTO VACUNACIONES VALUES('V2', 221, '25/09/2020', 1);
INSERT INTO VACUNACIONES VALUES('V3', 357, '25/10/2020', 1);
INSERT INTO VACUNACIONES VALUES('V4', 1224, '25/11/2020', 1);
INSERT INTO VACUNACIONES VALUES('V5', 205, '25/08/2020', 2);
INSERT INTO VACUNACIONES VALUES('V6', 229, '25/09/2020', 2);
INSERT INTO VACUNACIONES VALUES('V7', 489, '25/10/2020', 2);
INSERT INTO VACUNACIONES VALUES('V8',1567, '25/11/2020', 2);
INSERT INTO VACUNACIONES VALUES('V9', 202, '25/08/2020', 3);
INSERT INTO VACUNACIONES VALUES('V10', 269, '25/09/2020', 3);
INSERT INTO VACUNACIONES VALUES('V11', 542, '25/10/2020', 3);
INSERT INTO VACUNACIONES VALUES('V12', 1369, '25/11/2020', 3);
INSERT INTO VACUNACIONES VALUES('V13', 205, '25/08/2020', 4);
INSERT INTO VACUNACIONES VALUES('V14', 234, '25/09/2020', 4);
INSERT INTO VACUNACIONES VALUES('V15', 353, '25/10/2020', 4);
INSERT INTO VACUNACIONES VALUES('V16', 2080, '25/11/2020', 4);
INSERT INTO VACUNACIONES VALUES('V17',120, '25/08/2020', 5);
INSERT INTO VACUNACIONES VALUES('V18', 204, '25/09/2020', 5);
INSERT INTO VACUNACIONES VALUES('V19', 345, '25/10/2020', 5);
INSERT INTO VACUNACIONES VALUES('V20', 895, '25/11/2020', 5);

INSERT INTO CENTRO_VACUNACION VALUES ('CV1', 1, 'Hospital Ramón y Cajal', 'Plaza Conde de Suchil', 3000);
INSERT INTO CENTRO_VACUNACION VALUES ('CV2', 2, 'Complejo Deportivo Campolongo', 'Rúa Iglesias Vilrelle, 32', 2000);
INSERT INTO CENTRO_VACUNACION VALUES ('CV3', 3, 'Hospital Universitario Torrevieja', 'Carretera CV 95', 2000);
INSERT INTO CENTRO_VACUNACION VALUES ('CV4', 4, 'Estadio Olímpico', 'Isla de la Cartuja', 5000);
INSERT INTO CENTRO_VACUNACION VALUES ('CV5', 5, 'Hospital María Zambrano', 'Explanada de la Estación 12', 2500);

INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV1', 'CV1', 'ASTRA ZENECA');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV1', 'CV3', 'ASTRA ZENECA');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV2', 'CV2', 'PFIZER');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV2', 'CV5', 'PFIZER');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV3', 'CV1', 'JANSSEN');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV3', 'CV4', 'JANSSEN');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV4', 'CV3', 'MODERNA');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV4', 'CV4', 'MODERNA');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV5', 'CV5', 'NOVAVAX');
INSERT INTO DISTRIBUIDOR_VACUNA VALUES('DV5', 'CV2', 'NOVAVAX');


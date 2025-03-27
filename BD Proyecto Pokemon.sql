CREATE TABLE POKEMON(
    ID_POKEMON INT,
    ID_ENTRENADOR INT,
    NUM_POKEDEX INT,
    MOTE VARCHAR(20),
    VITALIDAD INT NOT NULL,
    ATAQUE INT NOT NULL,
    ATA_ESPECIAL INT NOT NULL,
    DEFENSA INT NOT NULL,
    DEF_ESPECIAL INT NOT NULL,
    VELOCIDAD INT NOT NULL,
    NIVEL INT NOT NULL,
    FERTILIDAD INT NOT NULL CHECK (FERTILIDAD BETWEEN 0 AND 5),
    SEXO CHAR(1) NOT NULL CHECK (SEXO IN ('H','M','X')),
    ESTADO VARCHAR(20);
	EQUIPO INT NOT NULL DEFAULT 3,
	ID_OBJETO INT,
	CONSTRAINT POKEMON_PK PRIMARY KEY(ID_POKEMON)
);
INSERT INTO POKEMON VALUES (1, 1, 1, 'BULBI', 32, 17, 21, 17, 21, 17, 10, 3, 'H', 'CONFUNDIDO', 2, 3);
INSERT INTO POKEMON VALUES (2, 1, 2, 'IVY', 45, 22, 30, 22, 30, 22, 20, 2, 'M', 'NORMAL', 2, NULL);
INSERT INTO POKEMON VALUES (3, 1, 3, 'VENUS', 80, 35, 45, 35, 45, 30, 36, 1, 'H', 'ENVENENADO', 3, 5);
INSERT INTO POKEMON VALUES (4, 1, 94, 'SOMBRA', 60, 40, 55, 25, 50, 50, 30, 0, 'X', 'DORMIDO', 1, NULL);
INSERT INTO POKEMON VALUES (5, 2, 129, 'SPLASHY', 20, 5, 15, 5, 10, 80, 5, 4, 'M', 'NORMAL', 3, NULL);
INSERT INTO POKEMON VALUES (6, 2, 130, 'FURIA', 85, 50, 60, 45, 55, 81, 25, 3, 'H', 'NORMAL', 1, 2);
INSERT INTO POKEMON VALUES (7, 2, 143, 'GORDO', 160, 110, 65, 65, 110, 30, 40, 2, 'M', 'PARALIZADO', 2, 1);
INSERT INTO POKEMON VALUES (8, 2, 306, 'DINOSAURIO', 90, 60, 40, 100, 70, 50, 45, 5, 'X', 'NORMAL', 3, NULL);
INSERT INTO POKEMON VALUES (9, 3, 382, 'OCEANO', 100, 80, 90, 80, 90, 50, 50, 2, 'H', 'NORMAL', 2, 4);
INSERT INTO POKEMON VALUES (10, 3, 392, 'MONKI', 75, 55, 65, 50, 55, 90, 32, 3, 'M', 'CONGELADO', 3, 2);
INSERT INTO POKEMON VALUES (11, 3, 393, 'PÁJARO', 50, 40, 50, 40, 45, 45, 15, 2, 'H', 'NORMAL', 2, NULL);
INSERT INTO POKEMON VALUES (12, 3, 394, 'AZULITO', 65, 50, 60, 50, 55, 55, 25, 3, 'M', 'NORMAL', 3, NULL);
INSERT INTO POKEMON VALUES (13, 4, 395, 'PINGU', 80, 70, 80, 70, 75, 60, 40, 1, 'X', 'QUEMADO', 2, 5);
INSERT INTO POKEMON VALUES (14, 4, 491, 'SUEÑO', 90, 60, 90, 60, 80, 70, 55, 4, 'H', 'DORMIDO', 3, NULL);
INSERT INTO POKEMON VALUES (15, 4, 644, 'OSCURIDAD', 105, 80, 100, 90, 90, 95, 60, 5, 'M', 'NORMAL', 1, 3);

ALTER TABLE POKEMON 
ADD CONSTRAINT POKE_EQUIPO_CK CHECK (EQUIPO IN (1,2,3));

CREATE TABLE ENTRENADOR(
	ID_ENTRENADOR INT,
	USUARIO VARCHAR(20) NOT NULL,
	PASSWORD VARCHAR(20) NOT NULL,
	POKEDOLLARES INT NOT NULL DEFAULT 1000,
	CONSTRAINT ENTRENADOR_PK PRIMARY KEY (ID_ENTRENADOR)
);
INSERT INTO entrenador VALUES(1, 'LUISRE', 'ME GUSTA FRODO', 23909);
INSERT INTO entrenador VALUES(2, 'FARIÑA', 'FREEWINALBARSABTW', 787);
INSERT INTO entrenador VALUES(3, 'DIEGO', 'MEMULTARONENELTRANVIA', 0);
INSERT INTO entrenador VALUES(4, 'MIGUEL', 'METENGOQUEIRUNMOMENTO', 666);

CREATE TABLE POKEDEX(
		NUM_POKEDEX INT,
	NOM_POKEMON VARCHAR(20) NOT NULL,
	IMG_FRONTAL VARCHAR(20) NOT NULL,
	IMG_BACK VARCHAR(20) NOT NULL,
	SONIDO VARCHAR(20) NOT NULL,
	NIVEL_EVO INT NOT NULL,
	TIPO1 VARCHAR(20) NOT NULL,
	TIPO_2 VARCHAR(20),
	CONSTRAINT POKEDEX_PX PRIMARY KEY (NUM_POKEDEX)
);
ALTER TABLE POKEDEX 
MODIFY NIVEL_EVO INT NULL;

INSERT INTO POKEDEX VALUES(1,'BULBASAUR','1.png','1.png','1.wav',15,'PLANTA','VENENO');
INSERT INTO POKEDEX VALUES(2,'IVASAUR','2.png','2.png','2.wav',28,'PLANTA','VENENO');
INSERT INTO POKEDEX VALUES(3,'VENUSAUR','3.png','3.png','3.wav',NULL,'PLANTA','VENENO');
INSERT INTO POKEDEX VALUES(94,'GENGAR','94.png','94.png','94.wav',NULL,'FANTASMA','VENENO');
INSERT INTO POKEDEX VALUES(129,'MAGIKARP','129.png','129.png','129.wav',20,'AGUA',NULL);
INSERT INTO POKEDEX VALUES(130,'GYARADOS','130.png','130.png','130.wav',NULL,'AGUA','VOLADOR');
INSERT INTO POKEDEX VALUES(143,'SNORLAX','143.png','143.png','143.wav',NULL,'NORMAL',NULL);
INSERT INTO POKEDEX VALUES(306,'AGGRON','306.png','306.png','306.wav',NULL,'ACERO','ROCA');
INSERT INTO POKEDEX VALUES(382,'KYOGRE','382.png','382.png','382.wav',NULL,'AGUA',NULL);
INSERT INTO POKEDEX VALUES(392,'INFERNAPE','392.png','392.png','392.wav',NULL,'FUEGO','LUCHA');
INSERT INTO POKEDEX VALUES(393,'PIPLUP','393.png','393.png','393.wav',16,'AGUA',NULL);
INSERT INTO POKEDEX VALUES(394,'PRINPLUP','394.png','394.png','394.wav',36,'AGUA',NULL);
INSERT INTO POKEDEX VALUES(395,'EMPOLEON','395.png','395.png','395.wav',NULL,'AGUA','ACERO');
INSERT INTO POKEDEX VALUES(491,'DARKRAI','491.png','491.png','491.wav',NULL,'SINIESTRO',NULL);
INSERT INTO POKEDEX VALUES(644,'ZEKROM','644.png','644.png','644.wav',NULL,'DRAGÓN','ELÉCTRICO');

CREATE TABLE OBJETO (
	ID_OBJETO INT,
	NOM_OBJETO VARCHAR(50) NOT NULL,
	ATAQUE INT,
	AT_ESPECIAL INT,
	DEFENSA INT,
	DEF_ESPECIAL INT,
	VELOCIDAD INT,
	PRECIO INT NOT NULL,
	CONSTRAINT OBJETO_PK PRIMARY KEY(ID_OBJETO)
);

INSERT INTO OBJETO (1, PESA, 20, NULL, 20, NULL, -20, 1000);
INSERT INTO OBJETO (2, PLUMA, NULL, NULL, -20, -20, 30, 1100);
INSERT INTO OBJETO (3, CHALECO, -15, NULL, 20, 20, -15, 1500);
INSERT INTO OBJETO (4, BASTÓN, NULL, NULL, NULL, NULL, -15, 200);
INSERT INTO OBJETO (5, PILAS, NULL, NULL, NULL, -30, NULL, 100);
INSERT INTO OBJETO (6, ETER, NULL, NULL, NULL, NULL, NULL, 500);
INSERT INTO OBJETO (7, ANILLO ÚNICO, 10, NULL, NULL, NULL, NULL, 50000);
INSERT INTO OBJETO (8, POKEBALL, NULL, NULL, NULL, NULL, NULL, 50);
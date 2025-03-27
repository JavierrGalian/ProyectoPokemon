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
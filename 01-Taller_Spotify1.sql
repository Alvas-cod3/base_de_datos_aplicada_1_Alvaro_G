DROP TABLE CANCION;

CREATE TABLE CANCION(
    id_cancion NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR2(200),
    artista VARCHAR2(100),
    album VARCHAR2(200),
    genero VARCHAR2(200),
    duracion_segundos NUMBER,
    fecha_lanzamiento DATE
);

INSERT INTO CANCION(TITULO, artista, album, genero, DURACION_SEGUNDOS, FECHA_LANZAMIENTO ) 
VALUES('Dont Cry','Guns n Roses', 'User your illusions','Rock', 200, DATE '1991-09-17' );
INSERT INTO CANCION(TITULO, artista, album, genero, DURACION_SEGUNDOS, FECHA_LANZAMIENTO ) 
VALUES('November Rain','Guns n Roses', 'User your illusions','Rock', 240, DATE '1991-09-17' );
INSERT INTO CANCION(TITULO, artista, album, genero, DURACION_SEGUNDOS, FECHA_LANZAMIENTO ) 
VALUES('Strange','Guns n Roses', 'User your illusions','Rock', 500, DATE '1991-09-17' );

INSERT INTO CANCION(TITULO, artista, album, genero, duracion_segundos, fecha_lanzamiento)
VALUES ('Anti-Hero', 'Taylor Swift', 'Midnights', 'Pop', 200, DATE '2022-10-21');
COMMIT;

--DELETE FROM CANCION WHERE ID_CANCION = 1;--
COMMIT;
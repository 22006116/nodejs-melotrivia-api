CREATE DATABASE IF NOT EXISTS `melotrivia`;

USE `melotrivia`; 

CREATE TABLE IF NOT EXISTS `pregunta`
(
    id INT NOT NULL AUTO_INCREMENT,
    pregunta VARCHAR(250) NOT NULL,
    respuesta_Corecta VARCHAR(50) NOT NULL,
    respuesta_1 VARCHAR(50) NOT NULL,
    respuesta_2 VARCHAR(50) NOT NULL,
    respuesta_3 VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `preguntas` VALUES (1,'¿Primera banda famosa de Charly García?','Serú Girán','La máquina de hacer pájaros','Sui Generis','Soda Stereo'),
(2,'¿Canción que fue compuesta por The Beatles y grabada primero por The Rolling Stones?','I wanna be your man','Rock and roll music','bad boy','Twist and shout'),
(3,'¿Cuál de estos no es un disco de Led Zeppelin?','Signals','Coda','in through the out door','Contraband'),
(4,'¿A la revolución de qué país hace referencia el disco Sandinista de The Clash?','Nicaragua','Cuba','Mexico','Venezuela'),
(5,'¿En qué año fue el legendario festival de Woodstock?','1969','1980','1976','1989'),
(6,'¿A qué hace referencia el nombre de la banda ‘The Doors’?','Al libro The Doors of perceptions','A la película Havens Door','Al libro The Doors of Stone','Al poema Knockin\' on Heaven\'s Door'),
(7,'¿En qué año se formó Nirvana?','1987','1990','1989','1994'),
(8,'Completa el tema de Soda Stereo: “Pero ese ruido blanco…”','Es una alarma en mis oidos','Es una alarma en mis ojos','Como podremos sobrevivir','Come de mi, come de mi carne'),
(9,'¿A qué disco pertenece el tema ‘Imágenes paganas’ de Virus?','Virus vivo','Wadu Wadu','Locura','Amor amarillo'),
(10,'No es una película con The Beatles como protagonistas','I Want to Hold Your Hand','A Hard Days Night','Help','Yellow Submarine');
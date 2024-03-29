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
(10,'No es una película con The Beatles como protagonistas','I Want to Hold Your Hand','A Hard Days Night','Help','Yellow Submarine'),
(11,'¿Quién es el rey del Rock and Roll?','Elvis Presley','Mick Jagger','David Bowie','Jim Morrison'),
(12,'¿Qué banda lanzó la canción “Stairway to Heaven”?','Led Zepelín','Los Beatles','AC / DC','Pink Floyd'),
(13,'¿Qué banda escribió el álbum “The Wall”?','Pink Floyd','Los Beatles','AC / DC','Led Zepelín'),
(14,'¿Quién fue el cantante principal de Queen?','Fredy Mercury','Brian May','Roger Waters','Paul McCartney'),
(15,'¿Qué banda tuvo éxito con la canción “Hotel California”?','Las Águilas','Los Rolling Stones','Fleetwood Mac','Dire Straits'),
(16,'¿“Born to Run” es una canción icónica de qué artista?','Bruce Springsteen','Bob Dylan','Eric Clapton','Neil Young'),
(17,'¿Quién es conocido por tocar la guitarra con los dientes durante las presentaciones en vivo?','Jimi Hendrix','Keith Richards','Slash','Jimmy Page'),
(18,'¿Qué banda de rock se conocía originalmente como “On a Friday”?','Radiohead','The Cure','U2','R. E. M.'),
(19,'¿Qué álbum de los Beatles incluye la canción “Lucy in the Sky with Diamonds”?','Sgt. Pepper’s Lonely Hearts Club Band','The White Album','Rubber Soul','Abbey Road'),
(20,'¿De qué banda es la canción “November Rain”?','Guns N Roses','Aerosmith','Metallica','Bon Jovi');
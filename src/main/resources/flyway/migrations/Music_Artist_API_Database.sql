DROP TABLE IF EXISTS Song_Artist;
DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Festivals_Played;
DROP TABLE IF EXISTS Artists;
CREATE TABLE Artists (
Artist_id INT NOT NULL AUTO_INCREMENT,
Artist_name VARCHAR(100) NOT NULL,
year_started INT NOT NULL,
year_ended INT,
place_of_origin VARCHAR(100) NOT NULL,
instagram_handle VARCHAR(50),
PRIMARY KEY (Artist_id)
);
CREATE TABLE Albums (
Album_id INT NOT NULL AUTO_INCREMENT,
Artist_id INT NOT NULL,
Album_name VARCHAR(100) NOT NULL,
Year_released YEAR NOT NULL,
Genre VARCHAR(50) NOT NULL,
RIAA_rating VARCHAR(50),
PRIMARY KEY(Album_id),
Foreign Key(Artist_id) REFERENCES Artists(Artist_id)
);
CREATE TABLE Songs (
Song_id INT NOT NULL AUTO_INCREMENT,
Album_id INT NOT NULL,
Song_name VARCHAR(100),
Fun_fact MEDIUMTEXT,
Date_released VARCHAR(50),
PRIMARY KEY(Song_id),
FOREIGN KEY(Album_id) REFERENCES Albums(Album_id)
);
CREATE TABLE Festivals_Played (
Festival_id INT NOT NULL AUTO_INCREMENT,
Artist_id INT NOT NULL,
Name_of_festival VARCHAR(100) NOT NULL,
Start_date VARCHAR(50) NOT NULL,
End_date VARCHAR(50) NOT NULL,
PRIMARY KEY(Festival_id),
FOREIGN KEY(Artist_id) REFERENCES Artists(Artist_id)
);
CREATE TABLE Song_Artist (
Artist_id INT NOT NULL,
Song_id INT NOT NULL,
FOREIGN KEY(Artist_id) REFERENCES Artists(Artist_id),
FOREIGN KEY(Song_id) REFERENCES Songs(Song_id)
); 

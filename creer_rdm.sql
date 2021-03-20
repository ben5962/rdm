DROP DATABASE IF EXISTS rdm;
CREATE DATABASE rdm;
USE rdm;

CREATE TABLE INSTRUMENT(
 instrument VARCHAR(50),
CONSTRAINT pk__instrument PRIMARY KEY(instrument)
);

CREATE TABLE STYLE_MUSICAL(
 style_musical VARCHAR(50),
CONSTRAINT pk__style_musical PRIMARY KEY(style_musical)
);

CREATE TABLE NIVEAU_EXPERIENCE(
 niveau_experience VARCHAR(50),
CONSTRAINT pk__niveau_experience PRIMARY KEY(niveau_experience)
);

CREATE TABLE INTERNET_OU_PHYSIQUE(
 internet_ou_physique VARCHAR(50),
CONSTRAINT pk__internet_ou_physique PRIMARY KEY(internet_ou_physique)
);

CREATE TABLE EST_DISPO(
 estDispo VARCHAR(50),
CONSTRAINT pk__estDispo PRIMARY KEY(estDispo)
);

CREATE TABLE MUSICIEN(
 pseudo VARCHAR(50),
 email VARCHAR(50),
 hash_mdp VARCHAR(50),
 age TINYINT(2),
 ville VARCHAR(50),
 photo VARCHAR(255),
 instrument VARCHAR(50),
 style_musical VARCHAR(50),
 niveau_experience VARCHAR(50),
 internet_ou_physique VARCHAR(50),
 estDispo VARCHAR(50),
CONSTRAINT pk__pseudo PRIMARY KEY(pseudo),
CONSTRAINT fk_MUSICIEN_instrument FOREIGN KEY (instrument) REFERENCES INSTRUMENT(instrument),
CONSTRAINT fk_MUSICIEN_style_musical FOREIGN KEY (style_musical) REFERENCES STYLE_MUSICAL(style_musical),
CONSTRAINT fk_MUSICIEN_niveau_experience FOREIGN KEY (niveau_experience) REFERENCES NIVEAU_EXPERIENCE(niveau_experience),
CONSTRAINT fk_MUSICIEN_internet_ou_physique FOREIGN KEY (internet_ou_physique) REFERENCES INTERNET_OU_PHYSIQUE(internet_ou_physique),
CONSTRAINT fk_MUSICIEN_estDispo FOREIGN KEY (estDispo) REFERENCES EST_DISPO(estDispo)
);
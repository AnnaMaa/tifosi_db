-- Création de la base de données
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Table des marques
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(100) NOT NULL
);

-- Table des boissons
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(100) NOT NULL,
    volume_ml INT NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- Table des ingrédients
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(100) NOT NULL
);

-- Table des focaccias
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(100) NOT NULL,
    prix DECIMAL(5,2) NOT NULL
);

-- Table de liaison entre focaccia et ingrédients (relation N:N)
CREATE TABLE focaccia_ingredient (
    id_focaccia INT,
    id_ingredient INT,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient) ON DELETE CASCADE
);


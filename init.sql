-- init.sql
USE mysonet;

CREATE TABLE mysonetusers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    ip_add VARCHAR(40) NOT NULL UNIQUE,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE demandes_ami (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_demandeur INT NOT NULL,
    id_demande INT NOT NULL,
    statut VARCHAR(255) DEFAULT NULL,
    ref_demande VARCHAR(255),
    FOREIGN KEY (id_demandeur) REFERENCES mysonetusers(id),
    FOREIGN KEY (id_demande) REFERENCES mysonetusers(id)
);

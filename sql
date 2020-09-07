CREATE TABLE Car_type(
   id INT,
   brand VARCHAR(50),
   model VARCHAR(50),
   motor VARCHAR(50),
   conso_urbain INT,
   conso_extra INT,
   conso_mixte INT,
   PRIMARY KEY(id)
);

CREATE TABLE Client(
   id INT,
   name VARCHAR(50),
   mdp VARCHAR(50),
   email VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE Trajet(
   id INT,
   type VARCHAR(50),
   distance INT,
   duree INT,
   quand DATETIME,
   prix DECIMAL(15,2),
   id_1 INT NOT NULL,
   id_2 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES Car_type(id),
   FOREIGN KEY(id_2) REFERENCES Client(id)
);

CREATE TABLE Appartient(
   id INT,
   id_1 INT,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Car_type(id),
   FOREIGN KEY(id_1) REFERENCES Client(id)
);

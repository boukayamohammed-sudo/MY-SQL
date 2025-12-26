CREATE database code_db;
use code_db;

CREATE TABLE Utilisateur (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  mot_de_passe VARCHAR(255) NOT NULL
);
CREATE TABLE Article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(150) NOT NULL,
  contenu TEXT NOT NULL,
  date_pub DATE,
  
  id_utilisateur INT,
  FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id)
);
CREATE TABLE Commentaire (
  id INT AUTO_INCREMENT PRIMARY KEY,
  contenu TEXT NOT NULL,
  auteur VARCHAR(100),
  date_commentaire DATE,
  id_article INT,
  FOREIGN KEY (id_article) REFERENCES Article(id)
);
INSERT INTO Article (titre, contenu, date_pub, id_utilisateur) VALUES
('Introduction a SQL', 'Had larticle kaychrah asasiyat SQL', '2025-01-10', 1),
('Base de donnees relationnelle', 'DB relationnelle', '2025-01-12', 2),
('Apprendre MySQL', 'MySQL tutorial pour debutants', '2025-01-15', 1);

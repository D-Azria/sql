


CREATE TABLE FOURNISSEUR(  
    ID int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    NOM VARCHAR(255) NOT null COMMENT 'Nom du fournisseur'
) COMMENT '';

CREATE TABLE ARTICLE(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    REF DECIMAL(9) NOT null COMMENT 'Référence de l’article',
    DESIGNATION VARCHAR(255) COMMENT 'Libellé de l’article',
    PRIX DECIMAL(10,2) COMMENT 'Prix',
    ID_FOU INT NOT NULL COMMENT 'Identifiant du fournisseur',
    FOREIGN KEY (ID_FOU) REFERENCES FOURNISSEUR(ID)
) COMMENT '';

CREATE TABLE BON(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    NUMERO int NOT null COMMENT 'Référence comptable',
    DATE_CMDE DATETIME COMMENT 'Date de passage de la commande',
    DELAI INT NOT NULL COMMENT 'Délai de livraison constaté',
    ID_FOU INT NOT NULL COMMENT 'Identifiant du fournisseur',
    FOREIGN KEY (ID_FOU) REFERENCES FOURNISSEUR(ID)
) COMMENT '';

CREATE TABLE COMPO(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    QTE int NOT NULL COMMENT 'Quantité d’articles',
    ID_ART INT NOT NULL COMMENT 'Identifiant de l’article',
    ID_BON INT NOT NULL COMMENT 'Identifiant du bon de commande',
    FOREIGN KEY (ID_ART) REFERENCES ARTICLE(ID),
    FOREIGN KEY (ID_BON) REFERENCES BON(ID)
) COMMENT '';

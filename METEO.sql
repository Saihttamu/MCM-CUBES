#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: sonde
#------------------------------------------------------------

CREATE TABLE sonde(
        sonde              Int NOT NULL ,
        ville              Varchar (50) NOT NULL ,
        departement        Varchar (50) NOT NULL ,
        numero_departement Int NOT NULL ,
        temperature        Varchar (50) NOT NULL ,
        humidite           Varchar (50) NOT NULL
	,CONSTRAINT sonde_PK PRIMARY KEY (sonde)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: releve
#------------------------------------------------------------

CREATE TABLE releve(
        releve      Int NOT NULL ,
        date_releve Datetime NOT NULL ,
        temperature Varchar (50) NOT NULL ,
        humudite    Varchar (50) NOT NULL ,
        sonde       Int NOT NULL
	,CONSTRAINT releve_PK PRIMARY KEY (releve)

	,CONSTRAINT releve_sonde_FK FOREIGN KEY (sonde) REFERENCES sonde(sonde)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Utilisateur
#------------------------------------------------------------

CREATE TABLE Utilisateur(
        utilisateur       Varchar (50) NOT NULL ,
        nom               Varchar (50) NOT NULL ,
        prenom            Varchar (50) NOT NULL ,
        date_de_naissance Date NOT NULL ,
        adresse           Text NOT NULL
	,CONSTRAINT Utilisateur_PK PRIMARY KEY (utilisateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: administre
#------------------------------------------------------------

CREATE TABLE administre(
        sonde       Int NOT NULL ,
        utilisateur Varchar (50) NOT NULL
	,CONSTRAINT administre_PK PRIMARY KEY (sonde,utilisateur)

	,CONSTRAINT administre_sonde_FK FOREIGN KEY (sonde) REFERENCES sonde(sonde)
	,CONSTRAINT administre_Utilisateur0_FK FOREIGN KEY (utilisateur) REFERENCES Utilisateur(utilisateur)
)ENGINE=InnoDB;


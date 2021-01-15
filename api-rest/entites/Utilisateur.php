<?php
class Sonde{
    // Connexion
    private $connexion;
    private $table = "utilisateurs"; // Table dans la base de données

    // Propriétés
    public $utilisateur;
    public $nom;
    public $prenom;
    public $date_de_naissance;
    public $adresse;

    /**
     * Constructeur avec $db pour la connexion à la base de données
     *
     * @param $db
     */
    public function __construct($db){
        $this->connexion = $db;
    }
}
?>
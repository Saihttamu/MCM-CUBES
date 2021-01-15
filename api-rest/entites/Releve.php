<?php
class Releve{
    // Connexion
    private $connexion;
    private $table = "releves"; // Table dans la base de données

    // Propriétés
    public $releve;
    public $date;
    public $sonde;
    public $temperature;
    public $humidite;

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
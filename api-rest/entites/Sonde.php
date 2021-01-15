<?php
class Sonde{
    // Connexion
    private $connexion;
    private $table = "sondes"; // Table dans la base de données

    // Propriétés
    public $sonde;
    public $ville;
    public $departement;
    public $numero_departement;
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

/* * * * * * * * * * 
 * Créer une sonde *
 *                 *
 * @return void    *
 * * * * * * * * * */
public function create(){

    $sql = "INSERT INTO " . $this->table . " SET sonde=:sonde, ville=:ville, departement=:departement, numero_departement=:numero_departement, temperature=:temperature, humidite=:humidité";

    $query = $this->connexion->prepare($sql);

    
}
?>